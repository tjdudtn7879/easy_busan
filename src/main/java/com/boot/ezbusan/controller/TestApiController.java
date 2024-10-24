package com.boot.ezbusan.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.client.HttpClientErrorException;

@RestController
public class TestApiController {

    private final String accessTokenUrl = "https://sgisapi.kostat.go.kr/OpenAPI3/auth/authentication.json";
    private final String consumerKey = "a51f32bc6157446293ab";
    private final String consumerSecret = "feea2ef136f0485cac14";

    private final String sidoCd = "21"; // 부산광역시 코드

    @GetMapping("test")
    public ResponseEntity<String> getSggToBrank(@RequestParam(name = "theme_cd") String themeCd) {
        RestTemplate restTemplate = new RestTemplate();
        ObjectMapper objectMapper = new ObjectMapper();
        
        // 1. 엑세스 토큰을 받기 위한 요청
        String tokenUrl = accessTokenUrl 
                + "?consumer_key=" + consumerKey 
                + "&consumer_secret=" + consumerSecret;

        try {
            // 엑세스 토큰 요청
            String tokenResponse = restTemplate.getForObject(tokenUrl, String.class);

            // JSON 파싱해서 엑세스 토큰 추출 (Jackson 사용)
            JsonNode tokenJson = objectMapper.readTree(tokenResponse);
            String accessToken = tokenJson.get("result").get("accessToken").asText();

            // 2. 엑세스 토큰을 사용하여 실제 API 호출
            String apiUrl = "https://sgisapi.kostat.go.kr/OpenAPI3/startupbiz/sggtobrank.json"
                    + "?accessToken=" + accessToken
                    + "&sido_cd=" + sidoCd
                    + "&theme_cd=" + themeCd;

            String response = restTemplate.getForObject(apiUrl, String.class);
            
            return ResponseEntity.ok(response);

        } catch (HttpClientErrorException e) {
            return ResponseEntity.status(e.getStatusCode()).body("Error: " + e.getMessage());
        } catch (Exception e) {
            return ResponseEntity.status(500).body("Internal Server Error: " + e.getMessage());
        }
    }
}

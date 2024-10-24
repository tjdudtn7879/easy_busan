package com.boot.ezbusan.controller;

import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class PetApiController {

   @GetMapping("petApi")
   @ResponseBody
   public String test() {
      RestTemplate rt1 = new RestTemplate();
      int count = 0;
      
      // 페이지 반복 처리
      for (int i = 1; i < 15; i++) {
         String baseUrl = "https://api.odcloud.kr/api/15111389/v1/uddi:41944402-8249-4e45-9e9d-a52d0a7db1cc?serviceKey=unVv/4djC3M7YqhXbtokFfkTaIeuHr1HGAnKex5htS13RCMQxx9xdaCchb6NSEJIUs3Beua5JimsAwuZ0haOhg==&perPage=2000&page=" + i;
         ResponseEntity<Map> response1 = rt1.getForEntity(baseUrl, Map.class);

         Map<String, Object> responseBody = response1.getBody();

         // 필요한 필드가 리스트 형태로 있을 경우 처리
         if (responseBody != null && responseBody.get("data") instanceof Iterable) {
            Iterable<Map<String, Object>> data = (Iterable<Map<String, Object>>) responseBody.get("data");
            for (Map<String, Object> map : data) {
               String sido = (String) map.get("시도 명칭"); 
               String sigungu = (String) map.get("시군구 명칭"); 
               
               // 시도 명칭이 "부산광역시"이고 시군구 명칭이 "사하구"일 경우 카운트 증가
               if ("부산광역시".equals(sido) && "사하구".equals(sigungu)) { // 사하구 부분을 사용자 입력한 값으로 받도록 변경
                  count++; 
               }
            }
         }
      }
      
      return Integer.toString(count);
   }

}

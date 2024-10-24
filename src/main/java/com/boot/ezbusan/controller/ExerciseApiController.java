package com.boot.ezbusan.controller;

import java.util.Map;
import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

@Controller
public class ExerciseApiController {

   @GetMapping("namguExerciseApi")
   @ResponseBody
   public String test() {
      RestTemplate restTemplate = new RestTemplate();
      StringBuilder sb = new StringBuilder();
      int page = 1;
      int perPage = 100;
      int totalCount = 0;
      int count = 0;
      
      String serviceKey = "unVv/4djC3M7YqhXbtokFfkTaIeuHr1HGAnKex5htS13RCMQxx9xdaCchb6NSEJIUs3Beua5JimsAwuZ0haOhg==";
      String baseUrl = "https://api.odcloud.kr/api/15055499/v1/uddi:f5c216a1-5b69-4c80-b0f2-8ad64f8aee7e";

      boolean hasNext = true;

      while (hasNext) {
         // API 호출 URL
         String url = baseUrl + "?serviceKey=" + serviceKey + "&page=" + page + "&perPage=" + perPage;

         // API 호출
         ResponseEntity<Map> response = restTemplate.getForEntity(url, Map.class);
         Map<String, Object> responseBody = response.getBody();

         if (responseBody != null) {
            // 전체 개수 가져오기
            totalCount = (int) responseBody.get("totalCount");

            // 현재 페이지에 대한 데이터 처리
            List<Map<String, Object>> data = (List<Map<String, Object>>) responseBody.get("data");
            for (Map<String, Object> item : data) {
//            	String name = (String) item.get("상호");
//               String address = (String) item.get("도로명주소");
//               String phone = (String) item.get("전화번호");
//               sb.append("상호: ").append(name)
//                 .append(", 도로명주소: ").append(address)
//                 .append(", 전화번호: ").append(phone)
//                 .append("   ");
               
               count++; // 데이터를 처리할 때마다 count 증가
            }

            // 현재 페이지에서 반환된 데이터 개수 확인
            int currentCount = (int) responseBody.get("currentCount");
            if (currentCount < perPage) {
               hasNext = false; // 더 이상 데이터가 없으면 루프 종료
            } else {
               page++; // 다음 페이지로 이동
            }
         } else {
            hasNext = false; // 응답 데이터가 없을 경우 루프 종료
         }
      }

      sb.append("count: ").append(count);

      return sb.toString(); 
   }

}

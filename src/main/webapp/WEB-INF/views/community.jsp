<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EASY BUSAN</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/community/community.css">
	<link
	  rel="stylesheet"
	  href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css"
	/>
	<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
</head>
<body>

    <section class="search-section">
        <div class="search-bar">
            <input type="text" placeholder="검색어를 입력하세요">
            <button class="search-button"></button>
        </div>
        <div class="search-buttons">
            <button>추천 검색어</button>
            <button>추천 검색어</button>
            <button>추천 검색어</button>
            <button>추천 검색어</button>
        </div>
    </section>

	<section class="content">
	    <div class="notice">
	        <h3>공지사항</h3>
	        <ul>
	            <li>공지사항 제목</li>
	            <li>공지사항 제목</li>
	            <li>공지사항 제목</li>
	            <li>공지사항 제목</li>
	        </ul>
	    </div>
	    <div class="resources">
	        <h3>자료실</h3>
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
				    <div class="swiper-slide">
				        <a href="https://blog.naver.com/busan-safehighso/223611089520" target="_blank">
				            <img src="/resources/img/swiper1.png" alt="Slide 1">
				        </a>
				    </div>
				    <div class="swiper-slide">
				        <a href="https://www.busan.go.kr/bsi/board/1651647" target="_blank">
				            <img src="/resources/img/swiper2.png" alt="Slide 2">
				        </a>
				    </div>
				    <div class="swiper-slide">
				        <a href="http://www.biacf.org/?d=show&f=show&page=1&sfield=&sstring=&mode=view&sp_idx=1&s_gb=pg" target="_blank">
				            <img src="/resources/img/swiper3.png" alt="Slide 3">
				        </a>
				    </div>
				    <div class="swiper-slide">
				        <a href="https://busanbiennale2024.com/ko" target="_blank">
				            <img src="/resources/img/swiper4.png" alt="Slide 4">
				        </a>
				    </div>
				</div>

	
			  <div class="swiper-button-next"></div>
			  <div class="swiper-button-prev"></div>
			  <div class="swiper-pagination"></div>
		</div>
	</section>


    <section class="info-section">
        <p class="info-text">EASY BUSAN의 이용방법에 대해서 잘 모르시겠나요?</p>
        <button class="info-button">알아보러 가기</button>
    </section>


    <script>
		var swiper = new Swiper(".mySwiper", {

		loop: true,
		autoplay: {
		    delay: 2000, 
		    disableOnInteraction: false, 
		},
		  pagination: {
		    el: ".swiper-pagination",
		    type: "progressbar",
		  },
		  navigation: {
		    nextEl: ".swiper-button-next",
		    prevEl: ".swiper-button-prev",
		  },
		});
    </script>

</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Easy Busan</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/main/result.css">
</head>
<body>


	<section class="banner">
	    <div class="circle">유형에 맞는 아이콘</div>
	</section>

	<section class="keyword-section">
	    <div class="keyword-header">
	        <h2>유형에 대한 키워드</h2>
	        <p>유형에 대한 설명</p>
	    </div>
	</section>

	<section class="icon-section">
	    <div class="icon-content">
	        <div class="icon-item">
	            <div class="circle"></div>
	            <p>첫 번째 키워드에 대한<br>짧은 설명</p>
	        </div>
	        <div class="icon-item">
	            <div class="circle"></div>
	            <p>두 번째 키워드에 대한<br>짧은 설명</p>
	        </div>
	        <div class="icon-item">
	            <div class="circle"></div>
	            <p>세 번째 키워드에 대한<br>짧은 설명</p>
	        </div>
	    </div>
	</section>

	<div class="fixed-buttons">
	    <div class="button">
	        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/rightArrow.png" alt="Next"></a>
	    </div>
	    <div class="button">
	        <a href="#"><img src="${pageContext.request.contextPath}/resources/img/question.png" alt="Question"></a>
	    </div>
	</div>
</body>
</html>

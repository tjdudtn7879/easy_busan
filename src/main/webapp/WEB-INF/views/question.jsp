<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/main/question.css">
<script src="${pageContext.request.contextPath}/js/question.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>Easy Busan</title>
</head>
<body>
    <main>
        <section class="question-section">
			<div class="image-container">
			    <div class="image">
			        <img src="/resources/img/boat-icon.png" class="boat-icon">
			        <div class="dots-container">
			            <span class="dot" id="dot-1">●</span>
			            <span class="dot" id="dot-2">●</span>
			            <span class="dot" id="dot-3">●</span>
			            <span class="dot" id="dot-4">●</span>
			            <span class="dot" id="dot-5">●</span>
			            <span class="dot" id="dot-6">●</span>
			            <span class="dot" id="dot-7">●</span>
			            <span class="dot" id="dot-8">●</span>
			            <span class="dot" id="dot-9">●</span>
			            <span class="dot" id="dot-10">●</span>
			            <span class="dot" id="dot-11">●</span>
			            <span class="dot" id="dot-12">●</span>
			            <span class="dot" id="dot-13">●</span>
			            <span class="dot" id="dot-14">●</span>
			            <span class="dot" id="dot-15">●</span>
			            <span class="dot" id="dot-16">●</span>
			            <span class="dot" id="dot-17">●</span>
			            <span class="dot" id="dot-18">●</span>
			            <span class="dot" id="dot-19">●</span>
			            <span class="dot" id="dot-20">●</span>
			            <span class="dot" id="dot-21">●</span>
			        </div>
			        <img src="/resources/img/boat-icon.png" class="wave-icon">
			    </div>
			</div>

            <div class="question-bubble">
				<div class="character-icon-wrap">
                	<img src="/resources/img/boogi1.png" alt="character" class="character-icon">
				</div>
                <div class="bubble-text">
                    <span class="question-child">자녀가 있으신가요?</span>
                    <span class="question-exercise">운동을 다양하게 즐기시나요?</span>
                    <span class="question-culture">어떤 문화생활을 자주 즐기시나요?</span>
                    <span class="question-lifestyle">번화가와 주거지역중 어느곳을 희망하시나요?</span>
                    <span class="question-hospital">병원에 자주 가셔야하나요?</span>
                    <span class="question-ocean">바다 주변에 사는걸 희망하시나요? 산 주변을 희망하시나요?</span>
                    <span class="question-pet">애완동물을 키우시나요?</span>
                    <span class="question-bus">버스, 지하철 중 어떤 것을 많이 이용하시나요?</span>
                    <span class="question-lease">전세를 희망하시나요 월세를 희망하시나요 매매를 희망하시나요?</span>
                    <span class="question-residence">선호하시는 주거형태를 골라주세요.</span>
                    <span class="question-cost">주거 비용은 상대적으로 어떤 곳이 좋으신가요?</span>
                    <span class="question-security">치안을 중요하게 생각하시나요?</span>
                    <span class="question-bath">대중목욕탕이 많은 곳이 좋으신가요?</span>
                    <span class="question-parcel">택배 업무를 자주 보시나요?</span>
                    <span class="question-alcohol">술을 좋아하시나요?</span>
                    <span class="question-cafe">카페를 자주 가시나요?</span>
                    <span class="question-age">나이와 성별이 어떻게 되시나요?</span>
                    <span class="question-car">차량을 소지하고 계신가요?</span>
                    <span class="question-expressbus">고속버스를 자주 이용하시나요?</span>
                    <span class="question-airplane">비행기를 자주 이용하시나요?</span>
                    <span class="question-train">기차를 자주 이용하시나요?</span>
                </div>
            </div>

            <div class="answer-title">
                <span>답변 선택</span>
            </div>

            <div class="answer-section">
                <div class="answer-selection">
                    <button class="child-answer-btn" id="child-high">네, 고등학생 자녀가 있어요.</button>
                    <button class="child-answer-btn" id="child-middle">네, 중학생 자녀가 있어요.</button>
                    <button class="child-answer-btn" id="child-elementary">네, 초등학생 자녀가 있어요.</button>
                    <button class="child-answer-btn">아뇨, 없습니다.</button>
                    <button class="exercise-answer-btn" id="exercise-yes3">네, 다양하게 즐겨고 매일 운동해요.</button>
                    <button class="exercise-answer-btn" id="exercise-yes2">네, 다양하게 즐기고 자주 운동해요.</button>
                    <button class="exercise-answer-btn" id="exercise-yes1">네, 다양하게 즐기지만 가끔 운동해요.</button>
                    <button class="exercise-answer-btn">아뇨, 집이 제일 좋아요.</button>
                    <button class="culture-answer-btn" id="culture-9004">극장이나 영화관에 자주 가요.</button>
                    <button class="culture-answer-btn" id="culture-9005">도서관이나 박물관에 자주 가요.</button>
                    <button class="culture-answer-btn" id="culture-9001">백화점이나 중대형마트에 자주 가요.</button>
                    <button class="culture-answer-btn" id="culture-yes">다 자주 가요.</button>
                    <button class="lifestyle-answer-btn" id="lifestyle-yes3">주변에 편의점이나 여가생활 즐길게 많은 번화가가 좋아요.</button>
                    <button class="lifestyle-answer-btn" id="lifestyle-yes2">주변에 즐길게 조금 있는 주거지역이 좋아요.</button>
                    <button class="lifestyle-answer-btn" id="lifestyle-yes1">주변에 즐길거리는 적어도 조용한 주거지역이 좋아요.</button>
                    <button class="lifestyle-answer-btn">아주 조용한 주거지역이 좋아요.</button>
                    <button class="hospital-answer-btn" id="hospital-yes3">네, 병원이 아주 많았으면 좋겠어요.</button>
                    <button class="hospital-answer-btn" id="hospital-yes2">네, 병원이 많았으면 좋겠어요.</button>
                    <button class="hospital-answer-btn" id="hospital-yes1">네, 병원이 조금 많았으면 좋겠어요.</button>
                    <button class="hospital-answer-btn">아뇨, 병원에 자주 가는 편은 아니에요.</button>
                    <button class="ocean-answer-btn" id="ocean-yes2">네, 바다 근처에 살고싶어요.</button>
                    <button class="ocean-answer-btn" id="ocean-yes1">네, 바다 근처가 좋아요. 근데 꼭 아니어도 돼요.</button>
                    <button class="ocean-answer-btn">아뇨, 바다보단 산이 좋아요.</button>
                    <button class="pet-answer-btn" id="pet-yes">네, 키우는 중이에요.</button>
                    <button class="pet-answer-btn">아뇨, 안키우고있어요.</button>
                    <button class="bus-answer-btn" id="bus-yes">둘 다 자주 이용해요.</button>
                    <button class="bus-answer-btn" id="bus-bus">버스를 자주 이용해요.</button>
                    <button class="bus-answer-btn" id="bus-subway">지하철을 자주 이용해요.</button>
                    <button class="bus-answer-btn">자차가 있어서 상관없어요.</button>
                    <button class="lease-answer-btn" id="lease-charter">전세를 희망해요.</button>
                    <button class="lease-answer-btn" id="lease-month">월세를 희망해요.</button>
                    <button class="lease-answer-btn" id="lease-trading">매매를 희망해요.</button>
                    <button class="lease-answer-btn">어떤 형태든 상관없어요.</button>
                    <button class="residence-answer-btn" id="residence-apartment">아파트를 선호합니다.</button>
                    <button class="residence-answer-btn" id="residence-housing">주택(단독 / 다가구)을 선호합니다.</button>
                    <button class="residence-answer-btn" id="residence-officetel">오피스텔을 선호합니다.</button>
                    <button class="residence-answer-btn" id="residence-villa">빌라(연립다세대)를 선호합니다.</button>
                    <button class="residence-answer-btn" id="residence-studio">원룸을 선호합니다.</button>
                    <button class="cost-answer-btn" id="cost-yes3">조금 비싸도 괜찮아요.</button>
                    <button class="cost-answer-btn" id="cost-yes2">적당히 저렴한곳이 좋을거같아요.</button>
                    <button class="cost-answer-btn" id="cost-yes1">최대한 저렴한곳이 좋을거같아요.</button>
                    <button class="cost-answer-btn" id="cost-no">비싸더라도 고급 주거지가 좋아요.</button>
                    <button class="security-answer-btn" id="security-yes3">치안에 대해 아주 중요하게 생각해요.</button>
                    <button class="security-answer-btn" id="security-yes2">어느정도 중요하게 생각해요.</button>
                    <button class="security-answer-btn" id="security-yes1">중요하지만 신경쓰지는 않아요.</button>
                    <button class="security-answer-btn">신경쓰지 않아요.</button>
                    <button class="bath-answer-btn" id="bath-yes3">목욕탕이 많으면 많을수록 좋겠어요.</button>
                    <button class="bath-answer-btn" id="bath-yes2">목욕탕이 많은곳이면 좋겠어요.</button>
                    <button class="bath-answer-btn" id="bath-yes1">목욕탕이 적당히 있는곳이면 좋겠어요.</button>
                    <button class="bath-answer-btn">적어도 상관없어요.</button>
                    <button class="parcel-answer-btn" id="parcel-yes3">네, 매일 봐요.</button>
                    <button class="parcel-answer-btn" id="parcel-yes2">네, 자주 보는 편이에요.</button>
                    <button class="parcel-answer-btn" id="parcel-yes1">네, 가끔 보는 편이에요.</button>
                    <button class="parcel-answer-btn">아뇨, 자주 보지 않습니다.</button>
                    <button class="alcohol-answer-btn" id="alcohol-yes3">네, 매일 마실정도로 좋아해요.</button>
                    <button class="alcohol-answer-btn" id="alcohol-yes2">네, 주 1회정도 즐겨요.</button>
                    <button class="alcohol-answer-btn" id="alcohol-yes1">네, 월 1회정도 즐겨요.</button>
                    <button class="alcohol-answer-btn">아뇨, 별로 안좋아해요.</button>
                    <button class="cafe-answer-btn" id="cafe-yes3">네, 매일 가요.</button>
                    <button class="cafe-answer-btn" id="cafe-yes2">네, 주 1회정도 가요.</button>
                    <button class="cafe-answer-btn" id="cafe-yes1">네, 월 1회정도 가요.</button>
                    <button class="cafe-answer-btn">아뇨, 자주 가지 않습니다.</button>
                    <button class="age-answer-btn" id="age-youngM">20~30대 남성입니다.</button>
                    <button class="age-answer-btn" id="age-youngW">20~30대 여성입니다.</button>
                    <button class="age-answer-btn" id="age-oldM">40~50대 남성입니다.</button>
                    <button class="age-answer-btn" id="age-oldW">40~50대 여성입니다.</button>
                    <button class="car-answer-btn" id="car-yes3">네, 소유중입니다. 매일 이용해요.</button>
                    <button class="car-answer-btn" id="car-yes2">네, 소유중입니다. 주 1회정도 이용해요.</button>
                    <button class="car-answer-btn" id="car-yes1">네, 소유중입니다. 월 1회정도 이용해요.</button>
                    <button class="car-answer-btn">아뇨, 없습니다.</button>
                    <button class="expressbus-answer-btn" id="expressbus-yes3">네, 매일 이용합니다.</button>
                    <button class="expressbus-answer-btn" id="expressbus-yes2">네, 주 1회정도 이용합니다.</button>
                    <button class="expressbus-answer-btn" id="expressbus-yes1">네, 월 1회정도 이용합니다.</button>
                    <button class="expressbus-answer-btn">아뇨, 자주 이용하지 않습니다.</button>
                    <button class="airplane-answer-btn" id="airplane-yes3">네, 반기에 1회정도 이용합니다.</button>
                    <button class="airplane-answer-btn" id="airplane-yes2">네, 분기 1회정도 이용합니다.</button>
                    <button class="airplane-answer-btn" id="airplane-yes1">네, 연 1회정도 이용합니다.</button>
                    <button class="airplane-answer-btn">아뇨, 자주 이용하지 않습니다.</button>
                    <button class="train-answer-btn" id="train-yes3">네, 매일 이용합니다.</button>
                    <button class="train-answer-btn" id="train-yes2">네, 주 1회정도 이용합니다.</button>
                    <button class="train-answer-btn" id="train-yes1">네, 월 1회정도 이용합니다.</button>
                    <button class="train-answer-btn">아뇨, 자주 이용하지 않습니다.</button>
                </div>
            </div>
        </section>
    </main>

    <div class="fixed-buttons">
        <div class="button">
            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/rightArrow.png" alt="Next"></a>
        </div>
        <div class="button">
            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/question.png" alt="Question"></a>
        </div>
    </div>
</body>
<!--
	<body>
	    <main>
	        <section class="question-section">

	            <div class="image-container">
	                <div class="image">
	                    <img src="/resources/img/boat-icon.png" class="boat-icon">
	                    <div class="dots-container">
	                        <c:forEach var="i" begin="1" end="21">
	                            <span class="dot" id="dot-${i}">●</span>
	                        </c:forEach>
	                    </div>
	                    <img src="/resources/img/boat-icon.png" class="wave-icon">
	                </div>
	            </div>

	            <div class="question-bubble">
	                <div class="character-icon-wrap">
	                    <img src="/resources/img/boogi1.png" alt="character" class="character-icon">
	                </div>
	                <div class="bubble-text">
	                    <c:forEach var="question" items="${questionList}">
	                        <span class="${question.className}">${question.text}</span>
	                    </c:forEach>
	                </div>
	            </div>

	            <div class="answer-title">
	                <span>답변 선택</span>
	            </div>

	            <div class="answer-section">
	                <div class="answer-selection">
	                    <c:forEach var="answer" items="${answerList}">
	                        <button class="${answer.className}" id="${answer.id}">${answer.text}</button>
	                    </c:forEach>
	                </div>
	            </div>

	        </section>
	    </main>

	    <div class="fixed-buttons">
	        <div class="button">
	            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/rightArrow.png" alt="Next"></a>
	        </div>
	        <div class="button">
	            <a href="#"><img src="${pageContext.request.contextPath}/resources/img/question.png" alt="Question"></a>
	        </div>
	    </div>
	</body>
-->
</html>

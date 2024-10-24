document.addEventListener('DOMContentLoaded', () => {
    const boatIcon = document.querySelector('.boat-icon');
    const dots = Array.from({ length: 21 }, (_, i) => document.querySelector(`#dot-${i + 1}`));

	const answerTitle = document.querySelector('.answer-title');
	const answerSection = document.querySelector('.answer-section');
	
    const answerBtnGroups = [
        ['.child-answer-btn', '.exercise-answer-btn', '.question-child', '.question-exercise'],
        ['.exercise-answer-btn', '.culture-answer-btn', '.question-exercise', '.question-culture'],
        ['.culture-answer-btn', '.lifestyle-answer-btn', '.question-culture', '.question-lifestyle'],
        ['.lifestyle-answer-btn', '.hospital-answer-btn', '.question-lifestyle', '.question-hospital'],
        ['.hospital-answer-btn', '.ocean-answer-btn', '.question-hospital', '.question-ocean'],
        ['.ocean-answer-btn', '.pet-answer-btn', '.question-ocean', '.question-pet'],
        ['.pet-answer-btn', '.bus-answer-btn', '.question-pet', '.question-bus'],
        ['.bus-answer-btn', '.lease-answer-btn', '.question-bus', '.question-lease'],
        ['.lease-answer-btn', '.residence-answer-btn', '.question-lease', '.question-residence'],
        ['.residence-answer-btn', '.cost-answer-btn', '.question-residence', '.question-cost'],
        ['.cost-answer-btn', '.security-answer-btn', '.question-cost', '.question-security'],
        ['.security-answer-btn', '.bath-answer-btn', '.question-security', '.question-bath'],
        ['.bath-answer-btn', '.parcel-answer-btn', '.question-bath', '.question-parcel'],
        ['.parcel-answer-btn', '.alcohol-answer-btn', '.question-parcel', '.question-alcohol'],
        ['.alcohol-answer-btn', '.cafe-answer-btn', '.question-alcohol', '.question-cafe'],
        ['.cafe-answer-btn', '.age-answer-btn', '.question-cafe', '.question-age'],
        ['.age-answer-btn', '.car-answer-btn', '.question-age', '.question-car'],
        ['.car-answer-btn', '.expressbus-answer-btn', '.question-car', '.question-expressbus'],
        ['.expressbus-answer-btn', '.airplane-answer-btn', '.question-expressbus', '.question-airplane'],
        ['.airplane-answer-btn', '.train-answer-btn', '.question-airplane', '.question-train']
    ];

	// 서버로 데이터 보내는 기능
    const sendDataToServer = (buttonId) => {
        console.log('Button ID:', buttonId); 
        /*
		TODO - controller 만들어지면 그에 맞게 수정
		
        fetch('endpoint url 입력부분', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({ selectedButton: buttonId })
        })
        .then(response => response.json())
        .then(data => {
            console.log('Success:', data);
        })
        .catch(error => {
            console.error('Error:', error);
        });
        */
    };

	// 배 움직이고 점 사라지는 기능
    const moveBoatAndHideDot = (dot, additionalMove, callback) => {
        const dotLeft = parseFloat(getComputedStyle(dot).left);
        boatIcon.style.transition = 'left 0.5s ease-in-out, transform 0.25s ease-in-out';
        boatIcon.style.left = `${dotLeft + additionalMove}px`;
        boatIcon.style.transform = 'translateY(-50%) rotate(-5deg)';

        setTimeout(() => {
            boatIcon.style.transform = 'translateY(-50%) rotate(0deg)';
        }, 250);

        setTimeout(() => {
            dot.style.display = 'none';
            if (callback) callback();
        }, 500);
    };
	
	// 텍스트 한글자씩 나오는 기능
	/*
	const revealText = (element, text, speed = 100) => {
	    element.innerHTML = '';
	    let index = 0;

	    const intervalId = setInterval(() => {
	        if (index < text.length) {
	            element.innerHTML += `<span>${text.charAt(index)}</span>`;
	            index++;
	        } else {
	            clearInterval(intervalId);
	        }
	    }, speed);
	};
	*/
	const revealText = (element, text, speed = 100, callback) => {
	    element.innerHTML = '';
	    let index = 0;

	    const intervalId = setInterval(() => {
	        if (index < text.length) {
	            element.innerHTML += `<span>${text.charAt(index)}</span>`;
	            index++;
	        } else {
	            clearInterval(intervalId);
	            if (callback) callback();
	        }
	    }, speed);
	};


	// 버튼 누르면 현재 질문,답변 사라지고 다음 질문, 답변 나오는 기능
	const setButtonEvents = (currentBtns, nextBtns, currentQuestion, nextQuestion, dot, move) => {
	    currentBtns.forEach((btn) => {
	        btn.addEventListener('click', () => {
	            const buttonId = btn.id;
	            if (buttonId) {
	                sendDataToServer(buttonId);
	            }

	            currentBtns.forEach(button => button.style.display = 'none');
	            if (currentQuestion) currentQuestion.style.display = 'none';

	            answerTitle.style.display = 'none';
	            answerSection.classList.remove('show'); 
	            answerSection.classList.add('hide');    

	            if (nextQuestion) {
	                nextQuestion.style.display = 'block';
	                const questionText = nextQuestion.innerText;
	                nextQuestion.innerHTML = '';

	                revealText(nextQuestion, questionText, 100, () => {
	                    answerSection.classList.remove('hide'); 
	                    setTimeout(() => {
	                        answerTitle.style.display = 'block';
	                        answerSection.classList.add('show'); 
	                        nextBtns.forEach(button => button.style.display = 'block');
	                    }, 10); 
	                });
	            }

	            moveBoatAndHideDot(dot, move); 
	        });
	    });
	};
	/*
	const setButtonEvents = (currentBtns, nextBtns, currentQuestion, nextQuestion, dot, move) => {
	    currentBtns.forEach((btn) => {
	        btn.addEventListener('click', () => {
	            
	            const buttonId = btn.id;
	            if (buttonId) {
	                sendDataToServer(buttonId);
	            }

	            currentBtns.forEach(button => button.style.display = 'none');
	            nextBtns.forEach(button => button.style.display = 'block');
	            if (currentQuestion) currentQuestion.style.display = 'none';
	            if (nextQuestion) {
	                nextQuestion.style.display = 'block';
	                const questionText = nextQuestion.innerText;
	                nextQuestion.innerHTML = '';
	                revealText(nextQuestion, questionText);
	            }
	            moveBoatAndHideDot(dot, move);
	        });
	    });
	};
	*/
	
	// 버튼 누르면 현재 질문,답변 사라지고 다음 질문, 답변 나오는 기능을 위한 그룹화
    answerBtnGroups.forEach((group, index) => {
        const [currentSelector, nextSelector, currentQuestion, nextQuestion] = group;
        const currentBtns = document.querySelectorAll(currentSelector);
        const nextBtns = document.querySelectorAll(nextSelector);
        setButtonEvents(currentBtns, nextBtns, document.querySelector(currentQuestion), document.querySelector(nextQuestion), dots[index], -90);
    });

	// 마지막 질문 답변 눌렀을때 동작하기위해 작성
    document.querySelectorAll('.train-answer-btn').forEach(btn => {
        btn.addEventListener('click', () => {
            const buttonId = btn.id;
            if (buttonId) {
                sendDataToServer(buttonId); 
            }

            moveBoatAndHideDot(dots[20], -90, () => {
                setTimeout(() => {
                    window.location.href = 'result';
                }, 1000);
            });
        });
    });
	
	// 첫 질문 글자 하나씩 나오게 하기 위해 작성
	const firstQuestion = document.querySelector('.question-child');
	if (firstQuestion) {
	    const firstQuestionText = firstQuestion.innerText;
	    firstQuestion.innerHTML = '';

	    revealText(firstQuestion, firstQuestionText, 100, () => {
	        document.querySelector('.answer-title').style.display = 'block';
	        document.querySelector('.answer-section').classList.add('show'); 
	    });
	}
	/*
	const firstQuestion = document.querySelector('.question-child');
	if (firstQuestion) {
	    const firstQuestionText = firstQuestion.innerText;
	    firstQuestion.innerHTML = '';
	    revealText(firstQuestion, firstQuestionText);
	}
	*/

});

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style/youngsu.css">
<html>
<head>
<meta charset="UTF-8">
<title>Easy Busan</title>
</head>
<body>
	<div class="header">Test</div>
	<div class="start-screen">Start</div>
	<div class="main-content-1">
		<div class="sticky">
			<div class="section">
				<div class="title">Title 1</div>
				<div class="content">Content 1</div>
			</div>
			<div class="section">
				<div class="title">Title 2</div>
				<div class="content">Content 2</div>
			</div>
			<div class="section">
				<div class="title">Title 3</div>
				<div class="content">Content 3</div>
			</div>
			<div class="section">
				<div class="title">Title 4</div>
				<div class="content">Content 4</div>
			</div>
		</div>
	</div>	
	
	<script>
	    class FolderScroll {
	        constructor(wrapper, sticky) {
	            this.wrapper = wrapper;
	            this.sticky = sticky;
	            this.children = this.sticky.querySelectorAll('.section');
	            this.length = this.children.length;
	            this.headerVh = 6;
	            this.contentVh = 100 - this.headerVh * this.length - 4;
	            this.start = 0;
	            this.end = 0;
	        }
	        
	        init() {
	            this.start = this.wrapper.offsetTop + 100;
	            this.end = this.wrapper.offsetTop + this.wrapper.offsetHeight - innerHeight - 100;

	            this.children.forEach((child, i) => {
	                const bottomValue = -100 + this.headerVh * (this.length - i) + 'vh';
	                child.style.bottom = bottomValue;

	                const titleHeight = this.headerVh + 'vh';
	                const contentHeight = this.contentVh + 'vh';

	                child.querySelector('.title').style.height = titleHeight;
	                child.querySelector('.content').style.height = contentHeight;
	            });
	        }
	        
	        animate() {
	            this.children.forEach((child, i) => {
	                const unit = (this.end - this.start) / this.length;
	                const s = this.start + unit * i + 100;
	                const e = this.start + unit * (i + 1);

	                if (scrollY <= s) {
	                    child.style.transform = 'translate3d(0, 0, 0)';
	                } else if (scrollY >= e) {
	                    child.style.transform = 'translate3d(0, -' + this.contentVh + '%, 0)';
	                } else {
	                    const percentage = (scrollY - s) / (unit - 100) * (-this.contentVh);
	                    child.style.transform = 'translate3d(0, ' + percentage + '%, 0)';
	                }
	            });
	        }
	    }

	    const mainContent1 = document.querySelector('.main-content-1');
	    const sticky = document.querySelector('.sticky');
	    const folderScroll = new FolderScroll(mainContent1, sticky);
	    folderScroll.init();

	    window.addEventListener('scroll', () => {
	        folderScroll.animate();
	    });
		
		window.addEventListener('resize', () => {
			folderScroll.init()
		})
	</script>

</body>
</html>

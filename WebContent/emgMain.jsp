<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emgMain.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script> -->
<script type="text/javascript">

    // 이 페이지 로드 시,
    document.addEventListener('DOMContentLoaded', function()
    {
    	//객체 생성
        var xmlHttp = new XMLHttpRequest();
    	
    	// xmlHttp 요청 준비
        xmlHttp.open('GET', './sitterMainFrame.html', true);
        
        // xmlHttp 서버 응답 완료 후 아래를 실행
        xmlHttp.onload = function() {
        	
        	// onload 요청을 성공적으로 처리 시
            if (xmlHttp.status == 200)
            {
            	// 업무 처리 → xmlHttp 응답 데이터를 헤더에 넣기.
                document.getElementById('header-container').innerHTML = xmlHttp.responseText;
            	
             	// 헤더가 로드된 후 버튼 클래스 변경
                // menuBtn 와 presentPage를 클래스로 가지는 엘리먼트에서 presentPage 클래스 제거
                var firstButton = document.querySelector('.menuBtn.presentPage');
                if (firstButton)
                {
                    firstButton.classList.remove('presentPage');
                }
                
                // menuBtn 을 클래스로 가지는 엘리먼트 중
                var buttons = document.querySelectorAll('.menuBtn');
                if (buttons.length >= 2)
                {
                	// 0번째 엘리먼트에 presentPage 클래스 추가 (0부터 시작)
                    buttons[0].classList.add('presentPage');
                }
            }
        };
        
        xmlHttp.send();
    });

</script>
</head>
<body>

<!-- sitterMainFrame.html을 삽입할 위치 -->
<div id="header-container"></div>

<div id="body-container">
	<div id="wrapper-header">
		<div class="main-subject">
			<h1>긴급 돌봄 서비스</h1>
		</div>
	</div>
	
	<div id="wrapper-body">
		<!-- (main) 일반 돌봄 1차 필터 -->
		<div class="box-filter">
			<div class="sub-subject">
				<h2>긴급 돌봄 요청 리스트</h2>
			</div>
			긴급돌봄 list 여기에 출력하기
			
		</div>
		
		<!-- 공지사항 간단 리스트로 보여주기 -->
		<div class="box-main">
			<h2>공지사항</h2>
			공지사항 list 여기에 출력하기		
		</div>
		
		<!-- 시터가 검색할만한 거 -->
		<div class="box-main">
			<h2>시터가 검색할만한 거?</h2>
			<form action="" class="row-items">
				<input type="text" id="search-name" placeholder="(이름을 입력하세요.)"/>
				<button type="submit" class="btn gen-btn-small">뭐든 찾기</button>
			</form>
		</div>
		
	</div>
</div>

</body>
</html>
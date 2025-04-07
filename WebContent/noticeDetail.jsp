<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>noticeDetail.jsp</title>
<link rel="stylesheet" type="text/css" href="css/notice.css">
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script> -->
<script type="text/javascript">
    
    // 이 페이지 로드 시,
    document.addEventListener('DOMContentLoaded', function()
    {
    	//객체 생성
        var xmlHttp = new XMLHttpRequest();
    	
    	// xmlHttp 요청 준비
        xmlHttp.open('GET', './parentMainFrame.html', true);
        
        // xmlHttp 서버 응답 완료 후 아래를 실행
        xmlHttp.onload = function()
        {        	
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

<!-- parentMainFrame.html을 삽입할 위치 -->
<div id="header-container"></div>

<div id="body-container">
	<div id="wrapper-header">
		<div class="main-subject">
			<h1>공지사항</h1>
		</div>
	</div>
	
	<div id="wrapper-body">
		<div class="board-header">
            <div class="board-info">
                <button type="button" id="back" class="btn">목록으로</button>
            </div>
            <div class="search-box">
                <button type="button" id="update" class="btn">수정</button>
                <button type="button" id="delete" class="btn">삭제</button>
            </div>
        </div>
        
        <div class="board-border">
	        <div class="board-detail">
	            <!-- 게시판 헤더 -->
	            <div class="board-list-header">
	                <div class="board-list-cell detail-id">번호</div>
	            </div>
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-id">5</div>
	            </div>
	            <div class="board-list-header">
	                <div class="board-list-cell detail-views">조회수</div>
	            </div>
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-views">128</div>
	            </div>
	        </div>
	         
	        <div class="board-detail">
	        	<div class="board-list-header">
	                <div class="board-list-cell detail-author">작성자</div>
	            </div>
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-author">관리자</div>
	            </div>
	            
	            <div class="board-list-header">
	                <div class="board-list-cell detail-date">작성일</div>
	            </div>
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-date">2025-04-07</div>
	            </div>
	        </div>
	         
	        <div class="board-detail">
	            <div class="board-list-header">
	                <div class="board-list-cell detail-type">유형</div>
	            </div>
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-type"><span class="badge-type notice">공지사항</span></div>
	            </div>
	            <div class="board-list-header">
	                <div class="board-list-cell detail-title">제목</div>
	            </div>
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-title">사이트 점검 안내</div>
	            </div>
	        </div>
	        <div class="board-detail">
	            <div class="board-list-header">
	                <div class="board-list-cell detail-content">내용</div>
	            </div>
	        </div>
	        <div class="board-detail">
	            <div class="board-list-detail">
	            	<div class="board-list-cell detail-notice-content">공지사항이 들어갑니다.</div>
	            </div>
	        </div>
        </div>
        
    </div>
</div>
</body>
</html>
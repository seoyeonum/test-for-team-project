<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emgRegList.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

    // 페이지가 로드되면 sitterMainFrame.html을 불러오기
    $(document).ready(function() {
  		$.get('./sitterMainFrame.html', function(data) {
    		$('#header-container').html(data);  // #header-container에 HTML 삽입
  		});
	});

</script>
</head>

<body>

<!-- 시터 메인 페이지 (긴급 돌봄 정보 리스트) -->


<!-- sitterMainFrame.html을 삽입할 위치 -->
<div id="header-container">


<meta charset="UTF-8">
<title>sitterMainFrame.html</title>
<link rel="stylesheet" type="text/css" href="css/mainFrame.css">


<div id="wrapper">
    <!-- 헤더 부분은 공용으로 모든 뷰페이지에 사용(메인 부분만 변경) -->
    <!-- 각 뷰페이지 헤더 부분 같도록 하여 통일감 주기 위함 -->
    <!-- 단, 관리자와 부모/시터 회원간의 헤더 항목 다르게 표시해야 함 -->
    <header>
        <div id="logo">
            <img src="images/logo.png" height="120px">
        </div>
        <nav>
            <button type="button" class="menuBtn presentPage">홈</button>
            <button type="button" class="menuBtn">로그아웃</button>
            
            <!-- 일반 회원 -->
            <button type="button" class="menuBtn">스케줄러</button>
            <button type="button" class="menuBtn">일반돌봄서비스</button>
            
            <!-- 관리자 회원 -->
            <!-- <button type="button" class="menuBtn">회원 관리</button> -->
            <!-- <button type="button" class="menuBtn">서비스 관리</button> -->
            
            <button type="button" class="menuBtn">마이페이지</button>
            <button type="button" class="menuBtn">알림함</button>
        </nav>
  	</header>
  	<!-- 
    <main>
    
        <section id="fillter">
            <section id="select_box">
                부모회원으로 로그인 시 1차 필터(날짜, 시간)
                <br>
                시터회원으로 로그인 시 긴급돌봄요청 목록 
            </section>
        </section>
        <section id="notice">
            <section id="notice_text">
                운영자의 공지사항
            </section>
        </section>
   
    </main>
     -->
</div>

</div>

<div id="body-container">
	<div id="wrapper-header">
		<div class="main-subject">
			<h1>긴급 돌봄 서비스</h1>
		</div>
	</div>
	
	<!-- 부모의 긴급 돌봄 요청 표시 -->
	<div id="wrapper-body">
        <h2>긴급 돌봄 요청 리스트 <span id="result-count">(3)</span></h2>
		<div class="results" id="results">
	        
	        <!-- 긴급 돌봄 각 등록 건 1 -->
	        <div class="emg-registered">
	            <div class="emg-info">
	                <div class="parent-id">parent01</div>
                	<!-- 1.부모가 긴급 돌봄 요청한 날짜, 시간 -->
                	<div class="emg-details">
	                    <div>돌봄 요청 일자: 📆2025.04.03.~2025.04.03.</div>
	                </div>
	                <div class="emg-details">
	                    <div>돌봄 요청 시간: ⏰오전 8시 ~ 오후 10시</div>
	                </div>
	                
	                <!-- 2.부모 거주지의 지역(개인정보 기반) -->
                    <div class="emg-details">
                    	<div>지역: <span class="badge">용산구</span></div>
                    </div>
                    
                    <!-- 3.아이 성별 -->
                	<div class="emg-details">
                		<div>아이 성별:<span class="badge male">남</span></div>
                	</div>
                	
                	<!-- 4.아이 연령 -->
                    <div class="emg-details">
                    	<div>아이 연령: 만 4 세</div>
                    </div>
                    
                    <!-- 5. 장애 및 지병, 알레르기 유무 -->
                    <!-- 
                    <div class="emg-details child-has">
                    	<div>장애 및 지병, 알레르기:</div>
                    	<div>
                    		<ul>
                    			<li>꽃가루 알레르기</li>
                    			<li>호두 알레르기</li>
                    		</ul>
                    	</div>
                    </div>
                     -->
	                <button type="button" class="btn btn-small" id="gen-details">지원하기</button>
                </div>
            </div>
	        
	        <!-- 긴급 돌봄 각 등록 건 2 -->
	        <div class="emg-registered">
	            <div class="emg-info">
	                <div class="parent-id">parent02</div>
                	<!-- 1.부모가 긴급 돌봄 요청한 날짜, 시간 -->
                	<div class="emg-details">
	                    <div>돌봄 요청 일자: 📆2025.04.04.~2025.04.05.</div>
	                </div>
	                <div class="emg-details">
	                    <div>돌봄 요청 시간: ⏰오전 11시 ~ 오후 1시</div>
	                </div>
	                
	                <!-- 2.부모 거주지의 지역(개인정보 기반) -->
                    <div class="emg-details">
                    	<div>지역: <span class="badge">마포구</span></div>
                    </div>
                    
                    <!-- 3.아이 성별 -->
                	<div class="emg-details">
                		<div>아이 성별:<span class="badge male">남</span></div>
                	</div>
                	
                	<!-- 4.아이 연령 -->
                    <div class="emg-details">
                    	<div>아이 연령: 만 3 세</div>
                    </div>
                    
                    <!-- 5. 장애 및 지병, 알레르기 유무 -->
                    <div class="emg-details child-has">
                    	<div>장애 및 지병, 알레르기:</div>
                    	<div>
                    		<ul>
                    			<li>꽃가루 알레르기</li>
                    			<li>호두 알레르기</li>
                    		</ul>
                    	</div>
                    </div>
                    
	                <button type="button" class="btn btn-small" id="gen-details">지원하기</button>
                </div>
            </div>
            <!-- 긴급 돌봄 각 등록 건 3 -->
	        <div class="emg-registered">
	            <div class="emg-info">
	                <div class="parent-id">parent03</div>
                	<!-- 1.부모가 긴급 돌봄 요청한 날짜, 시간 -->
                	<div class="emg-details">
	                    <div>돌봄 요청 일자: 📆2025.04.04.~2025.04.05.</div>
	                </div>
	                <div class="emg-details">
	                    <div>돌봄 요청 시간: ⏰오후 2시 ~ 오후 5시</div>
	                </div>
	                
	                <!-- 2.부모 거주지의 지역(개인정보 기반) -->
                    <div class="emg-details">
                    	<div>지역: <span class="badge">성북구</span></div>
                    </div>
                    
                    <!-- 3.아이 성별 -->
                	<div class="emg-details">
                		<div>아이 성별:<span class="badge female">여</span></div>
                	</div>
                	
                	<!-- 4.아이 연령 -->
                    <div class="emg-details">
                    	<div>아이 연령: 만 5 세</div>
                    </div>
                    
                    <!-- 5. 장애 및 지병, 알레르기 유무 -->
                    <!-- 
                    <div class="emg-details child-has">
                    	<div>장애 및 지병, 알레르기:</div>
                    	<div>
                    		<ul>
                    			<li>꽃가루 알레르기</li>
                    			<li>호두 알레르기</li>
                    		</ul>
                    	</div>
                    </div>
                     -->
                     
	                <button type="button" class="btn btn-small" id="gen-details">지원하기</button>
                </div>
            </div>
            
        </div>
		
    </div>
	
	
</div>




</body>
</html>
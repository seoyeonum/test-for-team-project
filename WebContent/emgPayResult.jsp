<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emgPayResult.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

    // 페이지가 로드되면
    $(document).ready(function() {
    	
    	// parentMainFrame.html을 불러오기
  		$.get('./parentMainFrame.html', function(data) {
    		$('#header-container').html(data);  // #header-container에 HTML 삽입
  		});
  		
	});
  
</script>
<script type="text/javascript">
</script>
</head>
<body>

<!-- parentMainFrame.html을 삽입할 위치 -->
<div id="header-container"></div>

<div id="body-container">
	<div id="wrapper-header">
		<div class="main-subject">
			<h1>긴급 돌봄 서비스</h1>
		</div>
	</div>
	
	<div id="wrapper-body-req">
		<div class="sub-subject">
			<h2>긴급 돌봄 신청/결제 완료</h2>
		</div>
		
		<!-- 긴급 돌봄 결제 안내 메시지 -->
		<!--
			- 로고 이미지 보여주기
			- 긴급 돌봄 결제 및 신청이 완료되었습니다.
			  시터님의 수락 이후 알림이 발송됩니다.
			- 
		-->
		<div class="sub-body-form">
			<div class="box-req-complete">
				<label class="complete-subject">긴급 돌봄 결제 및 신청이 완료되었습니다.</label>
	            <div class="result-info">
	            	<div class="logo-complete">
		                <img src="./images/logoimg.png" alt="하트 로고 이미지">
		            </div>
	   			</div>
	            <div class="complete-details">
	            	<ul>
	            		<li>- 긴급 돌봄 요청이 정상적으로 완료되었습니다.</li>
	            		<li>- 긴급 돌봄 희망 이용 시각으로부터 1시간 이전까지 시터님의 요청 지원이 가능합니다.</li>
	            		<li>- 긴급 돌봄 희망 이용 시각으로부터 1시간 이전까지 시터님의 요청 지원이 없을 경우 긴급 돌봄 요청은 자동 취소됩니다.</li>
	            		<li>- 긴급 돌봄 신청 및 예약 내역은 마이페이지>(긴급 돌봄 내역)에서 확인 가능합니다.</li>
	            	</ul>
	            </div>
	            <br>
	            <div class="complete-details">
	            	<button type="button" class="btn">홈 화면으로 이동</button>
	            	<button type="button" class="btn">예약 내역으로 이동</button>
	            </div> 
	        </div>
		</div>		
	</div>
</div>

</body>
</html>
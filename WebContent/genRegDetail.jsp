<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>genRegDetail.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

    // 페이지가 로드되면 parentMainFrame.html을 불러오기
    $(document).ready(function() {
  		$.get('./parentMainFrame.html', function(data) {
    		$('#header-container').html(data);  // #header-container에 HTML 삽입
  		});
	});
  
</script>
</head>
<body>

<!-- parentMainFrame.html을 삽입할 위치 -->
<!-- <div id="header-container"></div> -->

<div id="body-container">
	<!--
	<div id="wrapper-header">
		<div class="main-subject">
			<h1>일반 돌봄 서비스</h1>
		</div>
	</div>	
	-->
	
	<div id="wrapper-body-search">
	
		<!-- 일반 돌봄 등록 건 상세 -->
	    <div class="results" id="results">
	        <h2>일반 돌봄 상세 정보</h2>
	        
	        <!-- 일반 돌봄 각 등록 건 -->
	        <div class="box-req">
	            <div class="sitter-photo">
	                <img src="./images/sit01.jpg" alt="시터 사진">
	            </div>
	            <div class="sitter-info">
	                <div class="sitter-name">김탄 시터&nbsp;<span class="badge male">남</span> </div>
	                <div class="sitter-details">
	                    <div><img src="" alt="🥉">브론즈 시터</div>	<!-- 대체 텍스트 수정 필요 -->
	                </div>
	                <div class="sitter-details">
	                    <div>최근 평점: ⭐4.9 (7건)</div>
	                    <div>전체 평점: ⭐4.76 (123건)</div>
	            	</div>
	            	<div class="sitter-details">
	                    <div>돌봄 등록 일자: 📆2025.03.31.~2025.04.11.</div>
	                </div>
	                <div class="sitter-details">
	                    <div>돌봄 등록 시간: ⏰오전 9시 ~ 오후 2시</div>
	                </div>
	                <div class="sitter-details">
	                    <div>지역:
	                    	<span class="badge">서초구</span>
	                    	<span class="badge">강남구</span>
	                    </div>
	                </div>
	                <div class="sitter-details">
	                    <div>자신있는 돌봄 연령대:
	                    	<span class="badge">영아</span>
	                    	<span class="badge">아동</span>
	                    </div>
	                </div>
	                <div class="sitter-details">
	                    <div>보유 자격:
	                    	<span class="badge">보육 교사 2급</span>
	                    </div>
	                </div>
	                <div class="sitter-details">
	                    <div>시터님의 한 마디: 아이들과 함께 일하는 순간이 가장 행복해요. :)</div>
	                </div>
					<div class="sitter-details">
	                    <div>마지막 근무일: 2025.03.14.</div>
	            	</div>	
	   			 </div>
	        </div>
	        <button type="button" class="btn" id="back">이전 목록으로</button>
	        <button type="button" class="btn" id="gen-request">돌봄 신청하기</button>
	    </div>
	    
	</div>
</div>

</body>
</html>
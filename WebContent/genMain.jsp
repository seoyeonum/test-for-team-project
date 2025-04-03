<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>genMain.jsp</title>
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
<div id="header-container"></div>

<div id="body-container">
	<div id="wrapper-header">
		<div class="main-subject">
			<h1>일반 돌봄 서비스</h1>
		</div>
		
		<!-- (main) 일반 돌봄 1차 필터 -->
		<div class="filter-box">
			<h2>1차 필터</h2>
		    <form id="primary-filter-form">
		    	<div class="form-group">
			        <label for="child-wish">돌봄 희망 아이</label>
			        <div class="child-range">
			        	<select id="child-name" required="required">
				             <option value="">아이 선택</option>
				             <option value="1">김창식</option>
				             <option value="2">김충식</option>
				             <option value="3">김민식</option>
				             <option value="4">김주식</option>
				    	</select>
			    	</div>
			    </div>
			    
				<div class="form-group">
			        <label for="date-wish">돌봄 희망 날짜</label>
			        <div class="date-range">
			        	<input type="date" id="date-start" required="required">
			        	<input type="date" id="date-end" required="required">
			    	</div>
			    </div>
			
			    <div class="form-group">
			    	<label for="time-wish">돌봄 희망 시간</label>
			     	<div class="time-range">
			        	<select id="time-start" required="required">
				             <option value="">시작 시간</option>
				             <option value="8">오전 8:00</option>
				             <option value="9">오전 9:00</option>
				             <option value="10">오전 10:00</option>
				             <option value="11">오전 11:00</option>
				             <option value="12">오후 12:00</option>
				             <option value="13">오후 1:00</option>
				             <option value="14">오후 2:00</option>
				             <option value="15">오후 3:00</option>
				             <option value="16">오후 4:00</option>
				             <option value="17">오후 5:00</option>
				             <option value="18">오후 6:00</option>
				    	</select>
				      	<span>부터</span>
				      	<select id="time-end" required>
				             <option value="">종료 시간</option>
				             <option value="9">오전 9:00</option>
				             <option value="10">오전 10:00</option>
				             <option value="11">오전 11:00</option>
				             <option value="12">오후 12:00</option>
				             <option value="13">오후 1:00</option>
				             <option value="14">오후 2:00</option>
				             <option value="15">오후 3:00</option>
				             <option value="16">오후 4:00</option>
				             <option value="17">오후 5:00</option>
				             <option value="18">오후 6:00</option>
				             <option value="19">오후 7:00</option>
			    		</select>
			        	<span>까지</span>
			        </div>
			        <div class="warning" id="time-warning">※일반 돌봄 하루 최대 이용시간은 8시간입니다.</div>
			    </div>
			
			    <button type="button" class="btn" id="primary-search-btn">시터 찾기</button>
		    </form>
		</div>
	</div>
	
	<div id=wrapper-body-req">
		<!-- 공지사항 간단 리스트로 보여주기 -->
		<div class="filter-box">
			<h2>공지사항</h2>
			공지사항 list 여기에 출력하기		
		</div>
		
		<!-- 현재 시터의 근무 등록 중 시터 이름으로 검색 -->
		<div class="filter-box">
			<h2>시터 이름으로 검색</h2>
			<form id="sitter-name-filter-form">
				<input type="text" />
			</form>
		</div>
		
	</div>
</div>

</body>
</html>
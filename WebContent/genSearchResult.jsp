<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>genSearchResult.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

    // 페이지가 로드되면
    $(document).ready(function() {
    	
    	// parentMainFrame.html을 불러오기
  		$.get('./parentMainFrame.html', function(data) {
    		$('#header-container').html(data);  // #header-container에 HTML 삽입
  		});
  		
  		// 토글 처리 - 시터 등급
  		$("#toggle-grade").click(function() {
        	//$("#checkbox-grade").toggle();			// 일반 토글 모션 처리
  			$("#checkbox-grade").slideToggle(500);		// 부드러운 토글 모션 처리 (괄호는 밀리초 단위 처리 속도)
    	});
  		
  		// 토글 처리 - 시터 근무 선호 지역
  		$("#toggle-region").click(function() {
        	$("#checkbox-region").slideToggle(750);
    	});
  		
  		// 토글 처리 - 시터 성별 
  		$("#toggle-gender").click(function() {
        	$("#checkbox-gender").slideToggle(500);
    	});
  		
  		// 토글 처리 - 시터 연령대 
  		$("#toggle-age").click(function() {
        	$("#checkbox-age").slideToggle(500);
    	});
  	
  		// 토글 처리 - 시터 보유 자격증 
  		$("#toggle-cert").click(function() {
        	$("#checkbox-cert").slideToggle(500);
    	});
  		
  		// 토글 처리 - 전체 돌봄 비용
  		$("#toggle-price").click(function() {
        	$("#range-price").slideToggle(500);
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
				             <option value="19">오후 7:00</option>
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
	
	<div id="wrapper-body-search">
		
		<!-- (side) 일반 돌봄 2차 필터 -->
		<div class="secondary-filter" id="secondary-filter">
		    <h2>2차 필터</h2>
		    <form id="secondary-filter-form">
			    <div class="form-group">
			    	<label id="toggle-grade">시터 등급</label>
			        <div class="checkbox-group" id="checkbox-grade">
			            <label class="checkbox-label">
			                <input type="checkbox" name="grade" value="rookie" checked="checked">신입
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="grade" value="bronze" checked="checked">브론즈
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="grade" value="silver" checked="checked">실버
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="grade" value="gold" checked="checked">골드
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="grade" value="platinum" checked="checked">플래티넘
			            </label>
			        </div>
			    </div>
			    
				<div class="form-group">
					<label id="toggle-region">근무 지역</label>	<!-- 시터가 등록한 선호 근무 지역 기반 -->
					<div class="checkbox-group"  id="checkbox-region">
			            <label class="checkbox-label">
			                <input type="checkbox" name="region" value="1" checked="checked">강남구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="2" checked="checked">강동구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="3" checked="checked">강북구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="4" checked="checked">강서구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="5" checked="checked">관악구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="6" checked="checked">광진구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="7" checked="checked">구로구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="8" checked="checked">금천구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="9" checked="checked">노원구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="10" checked="checked">도봉구  
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="11" checked="checked">동대문구 
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="12" checked="checked">동작구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="13" checked="checked">마포구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="14" checked="checked">서대문구 
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="15" checked="checked">서초구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="16" checked="checked">성동구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="17" checked="checked">성북구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="18" checked="checked">송파구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="19" checked="checked">양천구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="20" checked="checked">영등포구 
			            </label>                                                                  
			            <label class="checkbox-label">                                            
			                <input type="checkbox" name="region" value="21" checked="checked">용산구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="22" checked="checked">은평구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="23" checked="checked">종로구  
			            </label>                                                                   
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="24" checked="checked">중구   
			            </label>                                          
			            <label class="checkbox-label">                                             
			                <input type="checkbox" name="region" value="25" checked="checked">중랑구   
			            </label>
			        </div>                                                            
				</div>                                                                          
				<div class="form-group">
					<label id="toggle-gender">시터 성별</label>
					<div class="checkbox-group" id="checkbox-gender">
			            <label class="checkbox-label">
			                <input type="checkbox" name="gender" value="male" checked="checked">남성
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="gender" value="female" checked="checked">여성
			            </label>
			        </div>
				</div>
				<div class="form-group">
					<label id="toggle-age">시터 연령대</label>
					<div class="checkbox-group" id="checkbox-age">
			            <label class="checkbox-label">
			                <input type="checkbox" name="age" value="20" checked="checked">20대
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="age" value="30" checked="checked">30대
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="age" value="40" checked="checked">40대
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="age" value="50" checked="checked">50대
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="age" value="60" checked="checked">60대 이상
			            </label>
			        </div>
				</div>
				<div class="form-group">
					<label id="toggle-cert">시터 보유 자격증</label>
					<div class="checkbox-group" id="checkbox-cert">
			            <label class="checkbox-label">
			                <input type="checkbox" name="cert" value="1" checked="checked">보육 교사 1급 (특수)
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="cert" value="2" checked="checked">보육 교사 1급
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="cert" value="3" checked="checked">보육 교사 2급 (특수)
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="cert" value="4" checked="checked">보육 교사 2급
			            </label>
			            <label class="checkbox-label">
			                <input type="checkbox" name="cert" value="5" checked="checked">특수 교사
			            </label>
			        </div>
				</div>
				<div class="form-group">
					<label id="toggle-price">전체 돌봄 비용</label>
			        <div class="range-group" id="range-price">
			        	<label class="range-label">
							<input type="range" name="price" min="0" max="41092240" step="10000" value="1340000">
						</label>
						<label class="range-label">
				            <span>0원</span>
				            <span id="current-price">1,340,000원</span>
				            <span>4,092,240원</span>
			            </label>
			        </div>
				</div>
	
				<button type="button" class="btn" id="secondary-searh-btn">필터 적용</button>
			</form>
		</div>
		
		<!-- 검색 결과 -->
	    <div class="results" id="results">
	        <h2>검색 결과 (3)</h2>
	        
	        <!-- 일반 돌봄 각 등록 건 -->
	        <div class="gen-registered">
	            <div class="sitter-photo">
	                <img src="./images/sit01.jpg" alt="시터 사진">
	            </div>
	            <div class="sitter-info">
	                <div class="sitter-name">김탄</div>
	                <div class="sitter-details">
	                    <div><img src="" alt="🥉">브론즈 시터</div>		<!-- 대체 텍스트 수정 필요 -->
	                	<div>최근 평점 ⭐4.9 (7건)</div>
	                    <div>전체 평점 ⭐4.76 (123건)</div>
	                    <!-- 가능 일자, 가능 시간도 명시하면 좋겠다! -->
	                </div>
	                <button type="button" class="btn btn-small" id="gen-details">상세 보기</button>
	            </div>
	        </div>
			<div class="gen-registered">
	            <div class="sitter-photo">
	                <img src="./images/sit02.jpg" alt="시터 사진">
	            </div>
	            <div class="sitter-info">
	                <div class="sitter-name">차은상</div>
	                <div class="sitter-details">
	                    <div><img src="" alt="🥈">실버 시터</div>	<!-- 대체 텍스트 수정 필요 -->
	                    <div>최근 평점 ⭐4.3 (3건)</div>
	                    <div>전체 평점 ⭐4.56 (290건)</div>
	                    <!-- 가능 일자, 가능 시간도 명시하면 좋겠다! -->
	                </div>
	                <button type="button" class="btn btn-small" id="gen-details">상세 보기</button>
	            </div>
	        </div>
	        <div class="gen-registered">
	            <div class="sitter-photo">
	                <img src="./images/sit03.jpg" alt="시터 사진">
	            </div>
	            <div class="sitter-info">
	                <div class="sitter-name">최영도</div>
	                <div class="sitter-details">
	                    <div><img src="" alt="🌱">신입 시터</div>	<!-- 대체 텍스트 수정 필요 -->
	                    <div>최근 평점 ⭐4.8 (3건)</div>
	                    <div>전체 평점 ⭐4.5 (3건)</div>
	                    <!-- 가능 일자, 가능 시간도 명시하면 좋겠다! -->
	                </div>
	                <button type="button" class="btn btn-small" id="gen-details">상세 보기</button>
	            </div>
	        </div>
	    </div>
		
	</div>
</div>

</body>
</html>
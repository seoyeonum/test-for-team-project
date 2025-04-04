<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emgReqWrite.jsp</title>
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
			<h2>긴급 돌봄 요청</h2>
		</div>
		
		<div class="sub-body-form">
			<!-- 1. 긴급 돌봄 등록하려는 아이 선택 -->
			<div class="box-req">
				<label for="child-wish">돌봄 희망 아이</label>
				<div class="gen-info-normal">
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
			</div>
			
			<!-- 2. 긴급 돌봄 등록하려는 날짜/시간 선택 -->			
			<div class="box-req">
				<label>돌봄 희망 시간</label>
	            <div class="gen-info-normal">
	            	<div class="form-group">
				        <div class="name">돌봄 희망 날짜</div>
				        <div class="date-range">
				        	<input type="date" id="date-start" required="required">
				        	<span>부터</span>
				        	<input type="date" id="date-end" required="required">
				        	<span>까지</span>
				    	</div>
				    </div>
		            
		            <div class="form-group">
				    	<div class="name">돌봄 희망 시간</div>
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
		            	            	
	   			 </div>
	        </div>
		
			<!-- 아래는 "3.~ 6."은 위의 두 값을 모두 작성 시 그 값이 입력되어 활성화 -->
			
			<!-- 3. 돌봄 요청 정보 -->
		    <div class="box-req"> 	
		    	<label>돌봄 요청 정보</label>	
			    <div class="gen-info-normal">
			    	<div class="form-group">
		                <div class="child-name">김충식&nbsp;<span class="badge male">남</span> </div>
		                <div class="gen-details">
		                    <div>돌봄 희망 일자: 📆2025.04.03.~2025.04.03.</div>
		                </div>
		                <div class="gen-details">
		                    <div>돌봄 희망 시간: ⏰오전 8시 ~ 오전 10시</div>
		                </div>
		                <div class="gen-details">
		                    <div>돌봄 장소: 종로구 사직로 161, 101동 1392호</div>
		                </div>
	                    <div class="gen-details">
	                    	<div>아이 연령: 만 4 세</div>
	                    </div>
	                    <div class="gen-details child-has">
	                    	<div>장애 및 지병, 알레르기:</div>
	                    	<div>
	                    		<ul>
	                    			<li>꽃가루 알레르기</li>
	                    			<li>호두 알레르기</li>
	                    		</ul>
	                    	</div>
	                    </div>
	                    <div class="gen-details">
	                    	<div><span class="star">*</span>신장: (미입력)</div>
	                    </div>
	                    <div class="gen-details">
	                    	<div><span class="star">*</span>몸무게: (미입력)</div>
	                    </div>
	                    <div class="gen-details">
	                    	<div><span class="star">*</span>혈액형: A</div>
	                    </div>
	                    <div class="gen-details">
	                    	<div><span class="star">*</span>기타 특이사항: 아이가 낯가림이 조금 있습니다.</div>
	                    </div>
	                    <br>
	                    <div class="gen-details">
		                    <div><span class="star">*표시된 정보는 일반 돌봄 예약 확정 이후 시터님이 열람 가능합니다.</span></div>
		                </div>  
		            </div>
	            	
	   			 </div>
	        </div>
	        
	        <!-- 4. 시터님께 남길 한 마디 -->
			<!-- 
				- 일반 돌봄 관련 시터에게 전달되는 메시지
					"*부적절한 메시지 포함 시 관리자에 의해 일반 돌봄 신청이 취소될 수 있습니다." 
				- <input type="text" /> 로 데이터 입력받기
			-->
			<div class="box-req">
				<label>돌봄 특이 사항</label>
	            <div class="gen-info">
	            	<div class="form-group">
		                <div class="name">전달 메시지</div>
		                <div class="gen-details">
		                    <input type="text" maxlength="160"
		                    placeholder="(시터님에게 전달하실 말씀을 적어주세요.)"/>	<!-- 현재 ERD 상 varchar2(500)이라 160자 정도 입력 가능.. -->
		                    <button class="btn gen-btn-small" type="reset">다시 작성</button>
		                </div>
	                    <div class="gen-details">
		                    <div><span class="star">*최대 160자까지 작성 가능합니다.</span></div>
		                </div>  
		            </div>
	            	
	   			 </div>
	        </div>
			
			
			<!-- 5. 결제 정보 -->
			<!-- 
				- 총 신청하는 시간과 등급에 따라 산출된 결제 정보 표시
				- 포인트 적용 가능
				- 결제 진행 전 확인하는 마지막 단계
			
				- 결제 진행 여부 체크 진행 후 API로 결제 진행
			-->
			<div class="box-req">
				<label>결제 예정 금액</label>
	            <div class="gen-info">
	            	<div class="form-group">
		                <div class="name">결제 비용</div>
		                <div class="gen-details payment">
		                	<div>이용 일수: 1 (일)</div>
		                	<div>이용 시간: 2 (시간)</div>
		                	<div>시간 당 비용: (일반 돌봄) 10,000 × (브론즈) 1.2 = 12,000 (원)</div>
		                	<div>총 지불 비용: 2 × 12,000 × (수수료) 1.05 = 25,200 (원)</div>
		                </div>
		                <br>
		                <div class="name">포인트 사용</div>
		                <div class="gen-details payment">
		                	<div>현재 보유 포인트: 600원</div>
		                	<div>사용할 포인트: 
		                    	<input type="text" min="100" placeholder="(사용할 포인트)"/>원
		                    	<button class="btn gen-btn-small" type="button">적용</button>
		                    </div>
		                </div>
	                    <div class="gen-details payment">
		                    <div><span class="star">*최소 100원부터 사용 가능합니다.</span></div>
		                </div>
		                <br>
		                <div class="name">결제 예정 금액</div>
		                <div class="gen-details payment">
		                	<div>25,200 - (포인트 차감) = 25,200 (원)</div>		                	
		                </div>
		            </div>
		            
		            
	   			 </div>
	        </div>
	        
	        <!-- 5. 결제 정보 확인 -->
	        <div class="box-req">
	        	<label>결제 정보 확인</label>
	            <div class="form-group emg-info">
	                <div class="row-items">
	                	<input type="checkbox" id="check-payment">
	                	<div>위 내용으로 결제를 진행합니다.</div>
	                </div>
		            <button class="btn gen-btn-small" type="button">결제 진행</button>
		       </div>
	        </div>
	        
	        
	        
	        
		</div>	
		
	</div>
</div>

</body>
</html>
<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	int point = 600;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emgReqInsertForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

	//이 페이지 로드 시,
	document.addEventListener('DOMContentLoaded', function()
	{
		//객체 생성
	    var xmlHttp = new XMLHttpRequest();
		
		// xmlHttp 요청 준비
	    xmlHttp.open('GET', './parentMainFrame.html', true);
	    
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
	            	// 3번째 엘리먼트에 presentPage 클래스 추가 (0부터 시작)
	                buttons[3].classList.add('presentPage');
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
			<h1>긴급 돌봄 서비스</h1>
		</div>
	</div>
	
	<div id="wrapper-body-req">
		<div class="sub-subject">
			<h2>긴급 돌봄 요청</h2>
		</div>
		
		<div class="sub-body-form">
			<form action="./emgPayInsertForm.jsp">
			
				<!-- 3. 돌봄 요청 정보 -->
			    <div class="box-req"> 	
			    	<div class="label">돌봄 요청 정보</div>
				    <div class="emg-info-normal">
				    	<div class="form-group">
			                <div class="child-name">김충식&nbsp;<span class="badge male">남</span> </div>
			                <div class="gen-details">
			                    <div>돌봄 희망 일자: 📆2025.04.03.~2025.04.03.</div>
			                	<div>돌봄 희망 시간: ⏰오전 8시 ~ 오전 10시</div>
			                	<div>돌봄 장소: 종로구 사직로 161, 101동 1392호</div>
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
		                   		<div><span class="star">*</span>몸무게: (미입력)</div>
		                    	<div><span class="star">*</span>혈액형: A</div>
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
					<div class="label">돌봄 특이 사항</div>
		            <div class="emg-info">
		            	<div class="form-group">
			                <div class="name">전달 메시지</div>
			                <div class="gen-details">
			                    <div>
			                    	<input type="text" id="msg-input" maxlength="160"
			                    	placeholder="(시터님에게 전달하실 말씀을 적어주세요.)"/>	<!-- 현재 ERD 상 varchar2(500)이라 160자 정도 입력 가능.. -->
				                    <button type="button" id="msg-reset" class="btn gen-btn-small" >다시 작성</button>
			                    </div>
			                </div>
			                <div class="gen-details">
			                    <div>
                                    <span id="text-count">0 / 160자</span>
                                    <span class="star">&nbsp;*최대 160자까지 작성 가능합니다.</span>
                                </div>
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
					<div class="label">결제 예정 금액</div>
		            <div class="emg-info">
		            	<div class="form-group">
			                <div class="name">결제 비용</div>
			                <div class="gen-details">
			                	<div>1일 돌봄 비용: 47,250 (원)</div>
			                	<div>총 지불 비용: 94,500 (원)</div>
			                </div>
			            </div>
			            <div class="form-group">
			                <div class="name">포인트 사용</div>
			                <div class="gen-details">
			                	<div>현재 보유 포인트: <%= point %>원</div>
			                	<div class="row-items">사용할 포인트: 
			                    	<input type="text" id="point-input" min="100" max="<%= point %>" placeholder="(사용할 포인트)"/>원
			                    	<button type="button" id="point-reset" class="btn gen-btn-small" >취소</button>
			                    	<button type="button" id="point-use" class="btn gen-btn-small">적용</button>
			                    </div>
			                </div>
		                    <div class="gen-details">
			                    <div><span class="star">*최소 100원부터 사용 가능합니다.</span></div>
			                </div>
			            </div>
			            <div class="form-group">
			                <div class="name">결제 예정 금액</div>
			                <div class="gen-details">
			                	<div>94,500 - <span id="point-spend">0</span> = <span id="final-price">94,500</span></div>		                	
			                </div>
			            </div>
		   			</div>
		        </div>
		        
		        <!-- 6. 결제 정보 확인 -->
		        <div class="box-req">
		        	<div class="label">결제 정보 확인</div>
		            <div class="form-group emg-info">
		                <label class="row-items">
		                	<input type="checkbox" id="check-payment">
		                	<span>위 내용으로 결제를 진행합니다.</span>
		                </label>
			            <button type="button" id="confirm-payment" class="btn gen-btn-small">결제 진행</button>
			       </div>
		        </div>
		    </form>
		</div>
	</div>
</div>

</body>
</html>
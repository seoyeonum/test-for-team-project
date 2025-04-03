<%@ page contentType="text/html; charset=UTF-8"%>
<% 
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>genReqInsertForm.jsp</title>
<link rel="stylesheet" type="text/css" href="css/gen-filter.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript">

    // 페이지가 로드되면
    $(document).ready(function() {
    	
    	// parentMainFrame.html을 불러오기
  		$.get('./parentMainFrame.html', function(data) {
    		$('#header-container').html(data);  // #header-container에 HTML 삽입
  		});
  		
  		// 토글 처리 - 신청 시터 정보
  		$("#toggle-sitter-req").click(function() {
        	$("#sitter-req-hidden").slideToggle(300);
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
			<h1>일반 돌봄 서비스</h1>
		</div>
	</div>
	
	<div id="wrapper-body-req">
		<div class="sub-subject">
			<h2>일반 돌봄 신청/결제</h2>
		</div>
		
		<!-- 1. 신청하는 시터님 관련 정보 -->
		<!--
			- 이름, 성별, 등급, 평점만 남기고 내용 접을(숨길) 수 있게 하자
			- 시터 사진도 보여 주는 게 나을지?
		-->
		<div class="sub-body">
			<div class="box-req">
				<label>돌봄 희망 시터</label>
	            <div class="gen-info">
	            	<div class="form-group req" id="toggle-sitter-req">
		                <div class="sitter-name">김탄 시터&nbsp;<span class="badge male">남</span> </div>
		                <div class="sitter-details">
		                    <div><img src="" alt="🥉">브론즈 시터</div>	<!-- 대체 텍스트 수정 필요 -->
		                </div>
		                <div class="sitter-details">
		                    <div>최근 평점: ⭐4.9 (7건)</div>
		                    <div>전체 평점: ⭐4.76 (123건)</div>
		            	</div>
	            	</div>
	            	<!-- 아래는 접힐 내용 -->
	            	<div class="form-group req" id="sitter-req-hidden">
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
	            	<!-- 여기까지 접혀 들어가도록 -->
	            	
	   			 </div>
	        </div>
		
			
			<!-- 2. 일반 돌봄 등록하려는 아이 / 날짜 / 시간 정보 -->
			<!--
				- 해당 페이지에서 부모가 확인하는 정보
				  : 본인 아이디 및 이름, 도로명 주소, 상세 주소*
				    아이 이름, 연령, 성별, 알레르기, 키*, 몸무게*, 혈액형*, 특이사항*
			
				  * 표시된 정보는 일반 돌봄 예약 확정 이후 시터님이 열람 가능합니다. 
			-->
			
			<div class="box-req">
				<label>돌봄 희망 아이</label>
	            <div class="gen-info">
	            	<div class="form-group req">
		                <div class="child-name">김충식&nbsp;<span class="badge male">남</span> </div>
		                <div class="details">
		                    <div>돌봄 희망 일자: 📆2025.04.03.~2025.04.03.</div>
		                </div>
		                <div class="details">
		                    <div>돌봄 희망 시간: ⏰오전 8시 ~ 오전 10시</div>
		                </div>
		                <div class="details">
		                    <div>돌봄 장소: 종로구 사직로 161, 101동 1392호</div>
		                </div>
	                    <div class="details">
	                    	<div>아이 연령: 만 4 세</div>
	                    </div>
	                    <div class="details child-has">
	                    	<div>장애 및 지병, 알레르기:</div>
	                    	<div>
	                    		<ul>
	                    			<li>꽃가루 알레르기</li>
	                    			<li>호두 알레르기</li>
	                    		</ul>
	                    	</div>
	                    </div>
	                    <div class="details">
	                    	<div><span class="star">*</span>신장: (미입력)</div>
	                    </div>
	                    <div class="details">
	                    	<div><span class="star">*</span>몸무게: (미입력)</div>
	                    </div>
	                    <div class="details">
	                    	<div><span class="star">*</span>혈액형: A</div>
	                    </div>
	                    <div class="details">
	                    	<div><span class="star">*</span>기타 특이사항: 아이가 낯가림이 조금 있습니다.</div>
	                    </div>
	                    <br>
	                    <div class="details">
		                    <div><span class="star">*표시된 정보는 일반 돌봄 예약 확정 이후 시터님이 열람 가능합니다.</span></div>
		                </div>  
		            </div>
	            	
	   			 </div>
	        </div>
			
			<!-- 3. 시터님께 남길 한 마디 -->
			<!-- 
				- 일반 돌봄 관련 시터에게 전달되는 메시지
					"*부적절한 메시지 포함 시 관리자에 의해 일반 돌봄 신청이 취소될 수 있습니다." 
				- <input type="text" /> 로 데이터 입력받기
			-->
			<div class="box-req">
				<label>돌봄 특이 사항</label>
	            <div class="gen-info">
	            	<div class="form-group req">
		                <div class="name">전달 메시지</div>
		                <div class="details">
		                    <input type="text" maxlength="160"
		                    placeholder="(시터님에게 전달하실 말씀을 적어주세요.)"/>	<!-- 현재 ERD 상 varchar2(500)이라 160자 정도 입력 가능.. -->
		                    <button class="btn btn-small" type="reset">다시 작성</button>
		                </div>
	                    <div class="details">
		                    <div><span class="star">*최대 160자까지 작성 가능합니다.</span></div>
		                </div>  
		            </div>
	            	
	   			 </div>
	        </div>
			
			
			<!-- 4. 결제 정보 -->
			<!-- 
				- 총 신청하는 시간과 등급에 따라 산출된 결제 정보 표시
				- 포인트 적용 가능
				- 결제 진행 전 확인하는 마지막 단계
			
				- 결제 진행 여부 체크 진행 후 API로 결제 진행
			-->
			<div class="box-req">
				<label>결제 예정 금액</label>
	            <div class="gen-info">
	            	<div class="form-group req">
		                <div class="name">결제 비용</div>
		                <div class="details payment">
		                	<div>이용 일수: 1 (일)</div>
		                	<div>이용 시간: 2 (시간)</div>
		                	<div>시간 당 비용: (일반 돌봄) 10,000 × (브론즈) 1.2 = 12,000 (원)</div>
		                	<div>총 지불 비용: 2 × 12,000 × (수수료) 1.05 = 25,200 (원)</div>
		                </div>
		                <br>
		                <div class="name">포인트 사용</div>
		                <div class="details payment">
		                	<div>현재 보유 포인트: 600원</div>
		                	<div>사용할 포인트: 
		                    	<input type="text" min="100" placeholder="(사용할 포인트)"/>원
		                    </div>
		                </div>
	                    <div class="details payment">
		                    <div><span class="star">*최소 100원부터 사용 가능합니다.</span></div>
		                </div>
		                <br>
		                <div class="name">결제 예정 금액</div>
		                <div class="details payment">
		                	<div>25,200 - (포인트 차감) = 25,200 (원)</div>
		                </div>
		            </div>
		            
		            
	   			 </div>
	        </div>
	        
	        <!-- 5. 결제 정보 확인 -->
	        <div class="box-req">
	        	<label>결제 정보 확인</label>
	            <div class="form-group-confirm">
	                <div class="confirm">
	                	<input type="checkbox" id="check-payment">
	                	<div>위 내용으로 결제를 진행합니다.</div>
	                </div>
		            <button class="btn" type="button">결제 진행</button>
		       </div>
	        </div>
		</div>	
		
	</div>
</div>

</body>
</html>
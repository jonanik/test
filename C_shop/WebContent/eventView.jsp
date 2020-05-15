<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <link rel="stylesheet" type="text/css" href="css/header.css">
      <link rel="stylesheet" type="text/css" href="css/eventView.css">
      <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
      
   </head>
<body>
 	<div id="wrap">
	    <header>
	       <div id="nav_up">
	          <ul>
				<li><a href="joinForm.do">회원가입</a></li>
				<%
					if (session.getAttribute("mId") == null) {
				%>
				<li><a href="loginForm.do">로그인</a></li>
				<%
					} else if (session.getAttribute("mId") != null) {
				%>
				<li><a href="loginForm.do"><%=session.getAttribute("mId") %>님</a></li>
				<li><a href="logout.do">로그아웃</a></li>
				<%
					}
				%>
				
				<li><a href="my_notice.html">고객행복센터</a></li>
				<li>배송지역검색</li>
				<%
					if (session.getAttribute("aId") == null) {
				%>
				<li><a href="adminLogin.do">ADMINISTRATOR</a></li>
				<%
					} else if (session.getAttribute("aId") != null) {
				%>
				<li><a href="adloginOk.do">ADMINISTRATOR</a></li>
				<%
					}
				%>
			</ul>
	       </div>
	       <nav>
	          <h1><a class="logo" href="main.jsp"></a></h1>
	          <ul>
	             <li>COOKIT소개</li>
				<li>COOKIT메뉴</li>
				<li><a href="list.do">공지사항</a></li>
				<li><a href="EventList.do">이벤트</a></li>
				<li>MY쿡킷</li>
	          </ul>
	          <ul>
	          <li><a href="#"><span>장바구니</span></a></li>
	          <li><a href="#"><span>메뉴찾기</span></a></li>
	       </ul>
	       </nav>
	    
	    </header>
	    
		<!-- content -->
		<section id="container">
			<div id="container_title" class="hide" tabindex="-1">
				본문 시작
			</div>
			<section id="container">
				<div id="content" class="ev_content">
					<div class="ev_wrap">
						<h1 class="title">이벤트</h1>
						<div class="view">
							<div class="head">
								<h2 class="tit">
									${event.btitle }
									<span class="date">${event.bdate }</span>
								</h2>
								<div class="sns_btn_wrap">
									<a href="#" class="btn share snsShareBtn" role="button">
										<span>
											공유
										</span>
									</a>
								</div>
							</div>
							<!-- 컨텐츠 등록 -->
							<div class="conts">
								<div>
									<img src="${pageContext.request.contextPath }/img/${event.bfile}" usemap="#Map" border="0" width="1180">
								</div>
							</div>
							<ul class="coupon-list">
								<li class="coupon-item">
									<p class="number">
										<em class="ff-roboto">10,000</em>
										원
									</p>
									<p class="title">[쿡킷] 3월 돌밥돌밥 해결사 1만원 쿠폰</p>
									<p class="txt">40,000원 이상 구매 시<br>(발급일로부터 7일 이내)</p>
									<a href="" class="btn-down">
										<span>다운로드</span>
										<img class="btn-down-icon">
									</a>
								</li>
							</ul>
							<!-- 쿠폰 목록 -->
							<div class="olki_list_wrap">
								<div class="top_sub_sec">
									<h3></h3>
								</div>
								<div class="olki_list">
									<!-- 상품 리스트를 뿌린다. -->
									<ul id="planTtlUl_1">
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food1.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																3인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 10분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span>약간 매운맛</span>
																<i class=" ico step01"></i>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">감바스알아히요</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	20,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
										</li>
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food2.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																2인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 10분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span></span>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">부채살 찹스테이크</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	20,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
										</li>
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food3.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																3인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 20분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span>약간 매운맛</span>
																<i class=" ico step01"></i>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">소고기두부전골</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	24,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
										</li>
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food4.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																3인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 20분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span></span>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">스키야키</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	24,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
										</li>
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food5.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																2인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 25분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span></span>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">빠네크림파스타</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	20,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
										</li>
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food6.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																3인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 15분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span>약간 매운맛</span>
																<i class=" ico step01"></i>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">황태콩나물해장국</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	16,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
											
										</li>
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food7.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																3인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 30분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
																<span>약간 매운맛</span>
																<i class=" ico step01"></i>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">두툼 갈치조림</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	17,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
											
										</li>	
										<li class="item" style="height:541px">
											<div class="pro_module">
												<div class="img_wrap">
													<a href="" class="conts">
														<img alt="" src="images/event/event1_food8.jpg">
													</a>
												</div>
												<div class="txt_wrap">
													<a href="" class="conts">
														<p class="etc_info">
															<span class="txt">
																<span class="hide">조리기준 :</span>
																3인분
															</span>
															<span class="txt">
																<span class="hide">조리시간 :</span>
																조리 4분
															</span>
															<span class="txt spice">
																<span class="hide">매운맛 정도 :</span>
															</span>
														</p>
														<div class="tit_info">
															<span class="tit mt_elps">닭한마리와 칼국수</span>
														</div>
														<div class="price_info">
															<p class="sale">
																<span class="price">
																	16,800
																	<span class="won">원</span>
																</span>
															</p>
														</div>
													</a>
												</div>
												<div class="act_btn_wrap">
													<button type="button" class="btn btn_interest"></button>
													<button type="button" class="btn btn_cart"></button>
												</div>
											</div>
											
										</li>		
									</ul>
								</div>
							</div>
							
						
							<div class="pagination" id="planTtlpaging_1">
								<span class="page_num">
									<strong>
										<span class="hide">현재 페이지</span>1
									</strong>
								</span>
							</div>
						</div>
					</div>
				</div>
			</section>
		</section>
		<!-- fixed -->
		<div class="fix_contsbtm">
			<div class="fx_button chatbot ui_chatBot show">
				<button type="button" class="chatbot">
					<span class="hide">챗봇으로 문의하기</span>
				</button>
			</div>
			<div class="fx_button top ui_gotoTop show">
				<a href="#wrap" role="button">
					<span class="hide">페이지 상단으로</span>
				</a>
			</div>
		</div>
	</div>
	
	
	<footer>
		<div id="big">
			<div>
				<div></div>
				<div>
					<p>©COOKITALL RIGHTS RESERVED</p>
				</div>
			</div>
			<div>
				<ul>
					<li>이용약관</li>
					<li>개인정보처리방침</li>
					<li>법적고지</li>
					<li>사업</li>
				</ul>
				<div>
					<p>씨제이제일제당(주) | 대표이사:손경식,강신호,신현재 | 사업자등록번호:104-86-09535</p>
					<p>주소:서울 중구 동호로330CJ제일제당 센터(우)04560 | 통신판매업신고중고 제07767호 |
						개인정보보호책임자:조영민</p>
					<p>이메일:cjon@cj.net | 호스팅제공자:CJ올리브네트웍스(주)</p>
					<P>고객님은 안전거래를 위해 현금등으로 결제시 LGU+전자 결제의 매매보호(에스크로) 서비스를 이용하실 수
						있습니다.
				</div>

			</div>

			<div>
				<div>
					<span>CJ그룹계열사 바로가기</span>
				</div>
				<div>고객행복센터 1668-1920</div>
			</div>

		</div>



	</footer>
	
	
</body>
</html>
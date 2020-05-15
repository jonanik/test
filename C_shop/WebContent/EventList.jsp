<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <link rel="stylesheet" type="text/css" href="css/header.css">
      <link rel="stylesheet" type="text/css" href="css/eventList.css">
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
		<div id=content>    
			<div class="ev_wrap">
				<h1 class="title">이벤트</h1>
				<div class="tab_wrap">
					<ul class="tabs">
						<li class="on">
							<a href=""><span>진행중</span></a>
						</li>
						<li>
							<a href=""><span>당첨자 발표</span></a>
						</li>
					</ul>
				</div>
				<div class="img_left_wrap"></div>
				<!-- 이벤트 목록 s -->
				<div class="event_list">
					<ul id="eventListArea">
					<c:forEach var="eList" items="${eList }">
						<li>
							<div class="pro_module">
								<div class="img_wrap">
									<a href="eventView.do?btitle=${eList.btitle}" class="link_more">
										<img src="${pageContext.request.contextPath }/img/${eList.bfile}">
										<span class="dim"></span>
									</a>
								</div>
								<div class="txt_wrap">
									<a href="" class="conts">
										<div class="prd_flag_wrap">
											<span class="flag cate">EVENT</span>
											<span class="date">${eList.bdate }</span>
										</div>
										<div class="tit_info">
											<span class="tit mt_elps">${eList.btitle }</span>
										</div>
									</a>
								</div>
							</div>
						</li>
						</c:forEach>
					</ul>
					<div>
						<ul id="pagenation">
					<a href="EventList.do?page=1"><li name="firts">◀◀</li></a>
					<c:if test="${page<=1 }">
						<li name="prev">◀</li>
					</c:if>
					<c:if test="${page>1 }">
						<a href="EventList.do?page=${page-1}"><li name="prev">◀</li></a>
					</c:if>
					<c:forEach var="p" begin="${startpage }" end="${endpage }" step="1">
						<c:if test="${p==page }">
							<li name="num">${p }</li>
						</c:if>
						<c:if test="${p!=page }">
							<a href="EventList.do?page=${p }"><li name="num">${p }</li></a>
						</c:if>
					</c:forEach>
					<c:if test="${page>=maxpage }">
					<li name="next">▶</li>
					</c:if>
					<c:if test="${page<maxpage }">
					<a href="EventList.do?page=${page+1 }"><li name="next">▶</li></a>
					</c:if>
					<a href="EventList.do?page=${maxpage }"><li name="last">▶▶</li></a>
				</ul>
					</div>
				</div>
			
			</div>
		</div>
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
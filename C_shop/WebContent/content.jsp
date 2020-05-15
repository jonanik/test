<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/sub_notice_list2.css">
		<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
		
	</head>
	<body>
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
				<h1><a class="logo" href="main.html"></a></h1>
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
	<section>
		
			<h1>고객행복센터</h1>
			<ul>
				<li>FAQ</li>
				<li>공지사항</li>
				<li>새벽배송/이용안내</li>
			</ul>
		
		<div id="top">	
			
			<h2>${content.btitle }</h2>
			<span>${content.bdate }</span>
			<p>조회수:${content.bhit }</p>
		
		</div>
		
		<div>
		<pre>${content.bcontent }</pre>
		</div>
		<a href="list.do">
			<div id="art">
				<span>목록</span>
			
			</div>
		</a>

		
				
				
		
		</section>
		
		
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
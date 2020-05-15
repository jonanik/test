<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="styleSheet" href="css/admin.css">
</head>
<body>
<%-- <% --%>
<%-- <%--    if(session.getAttribute("aId")==null){%> --%> 
	   
<%--  <% response.sendRedirect("adminLogin.jsp");%> --%>
  
 
	<div id="div1">
		<button id="div1_logout" onclick="location.href='logout.do'">로그아웃</button>
		<div id="div1_1">
			<button id="div1_1_menu"></button>
			<img src="images/admin/logo.png">
			
		</div>
		<div id="div1_2">
			<ul>
				<li id="div1_2_img1"><a href=""></a></li>
				<li id="div1_2_img2"><a href="main.jsp"></a></li>
				<li id="div1_2_3"><a href="" target=""></a>부가서비스</li>
				<li><button id="div1_2_4">
						관리자
						<div id="op_btn"></div>
					</button></li>
			</ul>
		</div>
	</div>
	
	<div id="div2">
		<button id="menu1"></button>
		<h3>관리자 메인</h3>
	</div>
	<div id="big">
	<nav id="sidemenu">
		<div>
			<ul>
				<li id="menu2"></li>
				<li id="menu3"></li>
				<li id="menu4"></li>
				<li id="menu5"></li>
				<li id="menu6"></li>
			</ul>
		</div>
	</nav>
	<div id="div3">
		<h2>신규가입회원 목록</h2>
		<div id="div3-1">총회원수 2,248명 중 차단 0명, 탈퇴 : 34명</div>
		<div id="div3-2">
			<table id="div3-table1">
				<thead>
					<tr>
						<th id="th1">회원 아이디</th>
						<th id="th2">이름</th>
						<th id="th3">가입날짜</th>
						<th id="th4">성별</th>
						<th id="th5">연락처</th>
						<th id="th6">주소</th>
						<th id="th7">SMS수신여부</th>
					</tr>
				</thead>
				<tbody>
					<!-- 1 -->
					<c:forEach var="mlist" items="${mlist }" end="4">
					<tr id="tr1">
						<td>${mlist.mId }</td>
						<td><img class="noprofile" alt="사람모양" src="images/admin/no_profile.gif">${ mlist.mName}</td>
						<td>${mlist.mjoinDate }</td>
						<td>${mlist.mGender }</td>
						<td>${mlist.mPhone }</td>
						<td>${mlist.mAddress }</td>
						<td>${mlist.mTextAgree }</td>
					</tr>
					</c:forEach>
				</tbody>

			</table>
			<div class="moreInfo"><a href="adminMemberList.do"><button class=infobtn>회원 전체보기</button></a></div>
		</div>
		<h2>공지사항</h2>
		<div id="div3-3">
			<table id="div3-table1">
				<thead>
					<tr>
						<th id="th1">글 번호</th>
						<th id="th2">게시판</th>
						<th id="th3">글 제목</th>
						<th id="th4">조회수</th>
						<th id="th5">작성일</th>
						
					</tr>
				</thead>
				<tbody>
					<!-- 1 -->
					<c:forEach var="list" items="${list }" end="4">
					<tr id="tr1">
						<td>${list.bid }</td>
						<td>고객행복센터</td>
						<td>${list.btitle }</td>
						<td>${list.bhit }</td>
						<td>${list.bdate }</td>
					</tr>
					</c:forEach>	
				</tbody>

			</table>
			<div class="moreInfo"><a href="moreList.do"><button class=infobtn>공지사항 더 보기</button></a></div>
		</div>
		<h2>이벤트</h2>
		<div id="div3-4">
			<table id="div3-table1">
				<thead>
					<tr>
						<th id="th1">작성자</th>
						<th id="th2">이벤트 제목</th>
						<th id="th3">파일이름</th>
						<th id="th4">이벤트 시작날짜</th>
						
					</tr>
				</thead>
				<tbody>
					<!-- 1 -->
					<c:forEach var="elist" items="${elist }" end="4">
					<tr id="tr1">
						<td>관리자</td>
						<td>${elist.btitle }</td>
						<td>${elist.bfile }</td>
						<td>${elist.bdate }</td>
						
					</tr>
					</c:forEach>
				</tbody>

			</table>
			<div class="moreInfo"><a href="adminEventList.do"><button class=infobtn>이벤트 더보기</button></a></div>
		</div>
	</div>
	</div>
<footer>

<p>Copyright © demo.sir.kr. All rights reserved. YoungCart Version 5.4.2.3.1</p>
</footer>



<%-- <% } --%>
<%-- %> --%>
</body>

</html>
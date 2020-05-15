<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="styleSheet" href="css/admin_noticeList.css">
</head>
<body>
	<div id="div1">
		<div id="div1_1">
			<button id="div1_1_menu"></button>
			<img src="images/admin/logo.png">

		</div>
		<div id="div1_2">
			<ul>
				<li id="div1_2_img1"><a href=""></a></li>
				<li id="div1_2_img2"><a href="main.html"></a></li>
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

			<h2>멤버리스트</h2>
			<div id="div3-3">
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
						<c:forEach var="mlist" items="${mlist }">
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

						</tr>
					</tbody>
				</table>
				<div class="moreInfo">
			<div>
			<ul>
					<a href="adminMemberList.do?page=1"><li name="firts">◀◀</li></a>
					<c:if test="${page<=1 }">
						<li name="prev">◀</li>
					</c:if>
					<c:if test="${page>1 }">
						<a href="adminMemberList.do?page=${page-1}"><li name="prev">◀</li></a>
					</c:if>
					<c:forEach var="p" begin="${startpage }" end="${endpage }" step="1">
						<c:if test="${p==page }">
							<li name="num">${p }</li>
						</c:if>
						<c:if test="${p!=page }">
							<a href="adminMemberList.do?page=${p }"><li name="num">${p }</li></a>
						</c:if>
					</c:forEach>
					<c:if test="${page>=maxpage }">
					<li name="next">▶</li>
					</c:if>
					<c:if test="${page<maxpage }">
					<a href="adminMemberList.do?page=${page+1 }"><li name="next">▶</li></a>
					</c:if>
					<a href="adminMemberList.do?page=${maxpage }"><li name="last">▶▶</li></a>
				</ul>
			</div>
			
			<a href="adminList.do"><button class=infobtn>이전 메뉴</button></a>
			</div>
			
			
			</div>
		</div>
	</div>
	<footer>

		<p>Copyright © demo.sir.kr. All rights reserved. YoungCart Version
			5.4.2.3.1</p>
	</footer>



</body>
</html>
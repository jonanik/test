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
						<c:forEach var="list" items="${list }">
						<tr id="tr1">
							<td>${list.bid }</td>
							<td>고객행복센터</td>
							<td><a href="adcontent.do?bid=${list.bid }">${list.btitle }</a></td>
							<td>${list.bhit }</td>
							<td>${list.bdate }</td>

						</tr>
						</c:forEach>

						</tr>
					</tbody>
				</table>
				<div class="moreInfo">
			<div>
			<ul>
					<a href="moreList.do?page=1"><li name="firts">◀◀</li></a>
					<c:if test="${page<=1 }">
						<li name="prev">◀</li>
					</c:if>
					<c:if test="${page>1 }">
						<a href="moreList.do?page=${page-1}"><li name="prev">◀</li></a>
					</c:if>
					<c:forEach var="p" begin="${startpage }" end="${endpage }" step="1">
						<c:if test="${p==page }">
							<li name="num">${p }</li>
						</c:if>
						<c:if test="${p!=page }">
							<a href="moreList.do?page=${p }"><li name="num">${p }</li></a>
						</c:if>
					</c:forEach>
					<c:if test="${page>=maxpage }">
					<li name="next">▶</li>
					</c:if>
					<c:if test="${page<maxpage }">
					<a href="moreList.do?page=${page+1 }"><li name="next">▶</li></a>
					</c:if>
					<a href="moreList.do?page=${maxpage }"><li name="last">▶▶</li></a>
				</ul>
			</div>
			<a href="writeForm.do"><button class=infobtn>글 쓰기</button></a>
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
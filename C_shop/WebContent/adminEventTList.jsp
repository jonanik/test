<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="styleSheet" href="css/adminEventTList.css">
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
			<h2>이벤트</h2>
			<div id="div3-4">
				<table id="div3-table1">
					<thead>
						<tr>
							<th id="th1">글번호</th>
							<th id="th2">이벤트 제목</th>
							<th id="th3">작성자</th>
							<th id="th4">이벤트기간</th>

						</tr>
					</thead>
					<tbody>
						<!-- 1 -->
						<tr id="tr1">
							<td>1</td>
							<td>[쿡킷]3월 돌밤돌밤 해결사 쿡킷!</td>
							<td>관리자</td>
							<td>2020.03.13~2020.03.31</td>

						</tr>
						
					</tbody>

				</table>
				<div class="moreInfo">
					<div>
						<div id="left1"></div>
						<div id="left2"></div>
						<div id="first">
							<p>1</p>
						</div>
						
						<div id="right1"></div>
						<div id="right2"></div>
					</div>
					<a href="Event.do"><button class=infobtn>글쓰기</button></a> 
					<a href="moreList.do"><button class=infobtn>이전메뉴</button></a>
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
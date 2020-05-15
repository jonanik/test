<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="styleSheet" href="css/noticeView.css">
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
<section>
		
			<h1>게시판명:고객행복센터</h1>
			<ul>
				<li>FAQ</li>
				<li>공지사항</li>
				<li>새벽배송/이용안내</li>
			</ul>
		
		<div id="top">	
			
			<h2>글제목: ${content.btitle }</h2>
			<span>작성일: ${content.bdate }</span>
			<p>조회수:${content.bhit }</p>
		
		</div>
		
		<div>
		<h2>글 내용</h2>
		<pre>${content.bcontent }</pre>
		</div>
		</section>


			<a href="modifyForm.do?bid=${content.bid }"><button class=infobtn>글 수정</button></a> <a
				href="delete.do?bid=${content.bid }"><button class=infobtn>글 삭제</button></a> <a
				href="adminList.do"><button class=infobtn>이전 메뉴</button></a>
		</div>


	</div>

	<footer>

		<p>Copyright © demo.sir.kr. All rights reserved. YoungCart Version
			5.4.2.3.1</p>
	</footer>



</body>
</html>
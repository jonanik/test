<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/sub_notice_list.css">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

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
			<h1>
				<a class="logo" href="main.jsp"></a>
			</h1>
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

		<div>

			<table>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
				<c:forEach var="list" items="${list }">
					<tr>
						<td>${list.bid }</td>
						<td><a href="content.do?bid=${list.bid }">${list.btitle }</a></td>
						<td>${list.bdate }</td>
						<td>${list.bhit }</td>
					</tr>

				</c:forEach>
			</table>

			<div>
				<ul>
					<a href="list.do?page=1"><li name="firts">◀◀</li></a>
					<c:if test="${page<=1 }">
						<li name="prev">◀</li>
					</c:if>
					<c:if test="${page>1 }">
						<a href="list.do?page=${page-1}"><li name="prev">◀</li></a>
					</c:if>
					<c:forEach var="p" begin="${startpage }" end="${endpage }" step="1">
						<c:if test="${p==page }">
							<li name="num">${p }</li>
						</c:if>
						<c:if test="${p!=page }">
							<a href="list.do?page=${p }"><li name="num">${p }</li></a>
						</c:if>
					</c:forEach>
					<c:if test="${page>=maxpage }">
					<li name="next">▶</li>
					</c:if>
					<c:if test="${page<maxpage }">
					<a href="list.do?page=${page+1 }"><li name="next">▶</li></a>
					</c:if>
					<a href="list.do?page=${maxpage }"><li name="last">▶▶</li></a>
				</ul>
			</div>
				<div id=search>
				<form action="list.do" name="search">
				<select name="opt" id="listSelect">
				<option value="all">전체</option>
				<option value="tit">제목</option>
				<option value="con">내용</option>
				</select>
				<input type="text" name="search" id="listSearch">
				<input type="submit" value="검색" id="Sbutton">
				</form>
				</div>

		</div>




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
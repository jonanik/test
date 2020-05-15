<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
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
	<section>
		<div id="login">
			<h1>로그인</h1>
			<div>
				<span>회원 로그인</span> <span>비회원 주문조회</span>
			</div>
			<form action="login.do">
			<div id=input>
				<input type="text" class="inputInfo" name="mId" placeholder="CJONE 통합아이디 6~20자 "> 
				<input type="text" class="inputInfo" name="mPw" placeholder="비밀번호 영문,특수문자,숫자혼합 8~12자 ">

				<div>
					<label><input type="checkbox" value="y"></label>
					<span id="saveId">아이디 저장</span> <a>비밀번호 찾기</a> <a>아이디찾기</a>
				</div>
				<button type="submit" id="loginbutton">로그인</button>
			</div>
			</form>
			<div></div>
			<div id=loginSub>
				<strong>CJ ONE 통합회원이 아니신가요?</strong>
				<p>CJ ONE 통합회원으로 가입하시면 CJ제일제당의 다양한 서비스(COOKIT, CJ THE MARKET,
					CJ제일제당 홈페이지)를 이용하실 수 있습니다.</p>
				<div>CJONE 통합회원 신규가입하기 〉</div>
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
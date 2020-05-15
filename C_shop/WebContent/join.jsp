<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/join.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
 <script type="text/javascript" src="js/join.js">

 </script>
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
				<a class="logo" href="main.html"></a>
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
		<div id="img"></div>
		<div id="title">
			<h1>회원가입</h1>
		</div>
		<div>
			<h3 class="smallTitle">
				필수 정보 입력<span>(* 항목은 필수 항목입니다.)</span>
			</h3>
		</div>
		<form action="join.do" name="join" method="post">
			<div id="sectionform">
				<div id="sectionform1">
					<table id="inputTable1">
						<!--1행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">이름</th>
<!--mname  -->				<td><input type="text" id="name" name="mName"></td>
						</tr>
						<!--2행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">아이디</th>
<!--mid  -->								<td><input type="text" name="mId" id="id">
								<button id="check" onclick="open1()">중복확인</button>
								<P class="notice">
									4~15자리의 영문,숫자,특수기호(_)만 사용하실 수 있습니다.
								</P></td>
						</tr>
						<!--3행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">비밀번호</th>
<!--mpw  -->					<td><input type="password" id="psw1" name="mPw"><br>
								<p class="notice">
									비밀번호는 10~15자리 내에서 영문,숫자,특수기호(!@#$%^&*)를 적어도 한글자 이상 사용하셔야합니다.
								</p></td>
						</tr>
						<!--4행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">비밀번호 확인</th>
							<td><input type="password" id="psw2" name="mPw1">
								<p class="notice">비밀번호를 다시 한번 입력해 주세요.</p></td>
						</tr>
						<!--5행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">이메일</th>
<!--memail1  -->				<td><input type="text" id="email1" name="mEmail1"> @ 
								<input type="text" id="email2" name="mEmail2">
<!--memail2  -->				 <select>
									<option>직접입력</option>
									<option>naver.com</option>
									<option>daum.net</option>
									<option>google.coms</option>
									<option>nate.com</option>

							</select></td>
						</tr>
						<!--6행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">주소</th>
<!--maddress1  -->			 	<td><input type="text" id="adress1" name="mAddress1">&nbsp;&nbsp;-&nbsp;&nbsp;
<!--maddress2  -->				
								<input type="text" id="adress2" name="mAddress2">
<!--maddress3  -->				<button id="check1">우편번호</button> <br> 
								<input type="text" id="adress3" name="mAddress3"><br>
<!--address4  -->				<input type="text" id="adress4" name="mAddress4"></td>
						</tr>
						<!--7행  -->
						<tr>
						<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">휴대전화</th>
<!--mphone1 -->							<td><select id="phone1" name="mPhone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="017">017</option>
							</select>&nbsp;&nbsp;-&nbsp;&nbsp;
<!--mphone2 -->				<input type="text" id="phone2" name="mPhone2">&nbsp;&nbsp;-&nbsp;&nbsp;
<!--mphone3 -->				<input type="text" id="phone3" name="mPhone3"></td>
							
						</tr>
						<!--8행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">생년월일</th>
<!--myear-->							<td><select id="year" name="mYear">
									<option value="1991">1991</option>
									<option value="1992">1992</option>
									<option value="1993">1993</option>
									<option value="1994">1994</option>
									<option value="1995">1995</option>
									<option value="1996">1996</option>
									<option value="1997">1997</option>
<!--mmonth-->							</select>년&nbsp;&nbsp; <select id="month" name="mMonth">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
<!--mday-->							</select>월&nbsp;&nbsp; <select id="day" name="mDay">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
<!--mbirth1-->						</select>일&nbsp;&nbsp; <input type="radio"  id="solar"
								value="solar"><span class=notice1>양력</span> &nbsp;&nbsp; <input
								type="radio" name="birth" id="lunar" value="solar">
								<span class=notice1>음력</span></td>
<!--mbirth2-->								
						</tr>
						<!--9행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">성별</th>
<!--mgender-->							<td><input type="radio" name="mGender" id="male" value="male">
										<span class=notice1>남성</span>&nbsp;&nbsp; <input type="radio" name="mGender" id="female" value="male">
										<span class=notice1>여성</span></td>
					
								
								
						</tr>
						<!--10행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">뉴스레터 수신여부</th>
							<td><span class=notice1>이메일을 통한 상품 및 이벤트 정보 수신에
<!--mradio-->									동의합니다.</span> <input type="radio" name="mRadio" id="yes" value="yes"><span
								class=notice1>예</span> <input type="radio" name="mRadio" id="no"
								value="no"><span class=notice1>아니오</span></td>
						</tr>
						<!--11행  -->
						<tr>
							<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
								class="star">SMS 수신여부</th>
							<td><span class=notice1>문자를 통한 상품 및 이벤트 정보 수신에 동의합니다.</span>
<!--mtextagree-->								<input type="radio" name="mTextAgree" id="textagree1" value="yes"><span
								class=notice1>예</span> <input type="radio" name="mTextAgree"
								id="textagree2" value="no"><span class=notice1>아니오</span>
							</td>
						</tr>


					</table>
					<div>
						<h3 class="smallTitle">선택 입력 정보</h3>
					</div>
					<div id="sectionform3">
						<table id="inputTable3">
							<tr>
								<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
									class="star"> 직업</th>
<!--mJob-->								<td><select name="mJob">
										<option value="select">선택</option>
										<option value="employee">회사원</option>
										<option value="selfEmployment">자영업</option>
										<option value="freelanser">프리랜서</option>
										<option value="housewife">전업주부</option>
										<option value="student">학생</option>
										<option value="etc">기타</option>
								</select></td>
							</tr>
							<tr>
								<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
									class="star">직업 결혼여부</th>
<!--mMarriage-->					<td><input type="radio" name="mMarriage" id="marriage1"
									value="yes"><span class=notice1>예</span>&nbsp;&nbsp;<input
									type="radio" name="mMarriage" id="marriage2" value="no"><span
									class=notice1>아니오</span></td>
							</tr>
							<tr>
								<th class="th"><img alt="빨간별표식" src="images/point_rs.png"
									class="star">관심사</th>
<!--minterest -->							<td><span class="inter"><input type="checkbox" name="mInterest" class="interest"
									id="comInternet" value="com"  >컴퓨터/인터넷</span>
									<span class="inter"><input type="checkbox" name="mInterest" class="interest"
									id="movieVideo" value="movie">영화/비디오</span>
									<span class="inter"><input type="checkbox" name="minterest" class="interest"
									id="music" value="music" >음악</span>
									<span class="inter"><input type="checkbox" name="minterest" class="interest"
									id="shopping" value="shopping">쇼핑</span>
									<span class="inter"><input type="checkbox" name="minterest" class="interest"
									id="game" value="game">게임</span><span class="inter"> <input
									type="checkbox" name="minterest" class="interest" id="culture"
									value="culture">문화/예술</span><br>
									<span class="inter"><input type="checkbox" name="minterest" class="interest" id=""
									value="">육아/아동</span> <span class="inter"><input
									type="checkbox" name="minterest" class="interest" id="parenting"
									value="parenting">요리</span> <span class="inter"><input
									type="checkbox" name="minterest" class="interest" id="cooking"
									value="cooking">인테리어</span><span class="inter"> <input
									type="checkbox" name="minterest" class="interest" id="interior"
									value="interior">레져/여가</span> <span class="inter"><input
									type="checkbox" name="minterest" class="interest" id="health"
									value="health"  >건강/다이어트</span><span class="inter"> <input
									type="checkbox" name="minterest" class="interest" id="fashion"
									value="fashion">패션/미용</span></td>
							</tr>
						</table>
					</div>
					<div id="buttondiv">

						<button type="button" onclick="location.href='main.jsp'"id="formCancel" class="button">취소하기</button>
						<input type="button" onclick="joinCheck()" id="formSubmit" class="button" value="rr">
					</div>
				</div>

			</div>
		</form>

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
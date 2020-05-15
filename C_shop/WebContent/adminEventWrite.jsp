<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="styleSheet" href="css/adminEventWrite.css">
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
		<div class="container">
		<br>
		
			<h2>이벤트</h2>
			<br>
			<form id="form1"  name="inputform" action="EventWrite.do" method="post" enctype="multipart/form-data">

          <label class="input_label">제목 작성</label>
          <input class="btitle" type="text" name="btitle">
        <div class="input_set">
          <div class="input_1">
            <label class="input_label">내용작성</label>
            <div class="just_cont">
              <textarea id="txt_wr" name="bcontent" cols="127" rows="10"
                maxlength="1000" placeholder="내용을 입력해주세요"></textarea>
              <div class="txt_wr_cnt">
                <span>0</span> <span>/1000자</span>
              </div>
              <div class="noti_box listst">
                <ul>
                  <li>이벤트 작성시 주의사항 입력 부분입니다.</li>
                  <li>이벤트 작성시 주의사항 입력 부분입니다.</li>
                </ul>
              </div>
            </div>
          </div>

          <div class="input_1">
            <label class="input_label">첨부파일</label>
            <div class="just_cont">
              <div class="file_frame">
                <span class="temp"></span> 
                <input type="file"
                  name="file1" id="attch_file">
              </div>
              <ul class="file_noti listst">
                <li>최대 5장 등록 (PNG, JPEG, JPG, GIF 포맷)</li>
              </ul>
              <span class="temp2"> <span><strong>0</strong></span>/30MB
              </span>
            </div>
          </div>

        </div>

        <div class="bttn_set">
          <button type="button" onclick="location.href='adminEventList.do'">취소</button>
          <button type="submit">확인</button>
        </div>

      </form>
		</div>
	</div>

	<footer>

		<p>Copyright © demo.sir.kr. All rights reserved. YoungCart Version
			5.4.2.3.1</p>
	</footer>



</body>
</html>
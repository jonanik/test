/**
 * 
 */

function joinCheck(){
	var nameCheck=(/^(?=.*[가-힣]).{2,6}$/);
 	var idCheck=(/^(?=.*[0-9])(?=.*[a-z])(?=.*[!@#$%^&*]).{4,15}$/);
 	var pwCheck=(/^(?=.*[a-z])(?=.*[!@#$%^&*])(?=.*[0-9]).{10,15}$/);
 	if(join.mName.value==""){
 		alert("이름을 입력하세요");
 		join.mName.focus();
 		return false;
 	}
 	if(!(nameCheck.test(join.mName.value))){
 		alert("이름은 한글로 2~6자 사이로 입력해주세요.");
 		join.mName.value="";
 		join.mName.focus();
 		return false;
 	}
 	if(join.mId.value==""){
 		alert("아이디를 입력하세요");
 		join.mId.focus();
 		return false;
 	}
 	if(!(idCheck.test(join.mId.value))){
 		alert("아이디는 4~15자리 내에서 영문,숫자,특수기호(!@#$%^&*)를 적어도 한글자 이상 사용하셔야합니다.");
 		join.mId.value="";
 		join.mId.focus();
 		return false;
 	}
 	if(join.mPw.value==""){
 		alert("비밀번호를 입력하세요.");
 		join.mPw.focus();
 	}
 	
 	if(!(pwCheck.test(join.mPw.value))){
 		alert("비밀번호는 10~15자리 내에서 영문,숫자,특수기호(!@#$%^&*)를 적어도 한글자 이상 사용하셔야합니다.");
 		join.mPw.value="";
 		join.mPw.focus();
 		return false;
 	}
 	if(join.mPw1.value=""){
 		alert("비밀번호 확인을 입력해주세요.");
 		join.mPw1.focus();
 		return false;
 	}
 	
// 	if(!(document.getElementById('mPw').value==document.getElementById('mPw1').value))){
// 		alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요.");
// 		join.mPw.value="";
// 		join.mPw1.value="";
// 		join.mPw.focus();
// 		return false;
// 	}
 	
 	return join.submit();
 	
 }
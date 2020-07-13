<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script type="text/javascript">
function check() {
	if(document.frm.name.value == "") {
		alert("이름을 입력해주세요");
		document.frm.name.focus();
		return false;
	} else if(document.frm.rn.value == "" || document.frm.rn2.value == "") {
		alert("주민등록번호를 입력해주세요");
		document.frm.rn.focus();
		return false;
	} else if(document.frm.id.value == "") {
		alert("아이디를 입력해주세요");
		document.frm.id.focus();
		return false;
	} else if(document.frm.pwd.value == "") {
		alert("비밀번호를 입력해주세요");
		document.frm.pwd.focus();
		return false;
	} else if(document.frm.email.value == "") {
		alert("이메일을 입력해주세요");
		document.frm.email.focus();
		return false;
	} else if(document.frm.addnum.value == "") {
		alert("우편번호를 입력해주세요");
		document.frm.addnum.focus();
		return false;
	} else if(document.frm.add.value == "") {
		alert("주소를 입력해주세요");
		document.frm.add.focus();
		return false;
	} else if(document.frm.ph.value == "") {
		alert("핸드폰번호를 입력해주세요");
		document.frm.ph.focus();
		return false;
	}
	if(document.frm.pwd.value != document.frm.pwd2.value) {
		alert("비밀번호가 일치하지 않습니다");
		document.frm.pwd2.focus();
		return false;
	}
}
</script>
</head>
<body>
<form method="get" action="loginform" name="frm">
<label>이름</label>
<input type="text" name="name" id="name" style="float:center;margin-left:130px"><br>
<label>주민등록번호</label>
<input type="text" name="rn" id="rn" style="float:center;margin-left:66px">&nbsp;-&nbsp;<input type="password" name="rn2" id="rn2" ><br>
<label for="id">아이디 </label>
<input type="text" name="id" id="id" style="float:center;margin-left:114px"><br>
<label for="pwd">비밀번호 </label>
<input type="password" name="pwd" id="pwd" style="float:center;margin-left:98px"><br>
<label for="pwd">비밀번호확인 </label>
<input type="password" name="pwd2" id="pwd2" style="float:center;margin-left:66px"><br>
<label for="email">이메일 </label>
<input type="text" name="email" id="email" style="float:center;margin-left:114px">&nbsp;@&nbsp;<input type="text" name="email2" id="email2">
<select id="backmail" name="backmail" size="1">
<option value="">선택하세요</option>
<option value="nate.com">nate.com</option>
<option value="naver.com">naver.com</option>
<option value="gmail.com">gmail.com</option>
<option value="daum.com">daum.com</option>
<option value="hanmail.com">hanmail.com</option>
</select><br>
<label for="addnum">우편번호 </label>
<input type="text" name="addnum" id="addnum" style="float:center;margin-left:98px"><br>
<label for="add">주소 </label>
<input type="text" name="add" id="add" style="float:center;margin-left:130px">&nbsp;<input type="text" name="add2" id="add2"><br>
<label for="ph">핸드폰번호 </label>
<input type="text" name="ph" id="ph" style="float:center;margin-left:82px"><br>
<span style="float:center;margin-left:135px">
<label for="job" style="float: left;">직업</label>
<select id="job" name="job" size="4">
<option value="학생">학생</option>
<option value="컴퓨터/인터넷">컴퓨터/인터넷</option>
<option value="언론">언론</option>
<option value="공무원">공무원</option>
<option value="군인">군인</option>
<option value="서비스업">서비스업</option>
<option value="교육">교육</option>
</select><br>
<label for="chk_mail">메일/SMS 정보 수신 </label>
<input type="radio" id="chk_mail" name="chk_mail" value="yes" style="float:center;margin-left:18px" checked>수신
<input type="radio" id="chk_mail" name="chk_mail" value="no">수신거부<br>
<label for="interest">관심분야 </label>
<input type="checkbox" name="interest" value="생두" style="float:center;margin-left:98px">생두
<input type="checkbox" name="interest" value="원두">원두
<input type="checkbox" name="interest" value="로스팅">로스팅
<input type="checkbox" name="interest" value="핸드드립">핸드드립
<input type="checkbox" name="interest" value="에스프레소">에스프레소
<input type="checkbox" name="interest" value="창업">창업
</span>
<p>
<input type="submit" value="회원가입" style="float:center;margin-left:250px" onclick="return check()">
<input type="button" value="취소">
</form>
</body>
</html>
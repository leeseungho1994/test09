<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script type="text/javascript">
		function register(){
			if(document.getElementById("id").value == ""){
				alert("아이디는 필수 입력사항입니다.")
			}else if(document.getElementById("pwd").value == ""){
				alert("비밀번호는 필수 입력사항입니다.")
			}else{
				document.form.submit();
			}
		}
		
		function chk(){
			if(document.getElementById("pwd").value != document.getElementById("pwdChk").value){
				document.getElementById("chkchk").innerHTML = "불일치!!!"
				document.getElementById("pwd").value = ""
				document.getElementById("pwdChk").value = ""
				document.getElementById("pwd").focus()	
			}else if(document.getElementById("pwd").value == document.getElementById("pwdChk").value){
				document.getElementById("chkchk").innerHTML = "일치!!!"
			}
		}
</script>
</head>
<body>

<form name="form" action="chkRegister.jsp" method="post">
	<input type="text" id ="id" name="id" placeholder="아이디">(*필수 항목)<br>
	<input type="password" id ="pwd" name="pwd" placeholder="비밀번호"><br>
	<input type="password" onchange="chk()" id="pwdChk" placeholder="비밀번호 확인"><font id="chkchk">(*필수 항목)</font><br>
	<input type="text" name="name" placeholder="이름"><br>
	<input type="text" name="addr" placeholder="주소"><br>
	<input type="text" name="tel" placeholder="전화번호"><br>
	<input type="button" onclick="register()" value="회원가입">
</form>	
	
</body>
</html>
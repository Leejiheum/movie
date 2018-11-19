<%@include file="/Resource/mobile.jsp"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>

<%@include file="/Resource/mobile.jsp"%>
</head>
<body>
<%@include file="/Resource/nav.jsp"%>
<!-- faq-banner -->
<!--  영화정보-->
<div class="faq">
	<h4 class="latest-text w3_latest_text">My Page</h4>
	<div class="container">
		<div class="form">
			<form action="#" method="post">
				아이디 <br><input type="text" name="Username" placeholder="Id" required=""> <br>
				비밀번호 <br><input type="password" name="Password" placeholder="Password" required=""><br>
				비밀번호 확인 <br><input type="password" name="PasswordChk" placeholder="Password Check" required=""><br> 
				이름 <br><input type="text" name="name" placeholder="name" required=""><br>
				이메일 <br><input type="email" name="Email" placeholder="Email Address" required=""><br> 
				휴대폰 <br><input type="text" name="Phone" placeholder="Phone Number" required="">
				<input type="submit" value="저장"><input type="submit" value="회원탈퇴">
			</form>
		</div>
	</div>
</div>
	<!-- //faq-banner -->
	<%@include file="/Resource/footer.jsp"%>
</body>
</html>
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
	<h4 class="latest-text w3_latest_text">영화정보</h4>
	<div class="container">
		<%@include file="/Resource/MovieInfo.jsp"%>
	</div>
</div>
	<!-- //faq-banner -->
	<%@include file="/Resource/footer.jsp"%>
</body>
</html>
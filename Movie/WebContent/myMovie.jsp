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
		<h4 class="latest-text w3_latest_text">나의 영화</h4>
		<div class="container">
			<div class="agileits-single-top">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">나의 영화</li>
				</ol>
			</div>
			<div class="agileits-single-top">
				<div class="breadcrumb">
					<select name="sido1" id="sido1">
							<option>1</option>
							<option>2</option>
							<option>3</option>
					</select>
				</div>
			</div>
			<div>사진 정보</div>
			<%@include file="/Resource/MovieList.jsp"%>
		</div>
	</div>
	<!-- //faq-banner -->
	<%@include file="/Resource/footer.jsp"%>
</body>
</html>
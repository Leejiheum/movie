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
<div class="faq">
	<h4 class="latest-text w3_faq_latest_text w3_latest_text">영화순위</h4>
		<div class="container">
			<div class="agileits-single-top">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">영화순위</li>
				</ol>
			</div>
			<div class="agileits-single-top">
				<div class="breadcrumb" style="margin-bottom: 0px; text-align:right;">
					<select name="sido1" id="sido1">
						<option>전체</option>
						<option>2</option>
						<option>3</option>
					</select> 
				</div>
			</div>
		</div>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">박스오피스</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">평점순(현재상영영화)</a></li>
					<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">평점순(전체영화)</a></li>
					<li role="presentation" style="float: right; font-size:16px; padding:10px 10px;">2018.11.06</li> <!-- 달력 -->
					<li role="presentation" style="float: right;"><i class="fa fa-calendar" style="font-size: 30px; padding-top: 5px;"></i></li> <!-- 달력 -->
				</ul>
			</div>
		</div>

		<div class="container">
		<%@include file="/Resource/DailyBoxOffice.jsp" %>
	</div>
</div>
<!-- //faq-banner -->
<%@include file="/Resource/footer.jsp"%>
</body>
</html>
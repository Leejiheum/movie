<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>
<link href="/Resource/css/table-style.css" rel='stylesheet' type='text/css' />
<%@include file="/Resource/mobile.jsp" %>
</head>
<body>
<%@include file="/Resource/nav.jsp" %>
<%@include file="/Resource/local.jsp"%> <!-- 시/군/구 -->
	<div class="faq">
		<!-- general -->
		<div class="general_agileits_genres">
			<h4 class="latest-text w3_latest_text">영화관</h4>
			<div class="container">
				<div class="agileits-single-top">
					<ol class="breadcrumb">
						<li><a href="index.do">Home</a></li>
						<li class="active">영화관</li>
					</ol>
				</div>
				<div class="agileits-single-top">
					<div class="breadcrumb">
						<select name="sido1" id="sido1"></select> <select name="gugun1"
							id="gugun1"></select>
					</div>
				</div>
			</div>
			<%@include file="/Resource/map.jsp"%>
			<!-- 지도 -->
			<!--  -->
			<div style="padding: 3em 0">
				<h4 class="latest-text w3_latest_text">목록</h4>
				<div class="container">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">전체</a></li>
							<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">CGV</a></li>
							<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">메가박스</a></li>
							<li role="presentation"><a href="#imdb" role="tab" id="imdb-tab" data-toggle="tab" aria-controls="imdb" aria-expanded="false">롯데 시네마</a></li>
						</ul>
					</div>
				</div>
				<div class="container">
					<%-- <%@include file="/Resource/list.jsp"%> --%>
					<%-- <%@include file="/Resource/MovieInfo2.jsp" %> --%>
					<!-- 리스트 -->
				</div>
			</div>
		</div>
		<!--body wrapper start-->
	</div>
<!-- footer -->
<%@include file="/Resource/footer.jsp" %>
<!-- //footer -->
</body>
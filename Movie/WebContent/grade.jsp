<%@page import="java.util.Date"%>
<%@page import="java.lang.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="poly.dto.UserDTO"%>
<%@page import="poly.dto.GradeDTO"%>
<%@page import="java.util.List" %>
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
<%
	UserDTO uDTO = (UserDTO) request.getAttribute("uDTO");
	List<GradeDTO> gList = (List<GradeDTO>)request.getAttribute("gList");
%>
<script type="text/javascript">

</script>
	<!-- faq-banner -->
<div class="faq">
	<h4 class="latest-text w3_faq_latest_text w3_latest_text">평점/리뷰</h4>
		<div class="container">
			<div class="agileits-single-top">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">평점/리뷰</li>
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
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">현재 상영작</a></li>
					<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">전체 영화</a></li>
					<li role="presentation" style="float: right; font-size:16px; padding:10px 10px;">2018.11.06</li> <!-- 달력 -->
					<li role="presentation" style="float: right;"><i class="fa fa-calendar" style="font-size: 30px; padding-top: 5px;"></i></li> <!-- 달력 -->
				</ul>
			</div>
		</div>

		<div class="container">
		<div class="bs-docs-example">
			<table class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th style="width:10%; text-align:center;">순위</th>
						<th style="width:17%;text-align:center;">평점</th>
						<th style="width:58%; text-align:center;">140자 평</th>
						<th style="width:15%; text-align:center;">글쓴이·날짜</th>
					</tr>
				</thead>
				<tbody>
					<% 
					for (int i =0; i < gList.size(); i++) {
					String chg_date = gList.get(i).getCHG_DATE();
					Date day = new SimpleDateFormat("yyyy-MM-dd").parse(chg_date);
					String date = new SimpleDateFormat("yy.MM.dd").format(day);
					int grade = Integer.parseInt(gList.get(i).getGRADE());
						%>
					<tr>
						<td style="text-align:center;"><%=i+1 %></td>
						<td style="text-align:center;">
							<div class="block-stars" style="display: contents;">
								<ul class="w3l-ratings">
								<%%>
								<%switch (grade) {
									case 1: %>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<%break; case 2: %>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<%break; case 3: %>	
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<%break; case 4: %>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<%break; case 5: %>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<%break; default: %>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
								<%break; } %>
								</ul>
							</div>
						</td>
						<td style="word-break: break-word;"><%=gList.get(i).getREVIEW()%></td>
						<td style="text-align:center; word-break: break-all;"><div><%=gList.get(i).getREG_ID()%></div><%=date %></td>
					</tr>
					<%} %>
					<!-- <tr>
						<td style="text-align:center;">2</td>
						<td style="text-align:center;">
							<div class="block-stars" style="display: contents;">
								<ul class="w3l-ratings">
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
									<li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
								</ul>
							</div>
						</td>
						<td></td>
						<td style="text-align:center;">Jacob</td>
					</tr> -->
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- //faq-banner -->
<%@include file="/Resource/footer.jsp"%>
</body>
</html>
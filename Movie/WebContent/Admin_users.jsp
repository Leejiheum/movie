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
	<h4 class="latest-text w3_faq_latest_text w3_latest_text">회원관리</h4>
		<div class="container">
			<div class="agileits-single-top">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">회원관리</li>
				</ol>
			</div>
			<div class="agileits-single-top">
				<div class="breadcrumb">
					<input type="button" value="비활성화">
					<select style="float:right">
						<option>전체</option>
						<option>활성화</option>
						<option>비활성화</option>
					</select> 
				</div>
			</div>
		</div>

		<div class="container">
		<div class="bs-docs-example">
			<table class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th style="width:10%; text-align:center;"><input type="checkbox" name="active" id="active"></th>
						<th style="width:17%;text-align:center;">순서</th>
						<th style="width:15%; text-align:center;">아이디</th>
						<th style="width:15%; text-align:center;">이름</th>
						<th style="width:15%; text-align:center;">이메일</th>
						<th style="width:15%; text-align:center;">휴대폰</th>
						<th style="width:13%; text-align:center;">수정</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="text-align:center;"><input type="checkbox" id="active"></td>
						<td style="text-align:center;">1</td>
						<td style="text-align:center;"></td>
						<td style="text-align:center;">이름</td>
						<td style="text-align:center;">이메일</td>
						<td style="text-align:center;">휴대폰</td>
						<td><input type="button" value="수정"></td>
					</tr>
					<tr>
						<td style="text-align:center;"><input type="checkbox" id="active"></td>
						<td style="text-align:center;">2</td>
						<td style="text-align:center;"></td>
						<td style="text-align:center;">이름</td>
						<td style="text-align:center;">이메일</td>
						<td style="text-align:center;">휴대폰</td>
						<td><input type="button" value="수정"></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- //faq-banner -->
<%@include file="/Resource/footer.jsp"%>
</body>
</html>
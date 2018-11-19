<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/Resource/mobile.jsp" %>
<%
	String namech = (String)request.getAttribute("namech");
	String pwch = (String)request.getAttribute("pwch");
%>
<html>
<head>
<title>Think! Movie</title>
</head>
<body>
<%@include file="/Resource/nav.jsp" %>
<div class="faq">
	<h4 class="latest-text w3_faq_latest_text w3_latest_text">비밀번호 찾기</h4>
		<div class="container">
		<div class="bs-docs-example">
			<table class="table table-hover">
				<thead>
					<tr>
						<th style="width:100px; text-align:center;">비밀번호</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
						<h1 style="text-align:center"><%=namech %>회원님의 비밀번호</h1>
						</td>
					</tr>
					<tr>
						<td>
						<h1 style="text-align:center"><%=pwch %> 입니다.</h1>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
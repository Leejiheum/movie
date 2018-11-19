<%@page import="poly.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	NoticeDTO nDTO = (NoticeDTO)request.getAttribute("nDTO");
	%>
<html>
<head>
<title>WEB!</title>
</head>
<body>
	<table style="height: 100%; width: 100%">
		<tr height="7%" bgcolor="#00D8FF">
			<td>
				<%@include file="/WEB-INF/view/top.jsp" %>
			</td>
		</tr>
		<tr bgcolor="">
			<td>
			<div align="center">
				<form action="/notice/NoticeUpdateProc.do" method="post" >
				
				<input type="hidden" name="Notice_seq" value ="<%=nDTO.getNotice_seq() %>"> <!-- hidden 으로 숨짐 -->
					제목 : <input type="text" name="title" value="<%=nDTO.getTitle()%>">  <br>
					내용 : <input type="text" name="contents" value="<%=nDTO.getContents()%>"><br>
					<input type="submit" value="확인"><br>
				
				</form>
				</div>
			</td>
		</tr>
		<tr height="7%" bgcolor="#00D8FF">
			<td>
				<%@include file="/WEB-INF/view/bottom.jsp" %>
			</td>
		</tr>
	</table>
</body>
</html>
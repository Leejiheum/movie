<%@page import="poly.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	NoticeDTO nDTO = (NoticeDTO) request.getAttribute("nDTO");
%>
<html>
<head>
<title>WEB!</title>
<!-- <script type="text/javascript">
	function userDelete(userNo) {
		location.href = "/user/userDelete.do?userNo=" + userNo;
	}
</script> -->
<style>
.test {
            border-style: solid;
}
</style>
</head>
<body>
	<table style="height: 100%; width: 100%">
		<tr height="7%" bgcolor="#00D8FF">
			<td><%@include file="/WEB-INF/view/top.jsp"%>
			</td>
		</tr>
		<tr bgcolor="">
		
			<td>
				<!-- 상세화면 -->

				<div align="center" >
				<div class='test'>
					제목<%=nDTO.getTitle()%> <br>				
				</div>
				<br>
				<div class='test'>
				<div>내용</div>
				<%=nDTO.getContents()%>			
				</div>
					<a href="/notice/NoticeUpdateView.do?Notice_seq=<%=nDTO.getNotice_seq()%>">수정</a>
					<a href="/notice/NoticeDetaildel.do?Notice_seq=<%=nDTO.getNotice_seq()%>">삭제</a> &nbsp;&nbsp;&nbsp;
				</div>
			</td>
		</tr>
		<tr height="7%" bgcolor="#00D8FF">
			<td><%@include file="/WEB-INF/view/bottom.jsp"%>
			</td>
		</tr>
	</table>
</body>
</html>
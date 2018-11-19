<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = CmmUtil.nvl((String) session.getAttribute("id"));
	String name = CmmUtil.nvl((String) session.getAttribute("name"));
%>
<script>
function logout() {
	location.href="/user/logout.do"
}
</script>
<div align="right">
	<%
		if (!"".equals(id)) {
	%>
	<!-- 로그인 상태 -->
	<b><%=id + "님 환영합니다."%></b>
	<bottom onclick="logout();">로그아웃</bottom>
	<%
		} else {
	%>
	<!-- 미 로그인 상태 -->
	<form action="/user/LoginProc.do" method="post">
		<b>ID</b> 
		<input type="text" name="id" /> <b>PASS</b>
		<input type="password" name="password" /> <input type="submit" value="로그인" />
	</form>
	<%
		}
	%>
</div>
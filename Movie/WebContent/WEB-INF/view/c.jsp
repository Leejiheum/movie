<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	double bmi = (double) request.getAttribute("bmi"); //double형 변수 bmi에 request에서 bmi 속성을 가져와서 double 형으로 바꿔준다.
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	c입니다.
	<%=bmi%>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	double bmi = (double) request.getAttribute("bmi"); //double형 변수 bmi에 request에서 bmi 속성을 가져와서 double 형으로 바꿔준다.
	System.out.println(bmi); // Console 창에다가 출력
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	b 입니다.
	<%=bmi%>
	<!-- 화면에 bmi 출력 -->
	<form action="c.do" method="post">
		몸무게 : <input type="text" name="kg">
		키 : <input type="text" name="cm">
		<input type="submit" value="전송">
	</form>
</body>
</html>
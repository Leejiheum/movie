<%@page import="kr.or.kobis.kobisopenapi.consumer.rest.KobisOpenAPIRestService"%>
<%@page import="org.codehaus.jackson.map.ObjectMapper"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Collection"%>
<%@page import="net.sf.json.JSONObject"%>
<%@page import="net.sf.json.util.JSONBuilder"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<%
	//파라메터 설정
	//상위코드
	String comCode = request.getParameter("comCode") == null?"0105000000":request.getParameter("comCode");
	// 발급키
	String key = "1259153a34727826d9034e4beb9d6433";
	//KOBIS 오픈 API Rest Client를 통해 호출
	KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
	String CodeRespmse = service.getComCodeList(true, comCode);
	
	ObjectMapper mapper = new ObjectMapper();
			
	//KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean usJson, String comCode)
	String codeResponse = service.getComCodeList(true,"01050000000");
	HashMap<String,Object> codeResult =  mapper.readValue(CodeRespmse, HashMap.class);
	request.setAttribute("codeResult",codeResult);
	
%>
<table border="1">
	<tr>
		<td>종류</td>
		<td>조회일자</td>
		<td>순번</td>
	</tr>
<c:if test="${not empty codeResult.codes}">
<c:forEach items="${codeResult.codes }" var="comcode">
	<tr>
		<td><c:out value="${comcode.fullCd}"/></td>	<!--	상위코드를 출력합니다	-->
		<td><c:out value="${comcode.korNm}"/></td>	<!--	해당 코드의 국문명을 출력합니다.-->
		<td><c:out value="${comcode.engNm}"/></td>	<!--	해당 코드의 영문명을 출력합니다.	-->
	</tr>
</c:forEach>
</c:if>
</table>
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
	//현재 페이지를 지정합니다.(default : “1”)
	String curPage = request.getParameter("curPage") == null?"":request.getParameter("curPage");
	//결과 ROW 의 개수를 지정합니다.(default : “10”)
	String itemPerPage = request.getParameter("itemPerPage")==null?"":request.getParameter("itemPerPage");
	//영화인명으로 조회합니다.
	String peopleNm = request.getParameter("peopleNm")==null?"":request.getParameter("peopleNm");
	//필모리스트로 조회합니다.
	String filmoNames = request.getParameter("filmoNames")==null?"":request.getParameter("filmoNames");
    
 	// 발급키
 	String key = "1259153a34727826d9034e4beb9d6433";
	//KOBIS 오픈 API Rest Client를 통해 호출
 	KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
	//일일 박스오피스 서비스 호출 (boolean is Json, String targetDT
	//										, String itemPerPage, String multiMovieYn, Stirng repNationCd, String wideAreaCd)
	String peopleRespmse = service.getPeopleList(true, curPage, itemPerPage, peopleNm, filmoNames);
	String People = service.getPeopleList(true, curPage, itemPerPage, peopleNm, filmoNames);
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> peopleResult = mapper.readValue(peopleRespmse, HashMap.class);
	HashMap<String,Object> people = mapper.readValue(peopleRespmse, HashMap.class);
	
	request.setAttribute("peopleResult", peopleResult);
%>
<table border="1">
	<tr>
		<td>영화인 코드</td>
		<td>영화인명</td>
		<td>영화인명(영문)</td>
		<td>분야</td>
		<td>필모리스트</td>
	</tr>
<c:if test="${not empty peopleResult.peopleListResult.peopleList}">
<c:forEach items="${peopleResult.peopleListResult.peopleList }" var="peopleList">
<tr>
		<td><c:out value="${peopleList.peopleCd	}"/></td>	<!--	영화코드를 출력합니다.	-->
		<td><c:out value="${peopleList.peopleNm	}"/></td>	<!--	영화명(국문)을 출력합니다.	-->
		<td><c:out value="${peopleList.peopleNmEn	}"/></td>	<!--	영화명(영문)을 출력합니다.	-->
		<td><c:out value="${peopleList.repRoleNm	}"/></td>	<!--	개봉연도를 출력합니다.	-->
		<td><c:out value="${peopleList.filmoNames	}"/></td>	<!--	영화유형을 출력합니다.	-->
</tr>
</c:forEach>
</c:if>
</table>
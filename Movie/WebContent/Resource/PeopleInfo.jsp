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
	String peopleCd = request.getParameter("peopleCd") == null?"20127892":request.getParameter("peopleCd");
 	// 발급키
 	String key = "1259153a34727826d9034e4beb9d6433";
	//KOBIS 오픈 API Rest Client를 통해 호출
 	KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
	String infoRespmse = service.getPeopleInfo(true, peopleCd);
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> infoResult = mapper.readValue(infoRespmse, HashMap.class);
	HashMap<String,Object> info = mapper.readValue(infoRespmse, HashMap.class);
	
	request.setAttribute("infoResult", infoResult);
%>
<c:if test="${not empty infoResult.peopleInfoResult.peopleInfo}">
		영화인 코드| <c:out value="${infoResult.peopleInfoResult.peopleInfo.peopleCd	}"/><br>	<!--	영화인코드를 출력합니다.	-->
		영화인명| <c:out value="${infoResult.peopleInfoResult.peopleInfo.peopleNm	}"/><br>	<!--	영화인명을 출력합니다.	-->
		영화인명(영문)| <c:out value="${infoResult.peopleInfoResult.peopleInfo.peopleNmEn	}"/><br>	<!--	영화인명(영문)을 출력합니다.	-->
		성별| <c:out value="${infoResult.peopleInfoResult.peopleInfo.sex	}"/><br>	<!--	성별을 출력합니다.	-->
		영화인 분류명| <c:out value="${infoResult.peopleInfoResult.peopleInfo.repRoleNm	}"/><br>	<!--	영화인 분류명을 출력합니다.	-->
		<c:forEach items="${infoResult.peopleInfoResult.peopleInfo.filmos}" var="filmos">
		참여 영화코드| <c:out value="${filmos.movieCd	}"/><br>	<!--	참여 영화코드를 출력합니다.	-->
		참여 영화명| <c:out value="${filmos.movieNm	}"/><br>	<!--	참여 영화명을 출력합니다.	-->
		참여분야| <c:out value="${filmos.moviePartNm	}"/><br>	<!--	참여분야을 출력합니다.	-->
		<hr>
		</c:forEach>
		홈페이지| <c:out value="${filmos.homepages	}"/><br>	<!--	홈페이지을 출력합니다.	-->
</c:if>

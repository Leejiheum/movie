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
	//영화코드를 지정합니다.
	String movieCd = request.getParameter("movieCd") == null?"20124079":request.getParameter("movieCd");
 	// 발급키
 	String key = "1259153a34727826d9034e4beb9d6433";
	//KOBIS 오픈 API Rest Client를 통해 호출
 	KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);

	String InfoRespmse = service.getMovieInfo(true, movieCd);
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> infoResult = mapper.readValue(InfoRespmse, HashMap.class);
	HashMap<String,Object> info = mapper.readValue(InfoRespmse, HashMap.class);
	
	request.setAttribute("infoResult", infoResult);

%>

<c:if test="${not empty infoResult.movieInfoResult.movieInfo}">
		영화코드| <c:out value="${infoResult.movieInfoResult.movieInfo.movieCd}"/><br> 	<!--	영화코드를 출력합니다.	-->
		영화명(국문)| <c:out value="${infoResult.movieInfoResult.movieInfo.movieNm}"/><br>	<!--	영화명(국문)을 출력합니다.	-->
		영화명(영문)| <c:out value="${infoResult.movieInfoResult.movieInfo.movieNmEn}"/><br>	<!--	영화명(영문)을 출력합니다.	-->
		영화명(원문)| <c:out value="${infoResult.movieInfoResult.movieInfo.movieNmOg}"/><br>	<!--	영화명(원문)을 출력합니다.	-->
		개봉연도| <c:out value="${infoResult.movieInfoResult.movieInfo.openDt}"/><br>	<!--	개봉연도를 출력합니다.	-->
		제작상태명| <c:out value="${infoResult.movieInfoResult.movieInfo.prdtStatNm}"/><br>	<!--	제작상태명을 출력합니다.	-->
		영화유형명| <c:out value="${infoResult.movieInfoResult.movieInfo.typeNm}"/><br>	<!--	영화유형명을 출력합니다.	-->
		
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.nations}" var="nations">
		제작국가| <c:out value="${nations.nationNm}"/><br>	<!--	제작국가명을 출력합니다.	-->
		</c:forEach>
		
		장르명|
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.genres}" var="genres">
		<c:out value="${genres.genreNm}"/>	<!--	장르명을 출력합니다.	-->
		</c:forEach>
		<br>
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.directors}" var="directors">
		감독명| <c:out value="${directors.peopleNm}"/>	<br><!--	감독명을 나타냅니다.	-->
		감독명(영문)| <c:out value="${directors.peopleNmEn}"/><br>	<!--	감독명(영문)을 출력합니다.	-->
		</c:forEach>
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.actors}" var="actors">
		배우명| <c:out value="${actors.peopleNm}"/><br>	<!--	배우명를 나타냅니다.	-->
		배우명(영문))| <c:out value="${actors.peopleNmEn}"/><br>	<!--	배우명(영문)을 나타냅니다.	-->
		배역명| <c:out value="${actors.cast}"/><br>	<!--	배역명를 나타냅니다.	-->
		배역명(영문)| <c:out value="${actors.castEn}"/><br>	<!--	배역명(영문)를 나타냅니다.	-->
		<hr>
		</c:forEach>
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.showTypes}" var="showTypes">
		상영형태| <c:out value="${showTypes.showTypeGroupNm}"/><br>	<!--	상영형태 구분을 나타냅니다.	-->
		상영형태명| <c:out value="${showTypes.showTypeNm}"/><br>	<!--	상영형태 명을 나타냅니다.	-->
		<hr>
		</c:forEach>
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.audits}" var="audits">
		심의번호| <c:out value="${audits.auditNo}"/><br>	<!--	심의번호를 나타냅니다.	-->
		관람등급| <c:out value="${audits.watchGradeNm}"/><br>	<!--	관람등급를 출력합니다.	-->
		<hr>
		</c:forEach>
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.companys}" var="companys">
		영화사코드| <c:out value="${companys.companyCd}"/><br>	<!--	참여 영화사 코드를 나타냅니다.	-->
		영화사명| <c:out value="${companys.companyNm}"/><br>	<!--	참여 영화사명를 나타냅니다.	-->
		영화사명(영문)| <c:out value="${companys.companyNmEn}"/><br>	<!--	참여 영화사명(영문)를 나타냅니다.	-->
		영화사 분야명| <c:out value="${companys.companyPartNm}"/><br>	<!--	참여 영화사 분야명를 나타냅니다.	-->
		<hr>
		</c:forEach>
		<c:forEach items="${infoResult.movieInfoResult.movieInfo.staffs}" var="staffs">
		스텝명| <c:out value="${staffs.peopleNm}"/><br>	<!--	스텝명을 출력합니다.	-->
		스텝명(영문)| <c:out value="${staffs.peopleNmEn}"/><br>	<!--	스텝명(영문)을 출력합니다.	-->
		스텝역할명| <c:out value="${staffs.staffRoleNm}"/><br>	<!--	스텝역할명을 출력합니다.	-->
		<hr>
		</c:forEach>
</c:if>
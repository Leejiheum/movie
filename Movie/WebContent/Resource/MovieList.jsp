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
	//영화명으로 조회합니다. (UTF-8 인코딩)
	String movieNm = request.getParameter("movieNm")==null?"":request.getParameter("movieNm");
	// 감독명으로 조회합니다. (UTF-8 인코딩)
	String directorNm = request.getParameter("directorNm")==null?"":request.getParameter("directorNm");
	// YYYY형식의 조회시작 개봉연도를 입력합니다.
	String openStartDt = request.getParameter("openStartDt")==null?"":request.getParameter("openStartDt");
	// YYYY형식의 조회종료 개봉연도를 입력합니다.
	String openEndDt = request.getParameter("openEndDt")==null?"":request.getParameter("openEndDt");
	// YYYY형식의 조회시작 제작연도를 입력합니다.
	String prdtStartYear = request.getParameter("prdtStartYear")==null?"":request.getParameter("prdtStartYear");
	// YYYY형식의 조회종료 제작연도를 입력합니다.
	String prdtEndYear = request.getParameter("prdtEndYear")==null?"":request.getParameter("prdtEndYear");
	// N개의 국적으로 조회할 수 있으며, 국적코드는 공통코드 조회 서비스에서 “2204” 로서 조회된 국적코드입니다. (default : 전체)
	String repNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");
	// N개의 영화유형코드로 조회할 수 있으며, 영화유형코드는 공통코드 조회 서비스에서 “2201”로서 조회된 영화유형코드입니다. (default: 전체)
	String[] movieTypeCdArr = {};
    
 	// 발급키
 	String key = "1259153a34727826d9034e4beb9d6433";
	//KOBIS 오픈 API Rest Client를 통해 호출
 	KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
	//일일 박스오피스 서비스 호출 (boolean is Json, String targetDT
	//										, String itemPerPage, String multiMovieYn, Stirng repNationCd, String wideAreaCd)
	String movieRespmse = service.getMovieList(true, curPage, itemPerPage, movieNm, directorNm, openStartDt, openEndDt, prdtStartYear, prdtEndYear, repNationCd, movieTypeCdArr);
	String Movie = service.getMovieList(true, curPage, itemPerPage, movieNm, directorNm, openStartDt, openEndDt, prdtStartYear, prdtEndYear, repNationCd, movieTypeCdArr);
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> movieResult = mapper.readValue(movieRespmse, HashMap.class);
	HashMap<String,Object> movie = mapper.readValue(movieRespmse, HashMap.class);
	
	request.setAttribute("movieResult", movieResult);
	//KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean usJson, String comCode)
	String codeResponse = service.getComCodeList(true,"01050000000");
	HashMap<String,Object> codeResult =  mapper.readValue(codeResponse, HashMap.class);
	request.setAttribute("codeResult",codeResult);
%>
<table border="1">
	<tr>
		<td>영화코드</td>
		<td>영화명(국문)</td>
		<td>영화명(영문)</td>
		<td>개봉연도</td>
		<td>영화유형</td>
		<td>제작상태</td>
		<td>제작국가(전체)</td>
		<td>영화장르(전체)</td>
		<td>대표 제작국가명</td>
		<td>대표 장르명</td>
		<td>영화감독</td>
		<td>제작사 코드</td>
		<td>제작사명</td>
	</tr>
<c:if test="${not empty movieResult.movieListResult.movieList}">
<c:forEach items="${movieResult.movieListResult.movieList }" var="movieList">
<tr>
		<td><c:out value="${movieList.movieCd	}"/></td>	<!--	영화코드를 출력합니다.	-->
		<td><c:out value="${movieList.movieNm	}"/></td>	<!--	영화명(국문)을 출력합니다.	-->
		<td><c:out value="${movieList.movieNmEn	}"/></td>	<!--	영화명(영문)을 출력합니다.	-->
		<td><c:out value="${movieList.openDt	}"/></td>	<!--	개봉연도를 출력합니다.	-->
		<td><c:out value="${movieList.typeNm	}"/></td>	<!--	영화유형을 출력합니다.	-->
		<td><c:out value="${movieList.prdtStatNm	}"/></td>	<!--	제작상태를 출력합니다.	-->
		<td><c:out value="${movieList.nationAlt	}"/></td>	<!--	제작국가(전체)를 출력합니다.	-->
		<td><c:out value="${movieList.genreAlt	}"/></td>	<!--	영화장르(전체)를 출력합니다.	-->
		<td><c:out value="${movieList.repNationNm	}"/></td>	<!--	대표 제작국가명을 출력합니다.	-->
		<td><c:out value="${movieList.repGenreNm	}"/></td>	<!--	대표 장르명을 출력합니다.	-->
		<td><c:out value="${movieList.directors[0].peopleNm}"/></td>	<!--	영화감독을 나타냅니다.	-->
		<td><c:out value="${movieList.companys[0].companyCd	}"/></td>	<!--	제작사 코드를 출력합니다.	-->
		<td><c:out value="${movieList.companys[0].companyNm	}"/></td>	<!--	제작사명을 출력합니다.	-->
</tr>
</c:forEach>
</c:if>
</table>
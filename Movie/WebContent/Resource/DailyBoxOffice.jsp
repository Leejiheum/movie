<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<!-- <link href="/Resource/css/table-style.css" rel='stylesheet' type='text/css' /> -->
<%
DateFormat sdFormat = new SimpleDateFormat("yyyyMM18");
Date date = new Date();
String Dt = sdFormat.format(date);
	//파라메터 설정
	//조회일자
	String targetDt = request.getParameter("targetDt") == null?Dt:request.getParameter("targeDt");
	//결과 ROW 수
	String itemPerPage = request.getParameter("itemPerPage")==null?"10":request.getParameter("itemPerPage");
	// "Y" : 다양성 영화 "N" : 상업영화 (default : 전체)
	String multMovieYn = request.getParameter("multMovieYn")==null?"":request.getParameter("multMovieYn");
	// "K" : 한국영화 "F" : 외국영화 (default : 전체)
	String repNationCd = request.getParameter("repNationCd")==null?"":request.getParameter("repNationCd");
	// "01050000000" 로서 조회된 지역코드
	String wideAreaCd = request.getParameter("wideAreaCd")==null?"":request.getParameter("wideAreaCd");
	// 발급키
	String key = "1259153a34727826d9034e4beb9d6433";
	//KOBIS 오픈 API Rest Client를 통해 호출
	KobisOpenAPIRestService service = new KobisOpenAPIRestService(key);
	//일일 박스오피스 서비스 호출 (boolean is Json, String targetDT
	//										, String itemPerPage, String multiMovieYn, Stirng repNationCd, String wideAreaCd)
	String dailyResponse = service.getDailyBoxOffice(true,targetDt,itemPerPage,multMovieYn,repNationCd,wideAreaCd);
	// Json 라이브러리를 통해 Handling
	ObjectMapper mapper = new ObjectMapper();
	HashMap<String,Object> dailyResult = mapper.readValue(dailyResponse, HashMap.class);
	HashMap<String,Object> daily = mapper.readValue(dailyResponse, HashMap.class);
	
	request.setAttribute("dailyResult", dailyResult);
	//KOBIS 오픈 API Rest Client를 통해 코드 서비스 호출 (boolean usJson, String comCode)
	String codeResponse = service.getComCodeList(true,"01050000000");
	HashMap<String,Object> codeResult =  mapper.readValue(codeResponse, HashMap.class);
	request.setAttribute("codeResult",codeResult);
%>
<div class="bs-example bs-example-tabs" role="tabpanel"
	data-example-id="togglable-tabs">
	<div id="myTabContent" class="tab-content">
		<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
			<div class="agile-news-table">
				<table id="table-breakpoint" style ="width: 100%; background:white; border-collapse:collapse;; margin:0;">
					<thead>
						<tr style="border:1px solid #e8e8e8;font-size:.95em;">
							<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en">순번</td>
							<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en">영화명(국문)</td>
							<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en">개봉일</td>
							<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en">누적매출액</td>
							<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en">누적관객수</td>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty dailyResult.boxOfficeResult.dailyBoxOfficeList}">
							<c:forEach items="${dailyResult.boxOfficeResult.dailyBoxOfficeList }" var="boxoffice">
								<tr style="border:1px solid #e8e8e8;font-size:.95em;">
									<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en"><c:out value="${boxoffice.rank}" /></td>
									<!--	해당일자의 박스오피스 순위를 출력합니다.	-->
									<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en"><c:out value="${boxoffice.movieNm}" /></td>
									<!--	영화명(국문)을 출력합니다.	-->
									<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en"><c:out value="${boxoffice.openDt}" /></td>
									<!--	영화의 개봉일을 출력합니다.	-->
									<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en"><fmt:formatNumber value="${boxoffice.salesAcc}"></fmt:formatNumber>원</td>
									<!--	누적매출액을 출력합니다.	-->
									<td style="color:#424242;padding:10px 12px; text-align:left; border:1px solid #e8e8e8; font-size:.95en"><fmt:formatNumber value="${boxoffice.audiAcc}" ></fmt:formatNumber>명</td>
									<!--	누적관객수를 출력합니다.	-->
								</tr>
							</c:forEach>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
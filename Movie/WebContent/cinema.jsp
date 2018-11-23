<%@page import="java.util.List" %>
<%@page import="poly.dto.CommonDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	List<CommonDTO> cList = (List<CommonDTO>)request.getAttribute("cList");
 	CommonDTO cDTO = (CommonDTO)request.getAttribute("cDTO");
 	CommonDTO test = (CommonDTO)request.getAttribute("test");
/*  	String test1 = test.getADDRESS(); */
 %>
 
 
 				 <style>
/* .map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;} */
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>
 
 
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>
<link href="/Resource/css/table-style.css" rel='stylesheet' type='text/css' />
<%@include file="/Resource/mobile.jsp" %>
</head>
<script>
$(function(){
	/* $('#sido').change(function() {
		console.log("sido : " + $("#sido").val());
	}) */
	$('#search').click(function(){
		var sido = $("#sido").val();
		var gugun = $("#gugun").val();
 		if(sido=='시/도 선택'||gugun=='군/구 선택'){
			alert("유효하지 않은 검색조건입니다.")
			$("#sido").focus();
			return false;
		} else {
			$.ajax({
				url : "cienma/sidosearch.do",
				type : 'POST',
				data : {
					'sido' : sido,
					'gugun' : gugun
				},
				success : function(data){
				 	var contents="";
					 $.each(data, function(key,value){
						contents+="<tr class='findtest' data-no='"+value.no+"' data-no-seq='"+value.no+"' rock-asd='"+value.no+"' >";
/* 						contents+="<td><a style='color:#FF8D1B; font-weight:bold;'href='cienma/sidosearchDetail.do?no="+value.no+"'>"+value.cinema_NAME+"</a></td>"; */
						contents+="<td style='color:#FF8D1B; font-weight:bold;'>"+value.cinema_NAME+"</td>";
						contents+="<td class='hoxy'>"+value.address+"</td>";
						contents+="</tr>";
					}); 
					$('#showFindTable').html(contents);
				}
			})
 		} 
	});
})
</script>
 <script>
    $(function(){
		var mapContainer = document.getElementById('map'), //지도를 표시할 div
		/* var mapContainer = document.getElementsByClassName('map'), //지도를 표시할 div */
		    mapOption = {
		        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption); 
    	    	
    	$(document).on( "click", ".findtest", function(){
    		var str = ""
    		var tdArr = new Array();	// 배열 선언
    		
    		// 현재 클릭된 Row(<tr>)
    		var tr = $(this);
    		var td = tr.children();
    		var no = $(this).data("no");
    		
    		// 반복문을 이용해서 배열에 값을 담아 사용할 수 도 있다.
    		td.each(function(i){
    			tdArr.push(td.eq(i).text());
    		});
    		
    		// td.eq(index)를 통해 값을 가져올 수도 있다.
    		var cinema_NAME = td.eq(0).text();
    		var address = td.eq(1).text();
    		
    		str +="* 영화관명 : <font color='red'>" + cinema_NAME + "</font><br>" +
    				"* 주소 : <font color='red'>" + address + "</font>";
    		$("#ex1_Result2").html(str);
    		
			$.ajax({
				url : "cienma/sidosearchDetail.do",
				type : 'POST',
				data : {
					'cinema_NAME' : cinema_NAME,
					'address' : address,
					'no' : no
				},
				success : function(data){
				 	var contents="";
				 	var address="";
					 $.each(data, function(key,value){
						contents+="<input type='hidden' class='adrressVal' value='"+value.address+"'>";
						contents+="<input type='hieedn' class='nameVal' value='"+value.cinema_NAME+"''>";
					});
					$('.testpage').html(contents);
				}
			})
			
		
		var adrressVal = $('.adrressVal').val();
		var nameVal = $('.nameVal').val();

		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();

		// 주소로 좌표를 검색합니다
		/* geocoder.addressSearch('대전광역시 서구 탄방동 746 번지 5층', function(result, status) {*/
		 geocoder.addressSearch(adrressVal, function(result, status) {
			/* console.log("test : "+test); */
		    // 정상적으로 검색이 완료됐으면 
		     if (status === daum.maps.services.Status.OK) {

		        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new daum.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new daum.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+nameVal+'</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		    } 
		});    

    		
    	});
    	
    	$(document).on( "click", ".hoxy", function(){
    		alert("hoxy");
    	});
		
    });
</script>
	<p>
			<!-- <em>지도 중심좌표가 변경되면 지도 정보가 표출됩니다</em> -->
		</p>
		<p id="result"></p>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=506468032e6b61172905c2687a5f76ee&libraries=services,clusterer,drawing"></script>
<body>
<%@include file="/Resource/nav.jsp" %>
<%@include file="/Resource/local.jsp"%> <!-- 시/군/구 -->
	<div class="faq">
		<!-- general -->
		<div class="general_agileits_genres">
			<h4 class="latest-text w3_latest_text">영화관</h4>
			<div class="container">
				<div class="agileits-single-top">
					<ol class="breadcrumb">
						<li><a href="index.do">Home</a></li>
						<li class="active">영화관</li>
					</ol>
				</div>
			</div>
				<h4 class="latest-text w3_late520st_text">목록</h4>
				<div class="container">
					<div class="agileits-single-top">
						<div class="breadcrumb">
							<select name="sido" id="sido"></select> <select name="gugun"id="gugun"></select>
							<input type="button" id="search" name="search" value="검색">
						</div>
					</div>
					<div class="row">
					<table id="example-table-1" width="100%" class="table table-bordered table-hover text-center">
						<thead>
							<tr>
								<th style="width:30%; text-align:center; background:#ffffff;">영화관</th>
								<th style="width:70%; text-align:center; background:#ffffff;">주소</th>
							</tr>
						</thead>
						<tbody id="showFindTable">
							<tr>
								<th colspan="2" style="background:#ffffff; color:#FF8D1B;text-align:center; ">조회된 검색결과가 없습니다.</th>
							</tr>
						</tbody>
					</table>
					<div class="col-lg-12" id="ex1_Result1" ></div> 
					<div class="col-lg-12" id="ex1_Result2" ></div> 
					</div>
				</div>
			<!--  -->
				<div class="container">
					<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
						<ul id="myTab" class="nav nav-tabs" role="tablist">
							<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">전체</a></li>
							<li role="presentation"><a href="#profile" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile" aria-expanded="false">CGV</a></li>
							<li role="presentation"><a href="#rating" id="rating-tab" role="tab" data-toggle="tab" aria-controls="rating" aria-expanded="true">메가박스</a></li>
							<li role="presentation"><a href="#imdb" role="tab" id="imdb-tab" data-toggle="tab" aria-controls="imdb" aria-expanded="false">롯데 시네마</a></li>
						</ul>
					</div>
				</div>
				<!-- 지도 -->
				<div class="mapcontainer">
					<div id="map" style="width: 100%; height: 350px;"></div>
				</div>
			
			
<!-- <div class="container">
	<div id="map" style="width: 100%; height: 350px;"></div>
</div> -->
			
			
			
		</div>
		<!--body wrapper start-->
	</div>
	
	<div class="testpage"></div>
<!-- footer -->
<%@include file="/Resource/footer.jsp" %>
<!-- //footer -->
</body>
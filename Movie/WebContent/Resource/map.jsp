<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div id="map" style="width: 100%; height: 350px;"></div>
</div>
<p>
	<!-- <em>지도 중심좌표가 변경되면 지도 정보가 표출됩니다</em> -->
</p>
<p id="result"></p>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=506468032e6b61172905c2687a5f76ee"></script>
<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	mapOption = {
		center : new daum.maps.LatLng(37.56659888661961, 126.97828445488895), // 지도의 중심좌표
		level : 6 // 지도의 확대 레벨
	};

	var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new daum.maps.MapTypeControl();
	
	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new daum.maps.ZoomControl();
	map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
	
	// 지도가 이동, 확대, 축소로 인해 중심좌표가 변경되면 마지막 파라미터로 넘어온 함수를 호출하도록 이벤트를 등록합니다
	daum.maps.event.addListener(map, 'center_changed', function() {

		// 지도의  레벨을 얻어옵니다
		var level = map.getLevel();

		// 지도의 중심좌표를 얻어옵니다 
		var latlng = map.getCenter();

		/* 					var message = '<p>지도 레벨은 ' + level + ' 이고</p>';
		 message += '<p>중심 좌표는 위도 ' + latlng.getLat() + ', 경도 '
		 + latlng.getLng() + '입니다</p>'; */

		var resultDiv = document.getElementById('result');
		resultDiv.innerHTML = message;
	});
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new daum.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

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
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
	        });
	        infowindow.open(map, marker);

	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
</script>
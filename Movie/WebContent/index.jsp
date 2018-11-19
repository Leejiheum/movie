<%@page import="java.io.Console"%>
<%@page import="net.sf.json.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Think! Movie</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@include file="/Resource/mobile.jsp" %>
<!-- <script>
$(function(){
	
$.ajax({
	
	url:"/data.do",
	method:'post',
	data:{
	},
	success:function(data){
		var cont="";
	console.log(data);
		$.each(data,function(key,value){
	 		cont+='<li>';
			cont+='<img src="/Resource/images/5.jpg" alt=" ">';
			cont+='<p class="title">'+value.title+'</p>';
			cont+='<p class="description"></p>';
			cont+='</li>'; 
		})
		$('#movieCont').html(cont);
		
	},
	error:function(data){
		alert("error");
	}
})

})
</script> -->

</head>
<body>
<div>
</div>
<%@include file="/Resource/nav.jsp" %>
<!-- banner -->
<div id="slidey" style="display:none; padding-bottom: 48px;">
		<ul id = movieCont>
 			<li>
			<img src="/Resource/images/5.jpg" alt=" ">
				<p class='title'><span id=test>1</span>타이틀<p>
				<p class='description'> 내용 내용 내용</p>
			</li>
			<li><img src="/Resource/images/2.jpg" alt=" ">
				<p class='title'>타이틀2</p>
				<p class='description'>내용 내용 내용</p>
			</li>
			<li><img src="/Resource/images/3.jpg" alt=" ">
				<p class='title'>타이틀3</p>
				<p class='description'>내용 내용 내용</p>
			</li>
			<li><img src="/Resource/images/4.jpg" alt=" ">
				<p class='title'>타이틀4</p>
				<p class='description'>내용 내용 내용</p>
			</li>
			<li><img src="/Resource/images/6.jpg" alt=" ">
				<p class='title'>타이틀5</p>
				<p class='description'>내용 내용 내용</p>
			</li>
			<li><img src="/Resource/images/7.jpg" alt=" ">
				<p class='title'>타이틀6</p>
				<p class='description'>내용 내용 내용</p>
			</li>		
		</ul>   	
    </div>
<script type="text/javascript">
			$("#slidey").slidey({
				interval: 5000,
				listCount: 3,
				autoplay: false,
				showList: true
			});
			$(".slidey-list-description").dotdotdot();
		</script>
<!-- //banner -->
<h4 class="latest-text w3_latest_text">영화 파인더</h4>
<%@include file="/Resource/moviefinder.jsp" %> <!-- 영화파인더 -->
<%@include file="/Resource/moviegeneral.jsp" %> <!-- 영화정보 -->
<%@include file="/Resource/footer.jsp" %><!-- footer -->
</body>
</html>
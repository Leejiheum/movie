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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
var xhr = new XMLHttpRequest(); 
var url = 'http://api.koreafilm.or.kr/openapi-data2/wisenut/search_api/search_json.jsp?collection=kmdb_new&nation=대한민국'; /*URL*/ 
var queryParams = '&ServiceKey=XPYU70SA5ZG24KUG00VP'; /*Service Key*/ 

xhr.open('GET', url + queryParams); 
xhr.onreadystatechange = function () { 
 	if (this.readyState == 4) { 
		/* alert('Status: '+this.status+' | Headers: '+JSON.stringify(this.getAllResponseHeaders())+' | Body: '+this.responseText); */
		alert(this.responseText);
		} 
	}; 
xhr.send('');
</script>
</head>
<Body>

</Body>
</html>
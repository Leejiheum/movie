<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>WEB!</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(function(){
	$('#idChk').click(function () {
	var id = $('#id').val();
		$.ajax({
			url:'/user/idChk.do',				//요청할 주소 값
			method : 'post',			// Get or Post
			data : { 'id' : id },		// 서버에 넘길 Parameter (2개 이상은 배열)
			success : function(data) {		// 응답 성공 시 값이 반환 되는 곳 (반환 된 값 = data)
				
				if(data==0) {
					//중복 없음
					alert("사용가능한 ID 입니다.")
				} else {
					//중복 있음
					alert("중복된 ID 입니다.")
					$('#id').val('');
				}
			}
		});
	});
});


/* 	function idChk() {
		var id = $('#id').val();
		alert(id);
		$.ajax({
			url:'/user/idChk.do',				//요청할 주소 값
			method : 'post',			// Get or Post
			data : { 'id' : id },		// 서버에 넘길 Parameter (2개 이상은 배열)
			success : function(data) {		// 응답 성공 시 값이 반환 되는 곳 (반환 된 값 = data)

			
				}
		});
	} */
</script>
</head>
<body>
	<table style="height: 100%; width: 100%">
		<tr height="7%" bgcolor="#00D8FF">
			<td>
				<%@include file="/WEB-INF/view/top.jsp" %>
			</td>
		</tr>
		<tr bgcolor="">
			<td>
			<div align="center">
				<form action="/user/userRegProc.do" method="post" >
					Id : <input type="text" name="id" id="id"> 
					<input type="button" id="idChk" value="중복확인">
<!-- 					<input type="button" id="idChk" value="중복확인" onclick="idChk()"> -->
					<br>
					PassWord : <input type="password" name="password"> <br>
					Name : <input type="text" name="name"> <br>
					Age : <input type="text" name="age"><br>
					<input type="submit" value="전송"><br>
				</form>
				</div>
			</td>
		</tr>
		<tr height="7%" bgcolor="#00D8FF">
			<td>
				<%@include file="/WEB-INF/view/bottom.jsp" %>
			</td>
		</tr>
	</table>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@ page import="poly.util.CmmUtil" %>
<%@page import="java.util.List"%>
<%@page import="poly.dto.UserDTO"%>
<%@include file="/Resource/mobile.jsp"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>
<%
List<UserDTO> uList =	(List<UserDTO>)request.getAttribute("uList");
//게시판 조회 결과 보여주기
if (uList==null){
	uList = new ArrayList<UserDTO>();
}
%> 

<script type="text/javascript">

//상세보기 이동
function doDetail(USER_ID){
	location.href="/Admin_usersdetail.do?USER_ID="+ USER_ID; 
}

$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#activeall").click(function(){
        //클릭되었으면
        if($("#activeall").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=active]").prop("checked",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=active]").prop("checked",false);
        }
    })
})
</script>
<%@include file="/Resource/mobile.jsp"%>
</head>
<body>
<%@include file="/Resource/nav.jsp"%>
	<!-- faq-banner -->
<div class="faq">
	<h4 class="latest-text w3_faq_latest_text w3_latest_text">회원관리</h4>
		<div class="container">
			<div class="agileits-single-top">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">회원관리</li>
				</ol>
			</div>
			<div class="agileits-single-top">
				<div class="breadcrumb">
					<a href="#" style="color: #fff; display: inline-block; text-transform: uppercase; text-decoration: none; background: #FF8D1B; text-align: center; padding: 6px 30px; font-weight: bold;">비활성화</a>
					<select style="float:right">
						<option>전체</option>
						<option>활성화</option>
						<option>비활성화</option>
					</select> 
				</div>
			</div>
		</div>

		<div class="container">
		<div class="bs-docs-example">
			<table class="table table-hover" style="width:100%">
				<thead>
					<tr>
						<th style="width:10%; text-align:center;"><input type="checkbox" name="activeall" id="activeall"></th>
						<th style="width:15%; text-align:center;">아이디</th>
						<th style="width:15%; text-align:center;">이름</th>
						<th style="width:15%; text-align:center;">이메일</th>
						<th style="width:15%; text-align:center;">연락처</th>
						<th style="width:13%; text-align:center;">수정</th>
					</tr>
				</thead>
				<tbody>
				<%
				for (int i=0;i<uList.size();i++){
					UserDTO uDTO = uList.get(i);
					if (uDTO==null){
						uDTO = new UserDTO();
					}
				%>
					<tr>
					
						<td style="text-align:center;"><input type="checkbox" id="active" name="active"></td>
						<td style="text-align:center;"><%=CmmUtil.nvl(uDTO.getUSER_ID())%></td>
						<td style="text-align:center;"><%=CmmUtil.nvl(uDTO.getUSER_NAME())%></td>
						<td style="text-align:center;"><%=CmmUtil.nvl(uDTO.getUSER_MAIL())%></td>
						<td style="text-align:center;"><%=CmmUtil.nvl(uDTO.getUSER_PHONE())%></td>
						<td style="text-align:center;"><a href="javascript:doDetail('<%=CmmUtil.nvl(uDTO.getUSER_ID())%>');" style="color: #fff; display: inline-block; text-transform: uppercase; text-decoration: none; background: #FF8D1B; text-align: center; padding: 6px 30px; font-weight: bold;">수정</a></td>
					</tr>
				<%
				}
				%>
				</tbody>
			</table>
		</div>
	</div>
</div>
<!-- //faq-banner -->
<%@include file="/Resource/footer.jsp"%>
</body>
</html>
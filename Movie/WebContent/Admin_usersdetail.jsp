<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="poly.dto.UserDTO" %>
<%
	UserDTO uDTO = (UserDTO) request.getAttribute("uDTO");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>
<link href="/Resource/css/table-style.css" rel='stylesheet'type='text/css' />
<%@include file="/Resource/mobile.jsp"%>
<script type="text/javascript">

//상세보기 이동
function doDetail(USER_ID){
	location.href="/Admin_usersdetail.do?USER_ID="+ USER_ID; 
}

  $(document).ready(function(){
    //최상단 체크박스 클릭
    $("#update").click(function(){
        //클릭되었으면
        alert("선택");
        if($("input[disabled=disabled]".prop("disabled")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[disabled=disabled]").prop("enabled",true);
            //클릭이 안되있으면
        }else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[disabled=disabled]").prop("disabled",false);
        }
    })
})

</script>
</head>
<body>
	<%@include file="/Resource/nav.jsp"%>
	<%@include file="/Resource/local.jsp"%>
	<!-- 시/군/구 -->
	<div class="faq">
		<!-- general -->
		<div class="general_agileits_genres">
			<h4 class="latest-text w3_latest_text">회원정보 수정</h4>
			<div class="container">
				<div class="agileits-single-top">
					<ol class="breadcrumb">
						<li><a href="index.do">Home</a></li>
						<li><a href="Admin_users.do">회원관리</a></li>
						<li class="active">회원정보 수정</li>
					</ol>
				</div>
			</div>
			<div class="container">
			<form action="UserUpdateProc.do" method="post">
				<div class="bs-example bs-example-tabs" role="tabpanel"data-example-id="togglable-tabs">
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
							<div class="agile-news-table">
								<table id="table-breakpoint">
									<tbody>
										<tr>
											<th id="first">아이디</th>
											<td id="block" class="w3-list-img"> <span><input type="text" style="font:bold; border: 0px; background: no-repeat;"disabled="disabled" value="<%=uDTO.getUSER_ID()%>"><input type="hidden" value="<%=uDTO.getUSER_ID()%>" name="USER_ID"></span></td>
										</tr>
										<tr>
											<th id="first">비밀번호</th>
											<td class="w3-list-img"> <span><input type="text" style="border: 3px solid #A5C7FE; background: no-repeat;"  value="<%=uDTO.getUSER_PW()%>" name="USER_PW"></span></td>
										</tr>
										<tr>
											<th id="first">이름</th>
											<td class="w3-list-img"> <span><input type="text" style="border: 3px solid #A5C7FE; background: no-repeat;" value="<%=uDTO.getUSER_NAME()%>" name="USER_NAME"></span></td>
										</tr>
										<tr>
											<th id="first">이메일</th>
											<td class="w3-list-img"> <span><input type="text" style="border: 3px solid #A5C7FE; background: no-repeat;" value="<%=uDTO.getUSER_MAIL()%>" name="USER_MAIL"></span></td>
										</tr>
										<tr>
											<th id="first">전화번호</th>
											<td class="w3-list-img"> <span><input type="text" style="border: 3px solid #A5C7FE; background: no-repeat;" value="<%=uDTO.getUSER_PHONE()%>" name="USER_PHONE"></span></td>
										</tr>
										<tr>
											<th id="first">계정상태</th>
											<td class="w3-list-img">
												<span>
												<%if ( uDTO.getUSER_ACTIVE()== "0") { %>
													<input type="radio" id="active" name="active" value=0 checked="checked"> 활성화
													<input type="radio" id="active" name="active" value=1> 비활성화
													<%} else {%> 
													<input type="radio" id="active" name="active" value=0 > 활성화
													<input type="radio" id="active" name="active" value=1 checked="checked"> 비활성화
													<%} %>
												</span>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="w3l_sign_in_register">
					<ul>
						<li><input type="submit" value="저장" style="color: #fff; display: inline-block; text-transform: uppercase; text-decoration: none; background: #FF8D1B; text-align: center; padding: 6px 30px; font-weight: bold;"></li>
					</ul>
				</div>
				<!-- 리스트 -->
			</form>
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@include file="/Resource/footer.jsp"%>
	<!-- //footer -->
</body>
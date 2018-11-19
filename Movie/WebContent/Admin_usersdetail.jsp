<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>
<link href="/Resource/css/table-style.css" rel='stylesheet'type='text/css' />
<%@include file="/Resource/mobile.jsp"%>
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
				<div class="bs-example bs-example-tabs" role="tabpanel"data-example-id="togglable-tabs">
					<div id="myTabContent" class="tab-content">
						<div role="tabpanel" class="tab-pane fade in active" id="home" aria-labelledby="home-tab">
							<div class="agile-news-table">
								<table id="table-breakpoint">
									<tbody>
										<tr>
											<th id="first">아이디</th>
											<td id="block" class="w3-list-img"> <span>01 Ben-Hur</span></td>
										</tr>
										<tr>
											<th id="first">비밀번호</th>
											<td class="w3-list-img"> <span>001 Southside with you</span></td>
										</tr>
										<tr>
											<th id="first">이름</th>
											<td class="w3-list-img"> <span>12 Bad Moms</span></td>
										</tr>
										<tr>
											<th id="first">이메일</th>
											<td class="w3-list-img"> <span>2 Sausage Party</span></td>
										</tr>
										<tr>
											<th id="first">전화번호</th>
											<td class="w3-list-img"> <span>2.0 Morgan</span></td>
										</tr>
										<tr>
											<th id="first">계정상태</th>
											<td class="w3-list-img">
												<span>
													<input type="radio" id="active" name="active" checked="checked"> 활성화 
													<input type="radio" id="active" name="active"> 비활성화
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
						<li><a href="#" data-toggle="modal" data-target="#myModal">수정</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModalJoin">저장</a></li>
					</ul>
				</div>
				<!-- 리스트 -->
			</div>
		</div>
	</div>
	<!-- footer -->
	<%@include file="/Resource/footer.jsp"%>
	<!-- //footer -->
</body>
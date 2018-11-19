<%@page import="poly.dto.UserDTO"%>
<%@page import="poly.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	UserDTO uDTO = (UserDTO) request.getAttribute("uDTO");
	List<NoticeDTO> nList =(List<NoticeDTO>) request.getAttribute("nList");
%>

<html>
<head>
<title>WEB!</title>
<!-- <link rel="stylesheet" href="project.css" type="text/css"> -->
<%-- <%@include file="/WEB-INF/view/user/css.jsp"%> --%>
<script type="text/javascript">
	function userDelete(userNo) {
		location.href = "/user/userDelete.do?userNo=" + userNo;
	}
</script>
<!--  -->
<link rel="stylesheet" href="//cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script src="//cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<!--  -->
</head>
<body>
	<table style="height: 100%; width: 100%">
		<tr height="7%" bgcolor="#00D8FF">
			<td><%@include file="/WEB-INF/view/top.jsp"%>
			</td>
		</tr>
		<tr bgcolor="">
			<td>
				<!-- 상세화면 -->
				<div>
					<div>
						<table id="dataTable">
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (int i = 0; i < nList.size(); i++) {
								%>
								<tr>
									<th><%=nList.get(i).getNotice_seq()%></th>
									<th><p>
											<a
												href="/user/NoticeDetail.do?Notice_seq=<%=nList.get(i).getNotice_seq()%>">
												<%=nList.get(i).getTitle()%>
											</a>
										</p></th>
									<th><p><%=nList.get(i).getUser_id()%></p></th>
									<th><p><%=nList.get(i).getReg_dt()%></p></th>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
						<%-- <%for (int i =0; i < nList.size(); i++) { %>
									<ul class="col-5">
										<li class="num"><%=nList.get(i).getNotice_seq() %></li> <!-- 공지 -->
										<li class="b_subject "><p><a href="/user/NoticeDetail.do?Notice_seq=<%=nList.get(i).getNotice_seq() %>">
											<%=nList.get(i).getTitle() %>
											</a></p></li> <!-- 제목 -->
										<li><p><%=nList.get(i).getUser_id() %></p></li> <!-- 작성자  -->
										<li><p><%=nList.get(i).g etReg_dt() %></p></li><!-- 작성일 -->
									</ul>
									<%} %> --%>
					</div>
					<div class="btnbox_basic_right">
						<a class="btn_basic" href="/notice/NoticeReg.do">글쓰기</a>
					</div>
				</div>
			</td>
		</tr>
		<tr height="7%" bgcolor="#00D8FF">
			<td><%@include file="/WEB-INF/view/bottom.jsp"%>
			</td>
		</tr>
	</table>
</body>
</html>
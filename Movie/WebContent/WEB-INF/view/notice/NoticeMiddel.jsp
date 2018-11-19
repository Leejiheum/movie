<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="poly.dto.NoticeDTO"%>
<%@page import="java.util.List"%>
<%
	List<NoticeDTO> nList =(List<NoticeDTO>) request.getAttribute("nList");
%>
<div>
<%for (int i =0; i < 10; i++) { %>
	<ul class="col-5">
		<li class="num"><%=nList.get(i).getNotice_seq() %></li> <!-- 공지 -->
		<li class="b_subject "><p><a href="/user/NoticeDetail.do?Notice_seq=<%=nList.get(i).getNotice_seq() %>">
		<%=nList.get(i).getTitle() %>
		</a></p></li> <!-- 제목 -->
		<li><p><%=nList.get(i).getUser_id() %></p></li> <!-- 작성자  -->
		<li><p><%=nList.get(i).getReg_dt() %></p></li><!-- 작성일 -->
	</ul>
<%} %>
</div>
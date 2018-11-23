<%@page import="poly.util.CmmUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
 	String id = CmmUtil.nvl((String) session.getAttribute("id"));
	String name = CmmUtil.nvl((String) session.getAttribute("name"));
	String msg = (String)request.getAttribute("msg");
	String url = (String)request.getAttribute("url");
%>
<script>
$(function(){
	var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
	var getPhone = /^\d{3}-\d{3,4}-\d{4}$/; //전화번호 유효성 검사
	var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/); //아이디 유효성 검사
	var idchk = 0;
	$('#idChk').click(function () {
	var id = $('#Id').val();
		if(id=="") {
			alert("아이디를 입력해주세요.")
			return false;
		}
      if(!getCheck.test($("#Id").val())){
          alert("영문 및 숫자 좋바으로 입력해주세요");
          $("#Id").val("");
          $("#Id").focus();
          return false;
        }
		$.ajax({
			url:'/Resource/action/idChk.do',//요청할 주소 값
			method : 'post',			// Get or Post
			data : { 'id' : id },		// 서버에 넘길 Parameter (2개 이상은 배열)
			success : function(data) {		// 응답 성공 시 값이 반환 되는 곳 (반환 된 값 = data)
				if(data==0) {
					//중복 없음
					alert("사용 가능한 아이디 입니다.")
					idchk = 1;
				} else {
					//중복 있음
					alert("중복된 아이디 입니다.")
					$('#id').val('');
				}
			}
		});
	});
 	$('#submit').click(function () {
		var pw = $('#pw').val();
		var pwchk  = $('#pwchk').val();
		if(idchk != 1 ) {
			alert("아이디 중복확인을 해주세요.");
			return false;
		}
		if(pw != pwchk) {
			alert("비밀번호가 일치하지 않습니다.");
			return false;
		}
      if(!getMail.test($("#Email").val())){
          alert("이메일형식에 맞게 입력해주세요")
          $("#Email").val("");
          $("#Email").focus();
          return false;
        }
      if(!getPhone.test($("#Phone").val())){
          alert("휴대폰 번호 형식에 맞게 입력해주세요")
          $("#Phone").val("");
          $("#Phone").focus();
          return false;
        }
	})
});
</script>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="/index.do"><h1>Think!<span>Movie</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="#" method="post">
					<input type="text" name="Search" placeholder="Search" required="">
					<input type="submit" value="검색">
				</form>
			</div>
			<div class="w3l_sign_in_register">
			<% if (!"".equals(name)) { %>
				<ul>
					<li><b><%=name + "님 환영합니다."%></b></li>
					<li><a href="/Resource/action/loguot.do" data-toggle="modal" data-target="">로그아웃</a></li>
				</ul>
			<%} else {%>
				<ul>
					<li><a href="#" data-toggle="modal" data-target="#myModal">로그인</a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModalJoin">회원가입</a></li>
				</ul>
			<% } %>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->
<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					로그인
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							<!-- 체인지 -->
							  <div class="toggle">
							  </div>
							  <div class="form">
								<form action="/Resource/action/LoginProc.do" method="post">
								  아이디 <input type="text" name="Id" placeholder="Id" required="">
								  비밀번호 <input type="password" name="Password" placeholder="Password" required="">
								  <input type="submit" value="로그인">
								</form>
							  </div>
							  <div class="cta"><a href="#"data-toggle="modal" data-target="#myModalSearch">아이디/비밀번호 찾기</a></div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
<!--  아이디/비밀번호 찾기 -->
	<div class="modal video-modal fade" id="myModalSearch" tabindex="-1" role="dialog" aria-labelledby="myModalSearch">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					아이디/비밀번호 찾기
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle">
							  </div>
							  <div class="form">
								<form action="/Resource/action/id.do" method="post">
								  이름 <input type="text" name="name" placeholder="name" required="">
								  휴대폰 <input type="text" name="Phone" placeholder="Phone" required="">
								  <input type="submit" value="아이디 찾기">
								</form>
							  </div>
							</div>
							
							<div class="module form-module">
							  <div class="toggle">
							  </div>
							  <div class="form">
								<form action="/Resource/action/pw.do" method="post">
								  아이디 <input type="text" name="Id" placeholder="Id" required="">
								  이름 <input type="text" name="name" placeholder="name" required="">
								  이메일 <input type="text" name="email" placeholder="email" required="">
								  휴대폰 <input type="text" name="Phone" placeholder="Phone" required="">
								  <input type="submit" value="비밀번호 찾기">
								</form>
							  </div>
							</div>
							
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //아이디/비밀번호 찾기  -->
	
	<div class="modal video-modal fade" id="myModalJoin" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					회원가입
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle">
							  </div>
<!-- 회원가입 -->
 							  <div class="form">
								<form action="/Resource/action/userRegProc.do" method="post">
								아이디 <input type="text" id ="Id" name="Id" placeholder="Id" required="">
								<input type="button" id="idChk" value="중복확인">
								 비밀번호 <input type="password" id="pw" name="Password" placeholder="Password" required="">
								 비밀번호 확인 <input type="password" id="pwchk"name="PasswordChk" placeholder="Password Check" required="">							 
								 이름 <input type="text" id="name" name="name" placeholder="name" required="">							 
								 이메일 <input type="email" id="Email" name="Email" placeholder="Ex) Sample@movie.com" required="">
								 휴대폰 <input type="text" id="Phone" name="Phone" placeholder="Ex) 010-1234-5678" required="">
								  <input type="submit" id = "submit" value="회원가입">
								</form>
							  </div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	
	<script>
		$('.toggle').click(function(){
		  // Switches the Icon
		  $(this).children('i').toggleClass('fa-pencil');
		  // Switches the forms  
		  $('.form').animate({
			height: "toggle",
			'padding-top': 'toggle',
			'padding-bottom': 'toggle',
			opacity: "toggle"
		  }, "slow");
		});
	</script>
<!-- //bootstrap-pop-up -->
<!-- nav -->
	<div class="movies_nav">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="navbar-header navbar-left">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
				</div>
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
					<nav>
						<ul class="nav navbar-nav">
							<li ><a href="/cinema.do">영화관</a></li>
							<li><a href="/info.do">영화정보</a></li>
							<li><a href="/ranking.do">영화순위</a></li>
							<li><a href="/grade.do">평점/리뷰</a></li>
							<% if (id.equals("admin")) { %>
								<li><a href="/Admin_users.do">회원관리</a></li>
							<%} else {%>
								<li><a href="/myMovie.do">나의영화</a></li> 
							<% } %>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<!-- Sidebar -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_cgv"><a href="http://www.cgv.co.kr/" target="_blank">CGV <img src="/Resource/images/cgv.png"/></a></li>
			<li class="w3_megabox"><a href="http://www.megabox.co.kr/" target="_blank">MEGABOX <img src="/Resource/images/megabox.png"/></a></li>
			<li class="w3_lotte_cinema"><a href="http://www.lottecinema.co.kr/" target="_blank">LOTTE CINEMA <img src="/Resource/images/lotte.png"/></a></li>
		</ul>
  </nav>
</div>
<!--  //Sidebar  -->
<%@include file="/Resource/mobile.jsp" %><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>One Movies an Entertainment Category Flat Bootstrap Responsive Website Template | Single :: w3layouts</title>
<%@include file="/Resource/mobile.jsp" %>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->

</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="w3layouts_logo">
				<a href="index.html"><h1>One<span>Movies</span></h1></a>
			</div>
			<div class="w3_search">
				<form action="#" method="post">
					<input type="text" name="Search" placeholder="Search" required="">
					<input type="submit" value="Go">
				</form>
			</div>
			<div class="w3l_sign_in_register">
				<ul>
					<li><i class="fa fa-phone" aria-hidden="true"></i> (+000) 123 345 653</li>
					<li><a href="#" data-toggle="modal" data-target="#myModal">Login</a></li>
				</ul>
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
					Sign In & Sign Up
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div>
				<section>
					<div class="modal-body">
						<div class="w3_login_module">
							<div class="module form-module">
							  <div class="toggle"><i class="fa fa-times fa-pencil"></i>
								<div class="tooltip">Click Me</div>
							  </div>
							  <div class="form">
								<h3>Login to your account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="submit" value="Login">
								</form>
							  </div>
							  <div class="form">
								<h3>Create an account</h3>
								<form action="#" method="post">
								  <input type="text" name="Username" placeholder="Username" required="">
								  <input type="password" name="Password" placeholder="Password" required="">
								  <input type="email" name="Email" placeholder="Email Address" required="">
								  <input type="text" name="Phone" placeholder="Phone Number" required="">
								  <input type="submit" value="Register">
								</form>
							  </div>
							  <div class="cta"><a href="#">Forgot your password?</a></div>
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
							<li class="w3_home_act"><a href="index.html">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Genres <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Action</a></li>
												<li><a href="genres.html">Biography</a></li>
												<li><a href="genres.html">Crime</a></li>
												<li><a href="genres.html">Family</a></li>
												<li><a href="horror.html">Horror</a></li>
												<li><a href="genres.html">Romance</a></li>
												<li><a href="genres.html">Sports</a></li>
												<li><a href="genres.html">War</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Adventure</a></li>
												<li><a href="comedy.html">Comedy</a></li>
												<li><a href="genres.html">Documentary</a></li>
												<li><a href="genres.html">Fantasy</a></li>
												<li><a href="genres.html">Thriller</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Animation</a></li>
												<li><a href="genres.html">Costume</a></li>
												<li><a href="genres.html">Drama</a></li>
												<li><a href="genres.html">History</a></li>
												<li><a href="genres.html">Musical</a></li>
												<li><a href="genres.html">Psychological</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="series.html">tv - series</a></li>
							<li><a href="news.html">news</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Country <b class="caret"></b></a>
								<ul class="dropdown-menu multi-column columns-3">
									<li>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Asia</a></li>
												<li><a href="genres.html">France</a></li>
												<li><a href="genres.html">Taiwan</a></li>
												<li><a href="genres.html">United States</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">China</a></li>
												<li><a href="genres.html">HongCong</a></li>
												<li><a href="genres.html">Japan</a></li>
												<li><a href="genres.html">Thailand</a></li>
											</ul>
										</div>
										<div class="col-sm-4">
											<ul class="multi-column-dropdown">
												<li><a href="genres.html">Euro</a></li>
												<li><a href="genres.html">India</a></li>
												<li><a href="genres.html">Korea</a></li>
												<li><a href="genres.html">United Kingdom</a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</li>
							<li><a href="short-codes.html">Short Codes</a></li>
							<li><a href="list.html">A - z list</a></li>
						</ul>
					</nav>
				</div>
			</nav>	
		</div>
	</div>
<!-- //nav -->
<div class="general_social_icons">
	<nav class="social">
		<ul>
			<li class="w3_twitter"><a href="#">Twitter <i class="fa fa-twitter"></i></a></li>
			<li class="w3_facebook"><a href="#">Facebook <i class="fa fa-facebook"></i></a></li>
			<li class="w3_dribbble"><a href="#">Dribbble <i class="fa fa-dribbble"></i></a></li>
			<li class="w3_g_plus"><a href="#">Google+ <i class="fa fa-google-plus"></i></a></li>				  
		</ul>
  </nav>
</div>
<!-- faq-banner -->
	<div class="faq">
			<div class="container">
				<div class="agileits-news-top">
					<ol class="breadcrumb">
					  <li><a href="index.html">Home</a></li>
					   <li><a href="news.html">News</a></li>
					  <li class="active">Single</li>
					</ol>
				</div>
				<div class="agileinfo-news-top-grids">
					<div class="col-md-8 wthree-top-news-left">
						<div class="wthree-news-left">
							<div class="wthree-news-left-img">
								<img src="images/7.jpg" alt="" />
								<h4>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</h4>
								<div class="s-author">
									<p>Posted By <a href="#"><i class="fa fa-user" aria-hidden="true"></i> Admin</a> &nbsp;&nbsp; <i class="fa fa-calendar" aria-hidden="true"></i> June 2, 2016 &nbsp;&nbsp; <a href="#"><i class="fa fa-comments" aria-hidden="true"></i> Comments (10)</a></p>
								</div>
								<div id="fb-root"></div>
								<div class="news-shar-buttons">
									<ul>
										<li>
											<div class="fb-like" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-action="like" data-size="small" data-show-faces="false" data-share="false"></div>
											<script>(function(d, s, id) {
											  var js, fjs = d.getElementsByTagName(s)[0];
											  if (d.getElementById(id)) return;
											  js = d.createElement(s); js.id = id;
											  js.src = "//connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v2.7";
											  fjs.parentNode.insertBefore(js, fjs);
											}(document, 'script', 'facebook-jssdk'));</script>
										</li>
										<li>
											<div class="fb-share-button" data-href="https://www.facebook.com/w3layouts" data-layout="button_count" data-size="small" data-mobile-iframe="true"><a class="fb-xfbml-parse-ignore" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fwww.facebook.com%2Fw3layouts&amp;src=sdkpreparse">Share</a></div>
										</li>
										<li class="news-twitter">
											<a href="https://twitter.com/w3layouts" class="twitter-follow-button" data-show-count="false">Follow @w3layouts</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
										</li>
										<li>
											<a href="https://twitter.com/intent/tweet?screen_name=w3layouts" class="twitter-mention-button" data-show-count="false">Tweet to @w3layouts</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
										</li>
										<li>
											<!-- Place this tag where you want the +1 button to render. -->
											<div class="g-plusone" data-size="medium"></div>

											<!-- Place this tag after the last +1 button tag. -->
											<script type="text/javascript">
											  (function() {
												var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
												po.src = 'https://apis.google.com/js/platform.js';
												var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
											  })();
											</script>
										</li>
									</ul>
								</div>
								<div class="w3-agile-news-text">
									<p>Pellentesque vel urna accumsan, dictum sapien vitae, condimentum tellus. Nulla fermentum enim vitae commodo dapibus. Vivamus diam ligula, accumsan non malesuada et, interdum malesuada turpis. Donec posuere eros eget velit iaculis consequat. Vestibulum ante felis, congue a sapien pharetra, sodales congue magna. Curabitur id varius urna. Morbi finibus, velit sagittis fermentum venenatis, erat risus elementum nibh, at commodo lorem orci sed nulla. Pellentesque eu velit pulvinar, scelerisque lacus ut, semper dolor.
									<span>Donec semper, nibh et lacinia sollicitudin, nibh dui pellentesque elit, eu placerat leo felis nec nunc. Sed bibendum pretium metus eget euismod. Mauris id lacus lacus. Praesent faucibus nunc eget turpis tristique molestie. Duis dui diam, tristique eu gravida ut, congue eget felis. Proin sapien ligula, volutpat ut ultrices sit amet, dignissim quis urna. </span>
									Cras fermentum eu dolor in porttitor. Praesent sagittis sollicitudin scelerisque. Vivamus ac erat in ex consectetur imperdiet vel eget sapien. Duis viverra nisi id leo varius, vitae eleifend turpis vulputate. Mauris eget sagittis augue, ut efficitur mauris. Aenean risus nisi, faucibus eget condimentum at, porttitor vel felis. Aliquam eu augue ut tortor gravida iaculis in in orci. Quisque vehicula consectetur sagittis.
									</p>
								</div>
							</div>
						</div>
						<div class="wthree-related-news-left">
							<h4>Related News</h4>
							<div class="wthree-news-top-left">
								<div class="col-md-6 w3-agileits-news-left">
									<div class="col-sm-5 wthree-news-img">
										<a href="news-single.html"><img src="images/m1.jpg" alt="" /></a>
									</div>
									<div class="col-sm-7 wthree-news-info">
										<h5><a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
										<p>Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</p>
										<ul>
											<li><i class="fa fa-clock-o" aria-hidden="true"></i> 24/09/2016</li>
											<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="col-md-6 w3-agileits-news-left">
									<div class="col-sm-5 wthree-news-img">
										<a href="news-single.html"><img src="images/m2.jpg" alt="" /></a>
									</div>
									<div class="col-sm-7 wthree-news-info">
										<h5><a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></h5>
										<p>Sed tristique mattis fermentum. Etiam semper aliquet massa, id tempus massa mattis eget.</p>
										<ul>
											<li><i class="fa fa-clock-o" aria-hidden="true"></i> 24/09/2016</li>
											<li><i class="fa fa-eye" aria-hidden="true"></i> 2642</li>
										</ul>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="clearfix"> </div>
							</div>
						</div>
						<!-- agile-comments -->
						<div class="agile-news-comments">
							<div class="agile-news-comments-info">
								<h4>Comments</h4>
								<div class="fb-comments" data-href="https://w3layouts.com/" data-width="100%" data-numposts="5"></div>
							</div>
						</div>
						<!-- //agile-comments -->
						<div class="news-related">
							
						</div>
					</div>
					<div class="col-md-4 wthree-news-right">
						<!-- news-right-top -->
						<div class="news-right-top">
							<div class="wthree-news-right-heading">
								<h3>Updated News</h3>
							</div>
							<div class="wthree-news-right-top">
								<div class="news-grids-bottom">
									<!-- date -->
									<div id="design" class="date">
										<div id="cycler">   
											<div class="date-text">
												<a href="news-single.html">August 15,2016</a>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">July 08,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Nullam non turpis sit amet metus tristique egestas et et orci.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">February 15,2016</a>
												<p>Duis venenatis ac ipsum vel ultricies in placerat quam</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">January 15,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Pellentesque ullamcorper fringilla ipsum, ornare dapibus velit volutpat sit amet.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">September 24,2016</a>
												<p>In lobortis ipsum mi, ac imperdiet elit pellentesque at.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">August 15,2016</a>
												<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">July 08,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Nullam non turpis sit amet metus tristique egestas et et orci.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">February 15,2016</a>
												<p>Duis venenatis ac ipsum vel ultricies in placerat quam</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">January 15,2016 <span class="blinking"><img src="images/new.png" alt="" /></span></a>
												<p>Pellentesque ullamcorper fringilla ipsum, ornare dapibus velit volutpat sit amet.</p>
											</div>
											<div class="date-text">
												<a href="news-single.html">September 24,2016</a>
												<p>In lobortis ipsum mi, ac imperdiet elit pellentesque at.</p>
											</div>
										</div>
										<script>
										function blinker() {
											$('.blinking').fadeOut(500);
											$('.blinking').fadeIn(500);
										}
										setInterval(blinker, 1000);
										</script>
										<script>
											function cycle($item, $cycler){
												setTimeout(cycle, 2000, $item.next(), $cycler);
												
												$item.slideUp(1000,function(){
													$item.appendTo($cycler).show();        
												});
												}
											cycle($('#cycler div:first'),  $('#cycler'));
										</script>
									</div>
									<!-- //date -->
								</div>
							</div>
						</div>
						<!-- //news-right-top -->
						<!-- news-right-bottom -->
						<div class="news-right-bottom">
							<div class="wthree-news-right-heading">
								<h3>Top News</h3>
							</div>
							<div class="news-right-bottom-bg">
								<div class="news-grids-bottom">
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean rutrum ac nulla</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Vivamus nibh</a></li>
											</ul>
										</div>
									</div>
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Duis orci enim, rutrum vel sodales ut, tincidunt nec turpis.</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Cras pretium</a></li>
											</ul>
										</div>
									</div>
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean rutrum ac nulla</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 1h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Vivamus nibh</a></li>
											</ul>
										</div>
									</div>
									<div class="top-news-grid">
										<div class="top-news-grid-heading">
											<a href="news-single.html">Duis orci enim, rutrum vel sodales ut, tincidunt nec turpis.</a>
										</div>
										<div class="w3ls-news-t-grid top-t-grid">
											<ul>
												<li><a href="#"><i class="fa fa-clock-o"></i> 3h</a></li>
												<li><a href="#"><i class="fa fa-user"></i> Cras pretium</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- //news-right-bottom -->
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
				<div class="w3l-latest-movies-grids">
					<h4 class="latest-text w3_latest_text">Latest Movies</h4>
						<div class="container">
								<!-- /latest-movies -->
									<div class="browse-inner">
								   <div class="col-md-2 w3l-movie-gride-agile">
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m7.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Light B/t Oceans</a></h6>							
											</div>
											<div class="mid-2">
											
												<p>2016</p>
												<div class="block-stars">
													<ul class="w3l-ratings">
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															  
											
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
												
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>	
										</div>
									   <div class="col-md-2 w3l-movie-gride-agile">
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m8.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">The BFG</a></h6>							
											</div>
											<div class="mid-2">
											
												<p>2016</p>
												 <div class="block-stars">
													<ul class="w3l-ratings">
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															  
											
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
												
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>	
										</div>
										<div class="col-md-2 w3l-movie-gride-agile">
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m9.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Central Intelligence</a></h6>							
											</div>
											<div class="mid-2">
											
												<p>2016</p>
												 <div class="block-stars">
													<ul class="w3l-ratings">
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															<li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															  
											
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
												
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>	
										</div>
										<div class="col-md-2 w3l-movie-gride-agile">
											  <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m10.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Don't Think Twice</a></h6>							
											</div>
											<div class="mid-2">
											
												<p>2016</p>
												 <div class="block-stars">
													<ul class="w3l-ratings">
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															  <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															  
											
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
												
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>	
										</div>
											<div class="col-md-2 w3l-movie-gride-agile">
											<a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m11.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">X-Men</a></h6>							
											</div>
											<div class="mid-2">
											
												<p>2016</p>
												 <div class="block-stars">
													<ul class="w3l-ratings">
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															  
											
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
												
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>	
										</div>
										<div class="col-md-2 w3l-movie-gride-agile">
											 <a href="single.html" class="hvr-shutter-out-horizontal"><img src="images/m12.jpg" title="album-name" alt=" " />
											 <div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
										</a>
										  <div class="mid-1">
											<div class="w3l-movie-text">
												<h6><a href="single.html">Greater</a></h6>							
											</div>
											<div class="mid-2">
											
												<p>2016</p>
												<div class="block-stars">
													<ul class="w3l-ratings">
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-half-o" aria-hidden="true"></i></a></li>
															 <li><a href="#"><i class="fa fa-star-o" aria-hidden="true"></i></a></li>
															  
											
													</ul>
												</div>
												<div class="clearfix"></div>
											</div>
												
										</div>
										<div class="ribben">
											<p>NEW</p>
										</div>	
										</div>

												<div class="clearfix"> </div>
									</div>
								<!-- //latest-movies -->
								 
						   </div>
			</div>
	</div>
<!-- //faq-banner -->
<!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					<div class="w3ls_footer_grid_left1">
						<h2>Subscribe to us</h2>
						<div class="w3ls_footer_grid_left1_pos">
							<form action="#" method="post">
								<input type="email" name="email" placeholder="Your email..." required="">
								<input type="submit" value="Send">
							</form>
						</div>
					</div>
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="index.html"><h2>One<span>Movies</span></h2></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>&copy; 2016 One Movies. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
				<ul>
					<li>
						<a href="genres.html">Movies</a>
					</li>
					<li>
						<a href="faq.html">FAQ</a>
					</li>
					<li>
						<a href="horror.html">Action</a>
					</li>
					<li>
						<a href="genres.html">Adventure</a>
					</li>
					<li>
						<a href="comedy.html">Comedy</a>
					</li>
					<li>
						<a href="icons.html">Icons</a>
					</li>
					<li>
						<a href="contact.html">Contact Us</a>
					</li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>

</html>
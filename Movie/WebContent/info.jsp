<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Think! Movie</title>

<%@include file="/Resource/mobile.jsp" %>
</head>
<body>
<%@include file="/Resource/nav.jsp" %>
<!-- faq-banner -->
<div class="faq">
		<!-- 영화 파인더 -->
		<h4 class="latest-text w3_faq_latest_text w3_latest_text">영화 파인더</h4>
		<div class="container">
			<div class="agileits-news-top">
				<ol class="breadcrumb">
					<li><a href="index.do">Home</a></li>
					<li class="active">영화정보</li>
				</ol>
			</div>
		<%@include file="/Resource/moviefinder.jsp" %>
		</div>
		<!-- 상영영화 -->
		<h4 class="latest-text w3_latest_text">현재 상영영화</h4>
		<div class="container">
			<div class="bs-example bs-example-tabs" role="tabpanel"
				data-example-id="togglable-tabs">
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home"
						aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies">
							<div class="col-md-2 w3l-movie-gride-agile">
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m15.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">God’s Compass</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m2.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">Bad Moms</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m5.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">Jason Bourne</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m16.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">Rezort</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m17.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">Peter</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m18.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">ISRA 88</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m1.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">War Dogs</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m14.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">The Other Side</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m19.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">Civil War</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m20.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">The Secret Life of Pets</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m21.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">The Jungle Book</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-o"
														aria-hidden="true"></i></a></li>
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
								<a href="single.do" class="hvr-shutter-out-horizontal"><img
									src="/Resource/images/m22.jpg" title="album-name"
									class="img-responsive" alt=" " />
									<div class="w3l-action-icon">
										<i class="fa fa-play-circle" aria-hidden="true"></i>
									</div> </a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6>
											<a href="single.do">Assassin's Creed 3</a>
										</h6>
									</div>
									<div class="mid-2 agile_mid_2_home">
										<p>2016</p>
										<div class="block-stars">
											<ul class="w3l-ratings">
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star"
														aria-hidden="true"></i></a></li>
												<li><a href="#"><i class="fa fa-star-half-o"
														aria-hidden="true"></i></a></li>
											</ul>
										</div>
										<div class="clearfix"></div>
									</div>
								</div>
								<div class="ribben">
									<p>NEW</p>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
					<!--? 뭐하는건지 아직 모름  -->
					<div role="tabpanel" class="tab-pane fade" id="profile"
						aria-labelledby="profile-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m22.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Assassin's Creed 3</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m2.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Bad Moms</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m9.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Central Intelligence</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="rating"
						aria-labelledby="rating-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m7.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Light B/t Oceans</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m11.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">X-Men</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m8.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">The BFG</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m17.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Peter</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div role="tabpanel" class="tab-pane fade" id="imdb"
						aria-labelledby="imdb-tab">
						<div class="col-md-2 w3l-movie-gride-agile">
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m22.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Assassin's Creed 3</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m2.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Bad Moms</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m9.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Central Intelligence</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m10.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Don't Think Twice</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
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
							<a href="single.do" class="hvr-shutter-out-horizontal"><img
								src="/Resource/images/m23.jpg" title="album-name"
								class="img-responsive" alt=" " />
								<div class="w3l-action-icon">
									<i class="fa fa-play-circle" aria-hidden="true"></i>
								</div> </a>
							<div class="mid-1 agileits_w3layouts_mid_1_home">
								<div class="w3l-movie-text">
									<h6>
										<a href="single.do">Dead Island 2</a>
									</h6>
								</div>
								<div class="mid-2 agile_mid_2_home">
									<p>2016</p>
									<div class="block-stars">
										<ul class="w3l-ratings">
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-half-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-star-o"
													aria-hidden="true"></i></a></li>
										</ul>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
							<div class="ribben">
								<p>NEW</p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
		<!--  영화정보-->
		<h4 class="latest-text w3_latest_text">영화정보</h4>
		<div class="container">
			<div class="agileits-single-top">
				<div class="breadcrumb">
				<span>
					<select name="sido1" id="sido1">
					<option>1</option>
					<option>2</option>
					<option>3</option>
					</select>
					</span>
				<span style="float: right; border-width: 1px;/* border: 1px solid #333333; */float: right;padding: 3px;">관객순 |</span>
				<span style="float: right; border-width: 1px;/* border: 1px solid #333333; */float: right;padding: 3px;">평점순 |</span>
				<span style="float: right; border-width: 1px;/* border: 1px solid #333333; */float: right;padding: 3px;">| 개봉순 |</span>
				</div>
			</div>
			<%@include file="/Resource/DailyBoxOffice.jsp" %>
		</div>
	</div>
<!-- //faq-banner -->
<%@include file="/Resource/footer.jsp" %>
</body>
</html>
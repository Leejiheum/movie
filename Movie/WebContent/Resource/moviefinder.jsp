<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 영화검색 -->
<div id="cgvwrap">
	<div id="contaniner" class="">
		<!-- 벽돌 배경이미지 사용 시 class="bg-bricks" 적용 / 배경이미지가 없을 경우 class 삭제  -->
		<div id="contents" class="">
			<div class="sect-common" style="padding-right: 15px;">
				<div class="sect-finder">
					<form id="frmMovieSearch" novalidate="novalidate">
						<fieldset>
							<!-- checkbox ID 값과 label for값을 똑같이 한다 -->
							<table cellpadding="0" cellspacing=""
								summary="무비파인터 영화이름, 장르, 제작국가, 관람등급, 제작년도 를 통해 검색할수 있습니다.">
								<colgroup>
									<col class="finder-col01">
									<col>
								</colgroup>
								<tbody>
									<tr>
										<th class="searchtype" scope="row">영화검색</th>
										<td><label class="hidden" for="keyword_type">영화검색
												목록</label> <select title="영화검색 목록" id="keyword_type">
												<option value="0" selected="">전체</option>
												<option value="1">영화제목</option>
												<option value="2">주연배우</option>
												<option value="3">감독</option>
										</select> <input type="text" title="영화검색 키워드입력" id="keyword" minlength="2" maxlength="20" style="width: 410px; height: 28px" placeholder="키워드를 입력해 주세요" value=""></td>
									</tr>
									<tr>
										<th class="genretype" scope="row">장르</th>
										<td>
											<ul>
												<li><input type="checkbox" id="all_genre"
													name="all-genre" value="all"><label
													for="all_genre">전체</label></li>
												<li class="collage"><input type="checkbox"name="indi_genre" id="is_indi" value="1">
												<label for="is_indi">아트하우스</label></li>
												<li><input type="checkbox" id="genre226" name="genre"
													value="226"><label for="genre226">가족</label></li>
													<li><input type="checkbox" id="genre217" name="genre"
													value="217"><label for="genre217">공포/호러</label></li>
													<li><input type="checkbox" id="genre723" name="genre"
													value="723"><label for="genre723">드라마</label></li>
													<li><input type="checkbox" id="genre721" name="genre"
													value="721"><label for="genre721">SF</label></li>
													<li><input type="checkbox" id="genre1228" name="genre"
													value="1228"><label for="genre1228">멜로/로맨스</label></li>
													<li><input type="checkbox" id="genre732" name="genre"
													value="732"><label for="genre732">코미디</label></li>
													<li><input type="checkbox" id="genre727" name="genre"
													value="727"><label for="genre727">애니메이션</label></li>
													<li><input type="checkbox" id="genre228" name="genre"
													value="228"><label for="genre228">느와르</label></li>
													<li><input type="checkbox" id="genre223" name="genre"
													value="223"><label for="genre223">단편</label></li>
													<li><input type="checkbox" id="genre722" name="genre"
													value="722"><label for="genre722">다큐멘터리</label></li>
													<li><input type="checkbox" id="genre1883" name="genre"
													value="1883"><label for="genre1883">로드무비</label></li>
													<li><input type="checkbox" id="genre724" name="genre"
													value="724"><label for="genre724">무협</label></li>
													<li><input type="checkbox" id="genre218" name="genre"
													value="218"><label for="genre218">뮤지컬</label></li>
													<li><input type="checkbox" id="genre1884" name="genre"
													value="1884"><label for="genre1884">뮤직</label></li>
													<li><input type="checkbox" id="genre219" name="genre"
													value="219"><label for="genre219">미스터리</label></li>
													<li><input type="checkbox" id="genre222" name="genre"
													value="222"><label for="genre222">범죄</label></li>
													<li><input type="checkbox" id="genre1885" name="genre"
													value="1885"><label for="genre1885">옴니버스</label></li>
													<li><input type="checkbox" id="genre1886" name="genre"
													value="1886"><label for="genre1886">서부</label></li>
													<li><input type="checkbox" id="genre725" name="genre"
													value="725"><label for="genre725">스릴러</label></li>
													<li><input type="checkbox" id="genre1887" name="genre"
													value="1887"><label for="genre1887">스포츠</label></li>
													<li><input type="checkbox" id="genre726" name="genre"
													value="726"><label for="genre726">시대극/사극</label></li>
													<li><input type="checkbox" id="genre225" name="genre"
													value="225"><label for="genre225">아동</label></li>
													<li><input type="checkbox" id="genre224" name="genre"
													value="224"><label for="genre224">액션</label></li>
													<li><input type="checkbox" id="genre728" name="genre"
													value="728"><label for="genre728">어드벤처</label></li>
													<li><input type="checkbox" id="genre1888" name="genre"
													value="1888"><label for="genre1888">역사</label></li>
													<li><input type="checkbox" id="genre1889" name="genre"
													value="1889"><label for="genre1889">전기</label></li>
													<li><input type="checkbox" id="genre731" name="genre"
													value="731"><label for="genre731">전쟁</label></li>
													<li><input type="checkbox" id="genre1890" name="genre"
													value="1890"><label for="genre1890">종교</label></li>
													<li><input type="checkbox" id="genre1891" name="genre"
													value="1891"><label for="genre1891">재난</label></li>
													<li><input type="checkbox" id="genre1892" name="genre"
													value="1892"><label for="genre1892">청춘영화</label></li>
													<li><input type="checkbox" id="genre1893" name="genre"
													value="1893"><label for="genre1893">퀴어</label></li>
													<li><input type="checkbox" id="genre227" name="genre"
													value="227"><label for="genre227">환타지</label></li>
													<li><input type="checkbox" id="genre1894" name="genre"
													value="1894"><label for="genre1894">학원물</label></li>
													<li><input type="checkbox" id="genre729" name="genre"
													value="729"><label for="genre729">에로</label></li>
													<li><input type="checkbox" id="genre1895" name="genre"
													value="1895"><label for="genre1895">없음</label></li>
												</ul>
										</td>
										</tr>
									<tr>
										<th class="maketype" scope="row">제작국가</th>
										<td>
											<ul>
												<li><input type="checkbox" name="all-national-code"
													id="all_national_code"><label
													for="all_national_code">전체</label></li>
													<li><input type="checkbox" id="national_code_164"
													name="national-code" value="164"><label
													for="national_code_164">한국</label></li>
													<li><input type="checkbox" id="national_code_102"
													name="national-code" value="102"><label
													for="national_code_102">미국</label></li>

													<li><input type="checkbox" id="national_code_141"
														name="national-code" value="141"><label
														for="national_code_141">일본</label></li>

													<li><input type="checkbox" id="national_code_143"
														name="national-code" value="143"><label
														for="national_code_143">중국</label></li>

													<li><input type="checkbox" id="national_code_167"
														name="national-code" value="167"><label
														for="national_code_167">홍콩</label></li>

													<li><input type="checkbox" id="national_code_161"
														name="national-code" value="161"><label
														for="national_code_161">프랑스</label></li>

													<li><input type="checkbox" id="national_code_128"
														name="national-code" value="128"><label
														for="national_code_128">영국</label></li>

													<li><input type="checkbox" id="national_code_93"
														name="national-code" value="93"><label
														for="national_code_93">독일</label></li>

													<li><input type="checkbox" id="national_code_139"
														name="national-code" value="139"><label
														for="national_code_139">인도</label></li>

													<li><input type="checkbox" id="national_code_1000"
														name="national-code" value="1000"><label
														for="national_code_1000">기타</label></li>

												</ul>
											</td>
										</tr>
										<tr>
											<th class="gradetype" scope="row">관람등급</th>
											<td>
												<ul>
													<li><input type="checkbox" id="all_grade"
														name="all-grade" value="233"><label
														for="all_grade">전체</label></li>

													<li><input type="checkbox" id="grade233" name="grade"
														value="233"><label for="grade233">전체관람가</label></li>

													<li><input type="checkbox" id="grade230" name="grade"
														value="230"><label for="grade230">12세 관람가</label></li>

													<li><input type="checkbox" id="grade231" name="grade"
														value="231"><label for="grade231">15세 관람가</label></li>

													<li><input type="checkbox" id="grade232" name="grade"
														value="232"><label for="grade232">청소년 관람불가</label></li>

													<li><input type="checkbox" id="grade919" name="grade"
														value="919"><label for="grade919">미정</label></li>

												</ul>
											</td>
										</tr>
										<tr>
											<th class="yeartype" scope="row"><label for="amount1">제작년도</label></th>
											<td>
												<div
													class="slider-range ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
													id="slider-range" aria-disabled="false">
													<ul>
														<li></li>
														<li>1960</li>
														<li>1970</li>
														<li>1980</li>
														<li>1990</li>
														<li>2000</li>
														<li>2010</li>
														<li>2020</li>
														<li></li>
													</ul>
													<a class="ui-slider-handle ui-state-default ui-corner-all"
														href="#" title="좌,우 키보드 조절가능" style="left: 12.5%;">시작년도</a><a
														class="ui-slider-handle ui-state-default ui-corner-all"
														href="#" title="좌,우 키보드 조절가능" style="left: 87.5%;">종료년도</a>
												</div> <input type="text" id="year_start" style="width: 118px;"
												value="1960" maxlength="4" placeholder="시작년도 입력해주세요."
												title="시작년도 입력해주세요." number="number"> - <input
												type="text" id="year_end" style="width: 118px;" value="2020"
												maxlength="4" placeholder="시작년도 입력해주세요."
												title="시작년도 입력해주세요." number="number"> 년
											</td>
										</tr>
									</tbody>
								</table>
								<div class="wrap-submit">
									<button type="submit" class="round inred" id="btn_submit">
										<span>검색</span>
									</button>
									<button type="reset" class="round red" id="btn_reset">
										<span>초기화</span>
									</button>
								</div>
							</fieldset>
						</form>
					</div>
				</div>

				<script type="text/javascript">
					//<![CDATA[
					window.userFavoriteMovie = $.parseJSON('[]');

					(function($) {
						$(function() {

							$('.sect-sorting button').click(function() {
								var val = $('#order_type').val();
								if (val) {
									location.href = "/movies/?lt=1&ot=" + val;
								}
							});
							//[2015-12-15] 무비 파인더 페이지 인 경우 정렬 버튼 처리. : add_mwpark
							$("#sect-finder button")
									.click(
											function() {
												var val = $('#order_type')
														.val();
												if (val) {
													location.href = "/movies/finder.aspx?lt=1&ot="
															+ val;
												}
											});

							$('#chk_nowshow')
									.click(
											function() {
												if ($(
														"input:checkbox[id='chk_nowshow']")
														.is(":checked")) {
													location.href = "/movies/?lt=1&ft=1";
												} else {
													location.href = "/movies/?lt=1&ft=0";
												}
											});

							//[2015-12-15] 무비 파인더 페이지 인 경우 현재 상영작만 보기 체크 박스 처리. : add_mwpark
							$("#chk_finder_nowshow")
									.on(
											"click",
											function() {
												if ($(
														"input:checkbox[id='chk_nowshow']")
														.is(":checked")) {
													location.href = "/movies/finder.aspx?lt=1&ft=1";
												} else {
													location.href = "/movies/finder.aspx?lt=1&ft=0";
												}
											});

						});

					})(jQuery);
					//]]>
				</script>

				<!-- 실컨텐츠 끝 -->
				<script type="text/javascript">
					//<![CDATA[
					window.userFavoriteMovie = $.parseJSON('[]');
					(function($) {
						$(function() {

							$('#slider').visualMotion({
								limit : 1,
								duration : 500,
								term : 500,
								autoStart : true
							});

							$('#all_genre').checkboxGroup({
								parent : function() {
									return this.closest('ul');
								},
								selector : 'input[name=genre]'
							});
							$('#all_national_code').checkboxGroup({
								parent : function() {
									return this.closest('ul');
								},
								selector : 'input[name=national-code]'
							});

							$('#all_grade').checkboxGroup({
								parent : function() {
									return this.closest('ul');
								},
								selector : 'input[name=grade]'
							});

							$('#slider-range').rangeSlider({

								'start' : $("#year_start"),
								'end' : $("#year_end")

							});

							/* 충스크립트 */
							function rangehandle() {
								$('#slider-range').find('.ui-slider-handle')
										.eq(0).attr('title', '좌,우 키보드 조절가능')
										.text('시작년도').next().attr('title',
												'좌,우 키보드 조절가능').text('종료년도');
							}
							;
							rangehandle();

							//default check/////
							$('#all_genre').click();
							$('#all_national_code').click();
							$('#all_grade').click();
							///////////////////////////////////

							$('#btn_reset').on('click', function() {
								location = "finder.aspx";
								return false;
							});

							// novalidate version.
							var $frm = $('#frmMovieSearch');
							$frm.validate({
								submitHandler : function(form) {

									var $obj_year_start = $("#year_start");
									if (isNaN($obj_year_start.val())) {
										alert('숫자만 입력가능합니다.');
										$obj_year_start.val(1960);
										$obj_year_start.focus();
										return false;
									}

									if ($obj_year_start.val() < 1950
											|| $obj_year_start.val() > 2020) {
										alert('입력가능한 범위가 아닙니다.');
										$obj_year_start.val(1960);
										$obj_year_start.focus();
										return false;
									}

									var $obj_year_end = $("#year_end");
									if (isNaN($obj_year_end.val())) {
										alert('숫자만 입력가능합니다.');
										$obj_year_start.val(2020);
										$obj_year_start.focus();
										return false;
									}

									if ($obj_year_end.val() < 1950
											|| $obj_year_end.val() > 2020) {
										alert('입력가능한 범위가 아닙니다.');
										$obj_year_start.val(2020);
										$obj_year_start.focus();
										return false;
									}

									searchMovie();
								}
							});

							// page처리 시 파라미터 유지
							var searchParam = "";
							var searchURL = "finder.aspx?";
							function searchMovie() {
								//기본변수
								var genre = "", national = "", grade = "";

								//장르체크
								if ($('#all_genre').is(":checked")
										|| $(":checkbox[name='genre']:checked").length == 0) {
									genre = "";
								} else {
									genre = "&genre="
											+ $(
													":checkbox[name='genre']:checked")
													.map(function() {
														return this.value;
													}).get();
								}

								//제작국가
								if ($('#all_national_code').is(":checked")
										|| $(":checkbox[name='national-code']:checked").length == 0) {
									national = "";
								} else {
									national = "&national="
											+ $(
													":checkbox[name='national-code']:checked")
													.map(function() {
														return this.value;
													}).get();
								}

								//등급
								if ($('#all_grade').is(":checked")
										|| $(":checkbox[name='grade']:checked").length == 0) {
									grade = "";
								} else {
									grade = "&grade="
											+ $(
													":checkbox[name='grade']:checked")
													.map(function() {
														return this.value;
													}).get();
								}

								var keyword = $("#keyword").val().trim();

								searchParam = "s=true"
										+ (keyword == "" ? ""
												: "&kt="
														+ $(
																"#keyword_type option:selected")
																.val()
														+ "&keyword="
														+ encodeURI(keyword))
										+ genre
										+ ($('#is_indi').is(":checked") ? "&indi=true"
												: "") + national + grade
										+ "&sdate="
										+ escape($("#year_start").val())
										+ "&edate="
										+ escape($("#year_end").val());

								goSearch(1);
							}

							function goSearch(page) {

								var addParam = "";
								if (page > 1) {
									addParam = "&page=" + page;
								}

								location = searchURL + searchParam + addParam;
							}

						});
					})(jQuery);
					//]]>
				</script>

				<script type="text/javascript">
					//_$tag____

					(function($) {
						$(function() {

							$(".btn-more-fontbold").click(function() {
								$(this).remove();
								app.movie().getList({
									listType : '1',
									orderType : '1',
									filterType : '1'
								}, setMovieListBuild);
							});

							function setMovieListBuild(result) {

								$("#movie_more_container").empty();
								$("#movie_more_container").show();

								for (var i = 0; i < result.List.length; i++) {
									var str = result.List[i].JointCount;
									result.List[i].JointCount = str.split(",")
											.join("");
								}
								$("#temp_movie").tmpl(result.List).appendTo(
										"#movie_more_container");
								window.userFavoriteMovie = $
										.parseJSON(result.FavMovieIdx);

								//$('.point').point();        //평점 별 표시
								$('.btn-like').like(); //wish list동작 처리
								$('span.screentype a').specialTheater(); //특별관 링크
							}
						});
					})(jQuery);
					//_$t
				</script>
			</div>
		</div>
	</div>
<!-- //영화검색 -->
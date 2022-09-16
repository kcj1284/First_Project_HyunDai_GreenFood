<!--작성자 김찬중-->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Mangerial_Objective</title>
	<link href="../css/EM_style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<%@ include file="/Inc/Header.jspf"%>
	<div class="container_area" id="contents">
		<div class="sub_layout esg_area">
			<div class="sub_visual">
				<ul class="hierarchy_list">
					<li class="icon_home"><img src="../img/icon/icon_home.png" alt="Home" /></li>
					<li class="depth_2">
						<a href="#" class="m_hierarchy">ESG 경영</a>
						<ul class="hierarchy_depth" style="display: none;">
							<li><a href="#">사회공헌(S)</a></li>
						</ul>
					</li>
					<li class="depth_3"><a href="#" class="t_block_hierarchy">사회공헌(S)</a>
						<ul class="hierarchy_depth">
							<li><a href="#">경영목표</a></li>
							<li><a href="#">환경경영(E)</a></li>
							<li class="on"><a href="#">사회공헌(S)</a></li>
							<li><a href="#">지배구조(G)</a></li>
							<li><a href="#">안전보건</a></li>
							<li><a href="#">상생경영</a></li>
							<li><a href="#">윤리경영</a></li>
						</ul>
					</li>
				</ul>
				<div class="title_description">
					<h2 class="title_sub">ESG 경영</h2>
					<p class="sub_description">
						현대그린푸드는 ‘건강’과 ‘지속가능성’ 이라는 비전을 위해
						<br>다양한 분야에서 사회적 가치를 창출하는 것을 목표로 합니다.
					</p>
				</div>
			</div>

			<div class="category">
				<ul>
					<li><a href="Managerial_Objective.jsp">경영목표</a> </li>
					<li><a href="NetZero_2030.jsp">환경경영(E)</a></li>
					<li class="on"><a href="CRS.jsp">사회공헌(S)</a> </li>
					<li><a href="Board_Policy.jsp">지배구조(G)</a> </li>
					<li><a href="Safety_Health.jsp">안전보건</a> </li>
					<li><a href="Win_Management.jsp">상생경영</a> </li>
					<li><a href="Group_Ethical_Management.jsp">윤리경영</a> </li>
				</ul>
			</div>
			<div class="sub_contents">
				<ul class="tab_list">
					<li class="on"><a href="#;">CSR</a></li>
					<li><a href="Employee_Diversity.jsp">임직원 다양성</a></li>
				</ul>

				<section class="esg_section cont3_1_1">
					<h3 class="esg_title">사회공헌활동</h3>
					<div class="esg_text">
						현대그린푸드는 기업의 사회적 책임의 수행하기 위해 노력하고,
						<br class="pc">사회공헌활동을 통해 지역사회, 임직원, 고객에게 나눔과 사랑을 실천합니다.
					</div>

					<div class="esg_box num1 hPara">
						<div class="visual">
							<div class="visual_item">
								<div class="visual_tit">사회복지부문</div>
								<div class="visual_txt">
									현대그린푸드는 사회 전체의
									<br>균형있는 발전을 추구합니다.
									<br>
									<br>성남시 거주 당뇨질환 독거노인 대상
									<br>그리팅 저당식단 지원, 보훈가족 지원,
									<br>사랑의 김장나눔 등
									<br>지속적인 나눔 활동에 앞장서고 있습니다.
								</div>
							</div>
						</div>

						<ul>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_01.jpg" alt=""></div>
								<div class="box_tit">성남시 독거노인 대상 식단 제공</div>
								<div class="box_txt">
									2020년 3월부터 성남시 독거노인지원센터와 은행1동복지회관과 협력하여 성남시에 거주하시는
									<br class="pc">당뇨 질환을 가진 독거노인 170여 분을 대상으로 매주 4끼의 그리팅 저당식단을 제공하고 있습니다.
									<div class="box_txt2"><span>2021년 수혜인원 170명 / 기부금 2억 원</span></div>
								</div>
							</li>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_02.jpg" alt=""></div>
								<div class="box_tit">보훈대상가족 지원</div>
								<div class="box_txt">
									국가보훈처 보훈대상가족을 위해 매년 설맞이 명절선물을 전달하고 있으며,
									<br class="pc">복날맞이 보양식 지원 등 현대그린푸드의 건강식 그리팅을 통한 영양지원을 실천하고 있습니다.
									<div class="box_txt2"><span>2021년 국가보훈처장 감사패 수여</span></div>
								</div>
							</li>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_03.jpg" alt=""></div>
								<div class="box_tit">사랑의 김장나눔 진행</div>
								<div class="box_txt">
									현대그린푸드는 매년 사랑의 김장나눔을 실시하고 있습니다. 2021년에는 저소득 노인가정에게 김치 4,000
									<br class="pc">포기를 전달하였으며 앞으로도 더 많은 관내 어르신들께 따뜻한 나눔이 전달될 수 있도록 노력하겠습니다.
									<div class="box_txt2"><span>2021년 관내 저소득 노인가정 1,000가구에 전달</span></div>
								</div>
							</li>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_04.jpg" alt=""></div>
								<div class="box_tit">노인복지관 대상 공기청정기 지원</div>
								<div class="box_txt">
									노인분들의 건강 관리를 위하여 전국의 노인복지관에 공기청정기를 보급하고 있습니다.
									<div class="box_txt2"><span>2021년 노인복지관 197개소 전달</span></div>
								</div>
							</li>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_05.jpg" alt=""></div>
								<div class="box_tit">사회적 기업 판로지원·제품 구매 지원</div>
								<div class="box_txt">
									영세한 규모, 경쟁력 부족, 재정적 어려움을 겪는 사회적기업에 제품 판로 확대 및 교육 지원을
									<br class="pc">제공하고 있습니다.
									<br>발달 장애인이 만든 제품 구입
									<br>· 베어베터-쿠키/커피 &nbsp; &nbsp; · 에이스푸드-계육
								</div>
							</li>
						</ul>
					</div>

					<div class="esg_box num2">
						<div class="visual">
							<div class="visual_item">
								<div class="visual_tit">환경부문</div>
								<div class="visual_txt">
									현대그린푸드는 탄소중립 숲 조성,
									<br>생물종 다양성 보전사업 등에 참여하여
									<br>환경부문에서도 사회공헌활동에
									<br>앞장서고 있습니다.
								</div>
							</div>
						</div>

						<ul>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_06.jpg" alt=""></div>
								<div class="box_tit">탄소중립 숲 조성</div>
								<div class="box_txt">
									현대백화점 그룹은 2021년부터 산림청과 연계하여 CSR 차원 탄소중립의 숲 조성 사업을
									<br class="pc">추진하고 있습니다. 탄소중립 숲 조성을 통해 온실가스 배출량을 제로화하여 탄소중립 실천에
									<br class="pc">적극 참여하고자 합니다.
									<div class="box_txt2"><span>2027년까지 소나무 약 3,700그루 식재 예정</span></div>
								</div>
							</li>
							<li>
								<div class="box_img"><img src="../img/ESG/crs_07.jpg" alt=""></div>
								<div class="box_tit">생물종 다양성 보전사업 참여</div>
								<div class="box_txt">
									현대그린푸드는 낙동강유역환경청의 생태계 교란 생물 뉴트리아 퇴치에 필요한 식재(미끼)를
									<br class="pc">제공하여 유해 외래종(뉴트리아) 퇴치를 위한 토종 생물 보전 및 보호 활동에 참여하고 있습니다.
									<div class="box_txt2"><span>과채류 및 영남지역 전처리 센터 가공 부산물 공급</span></div>
								</div>
							</li>
						</ul>
					</div>
				</section>

				<section class="esg_section cont3_1_2">
					<h3 class="esg_title">사회공헌 활동 운영성과</h3>
					<div class="esg_text">
						현대그린푸드는 사회공헌 활동에 매년 영업이익 1%이상의 기부금을 집행하고 있으며
						<br class="pc">매년 목표액 대비 100%이상 달성률을 선보이고 있습니다.
					</div>

					<div class="director_area">
						<span class="boss_director">단위: 백만원</span>
						<div>
							<table class="list_tb">
								<colgroup>
									<col width="20%">
									<col width="">
									<col width="">
									<col width="">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">구 분</th>
										<th scope="col">19년</th>
										<th scope="col">20년</th>
										<th scope="col">21년</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">목표액</td>
										<td>765</td>
										<td>805</td>
										<td>520</td>
									</tr>
									<tr>
										<td class="first">집행실적</td>
										<td>
											775
											<p style="font-size: 90%;">(영업이익 1.1%)</p>
										</td>
										<td>
											1,050
											<p style="font-size: 90%;">(영업이익 1.2%)</p>
										</td>
										<td>
											648
											<p style="font-size: 90%;">(영업이익 1.2%)</p>
										</td>
									</tr>
									<tr>
										<td class="first">달성률</td>
										<td>101%</td>
										<td>130%</td>
										<td>125%</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>

				<section class="esg_section cont3_1_3">
					<h3 class="esg_title">임직원 매칭그랜트 기부활동</h3>
					<div class="esg_text">
						현대그린푸드는 자발적인 기부활동인 ‘매칭그랜트’ 프로그램을 통해
						<br class="pc">다양한 사회공헌 활동에 활용하고 있습니다.
					</div>

					<div class="director_area">
						<span class="boss_director">단위: 천원, 명</span>
						<div>
							<table class="list_tb">
								<colgroup>
									<col width="20%">
									<col width="">
									<col width="">
									<col width="">
									<col width="">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">구 분</th>
										<th scope="col">19년</th>
										<th scope="col">20년</th>
										<th scope="col">21년</th>
										<th scope="col">22년(예정)</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">임직원 기부금 총액</td>
										<td>40,496</td>
										<td>43,651</td>
										<td>47,196</td>
										<td>52,822</td>
									</tr>
									<tr>
										<td class="first">참여 임직원 수</td>
										<td>658</td>
										<td>749</td>
										<td>774</td>
										<td>785</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>

				<section class="esg_section cont3_1_4">
					<h3 class="esg_title">지역사회 사회공헌활동 성과 공개</h3>
					<div class="esg_text">
						현대그린푸드는 매년 사회공헌기금의 일부를 지역사회 환원을 위하여 사용하고 있으며,
						<br class="pc">전체 기금의 30% 이상을 환원 목표로 하고 있습니다. 또한, 매년 지역사회 CSR활동에 대하여 재무적/비재무적 가치를
						<br class="pc">측정하여 관리하고 있으며, 우리의 사업의 성과가 지역 상생에 힘이 되고자 노력합니다.
					</div>

					<div class="director_area">
						<div>
							<table class="list_tb">
								<colgroup>
									<col width="20%">
									<col width="">
									<col width="">
									<col width="">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">구 분</th>
										<th scope="col">19년</th>
										<th scope="col">20년</th>
										<th scope="col">21년</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first">지역사회 환원 목표액</td>
										<td>153</td>
										<td>242</td>
										<td>156</td>
									</tr>
									<tr>
										<td class="first">지역사회 환원액</td>
										<td>153</td>
										<td>251</td>
										<td>286</td>
									</tr>
									<tr>
										<td class="first">달성율</td>
										<td>100%</td>
										<td>104%</td>
										<td>183%</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>

				<section class="esg_section cont3_1_5">
					<h3 class="esg_title">지역사회 상생 활동</h3>

					<div class="director_area">
						<div>
							<table class="list_tb">
								<colgroup>
									<col width="10%">
									<col width="">
									<col width="">
									<col width="">
								</colgroup>
								<thead>
									<tr>
										<th scope="col" class="first">지역구분</th>
										<th scope="col">사업내용</th>
										<th scope="col">재무적 가치</th>
										<th scope="col">비재무적 가치</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="first" rowspan="2">성남</td>
										<td>
											독거노인 저당식단<br>지원사업
										</td>
										<td>
											<ol class="director_division_list">
												<li>- 주요 식재, 물류 운영비용 : 210백만원</li>
											</ol>
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 성남지역 독거노인 167명 매주 4끼 <br>식사 제공
												</li>
												<li>
													- 신사업 'Greating' 공급목적에 부합하는 <br>진정성 확보
												</li>
											</ol>
										</td>
									</tr>
									<tr>
										<td>
											상대원동 '작은 도서관'<br>건립 지원
										</td>
										<td>- 문화시설 취약 소외계층 대상 : 20백만원</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 신사업 제조시설 인근 문화 지원사업 참여
												</li>
												<li>
													- 도서관 위치 단지 내 2,510가구 아동 이용
												</li>
											</ol>
										</td>
									</tr>
									<tr>
										<td class="first" rowspan="2">용인</td>
										<td>
											사랑의 김장나눔
										</td>
										<td>
											<ol class="director_division_list">
												<li>- 김장 재료 구매비용 : 31백만원</li>
											</ol>
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 용인시 수지지역 저소득층 800가구<br> 겨울철 김장김치 제공
												</li>
											</ol>
										</td>
									</tr>
									<tr>
										<td>
											직업재활카페<br>커피원두 후원
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 사회적 기업 커피원두 구매 후원<br>: 10백만원
												</li>
											</ol>
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 관내 결혼이주여성 80명/年<br> 교육훈련 수료
												</li>
												<li>
													- 발달 장애인이 만든 쿠키/커피 구입 지원
												</li>
											</ol>
										</td>
									</tr>
									<tr>
										<td class="first" rowspan="2">기타</td>
										<td>
											영남지역 아동복지시설<br>재능나눔
										</td>
										<td>
											<ol class="director_division_list">
												<li>- 당사 영양사, 조리사 관내 아동시설<br> 영양지원 재능기부</li>
												<li>- 식재, 학습도구 外 구매 후원 : 15백만원</li>
											</ol>
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 지역 아동 평균 15명/月 이용
												</li>
											</ol>
										</td>
									</tr>
									<tr>
										<td>
											임직원 봉사활동
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 연간 임직원 봉사활동
													<br>참여인원 x 시간 x 평균임금 고려시
													<br>: 16백만원 수준
												</li>
											</ol>
										</td>
										<td>
											<ol class="director_division_list">
												<li>
													- 주요 지역사회 상생활동 임직원 참여
												</li>
												<li>
													- 임직원 사회책임 의식 고취
												</li>
											</ol>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</section>
			</div>
		</div>

		<script>
			const $elm = $('.hPara').length > 0 ? $('.hPara') : false;

			$.each($elm, function () {
				const $this = $(this);

				$(window).on('load scroll', function () {
					const _st = $(window).scrollTop();
					const _hd_height = $('.header').height();
					const _view_height = $(window).height();
					const _el_offset = $this.offset().top;
					const _el_height = $this.outerHeight(true);
					const _end_offset = _el_offset + _el_height - _hd_height;


					if (_el_offset < _st + _hd_height) {
						$this.removeClass('scroll_end');
						$this.addClass('scroll');
					} else {
						if (_el_offset >= _st + _hd_height) {
							$this.removeClass('scroll_end');
							$this.removeClass('scroll');
						}
					}

					if (_end_offset < _st + _view_height + _hd_height) {
						$this.removeClass('scroll');
						$this.addClass('scroll_end');
					}
				});
			});
		</script>
	</div>
	<%@ include file="/Inc/Footer.jspf"%>
</body>

</html>
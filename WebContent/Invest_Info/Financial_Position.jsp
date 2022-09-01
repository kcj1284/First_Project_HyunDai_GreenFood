<button%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    trimDirectiveWhitespaces="true" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Business_Performance</title>
        <link href="../Invest_Info_CSS/BP_style.css" rel="stylesheet" type="text/css">
    </head>

    <body>

        <div class="sub_contents">
            <!-- 타이틀 , 디스크립션 -->
            <div class="title_description">
                <h2 class="title_sub">재무정보</h2>

                <p class="sub_description">현대그린푸드의 재무현황을 요약하여 알려드립니다. </p>
            </div>
            <!-- //타이틀 , 디스크립션 -->

            <!-- 탭 -->
            <ul class="tab_list tab_list_2">
                <li>
                    <button onclick="location='Business_Performance.jsp'">경영실적</button>
                </li>
                <li class="on">
                    <button onclick="location='Financial_Position.jsp'">재무상태</button>
                </li>
            </ul>
            <!-- //탭 -->

            <!-- 경영실적 영역 -->
            <div class="director_area">

                <div>
                    <h3 class="title_director">K_IFRS별도재무정보</h3>

                    <table class="list_tb finance_tb">
                        <caption class="caption_finance">(단위 : 억원)</caption>
                        <colgroup>
                            <col width="24%">
                            <col width="24%">
                            <col width="24%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="row" class="first" rowspan="2">구분</th>
                                <th scope="col" class="director_attend_th">제 54 기</th>
                                <th scope="col" class="director_attend_th">제 53 기</th>
                                <th scope="col" class="director_attend_th">제 52 기</th>
                            </tr>
                            <tr>
                                <th scope="col" class="attend_inwork_th"><span class="th_date">(2021년)</span></th>
                                <th scope="col" class="attend_outwork_th"><span class="th_date">(2020년)</span></th>
                                <th scope="col" class="attend_outwork_th"><span class="th_date">(2019년)</span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="total">
                                <th scope="row">자산총계</th>
                                <td class="money">17,716</td>
                                <td class="money">17,602</td>
                                <td class="money">16,955</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">유동자산</th>
                                <td class="money">2,973</td>
                                <td class="money">4,539</td>
                                <td class="money">4,165</td>
                            </tr>
                            <tr>
                                <th scope="row">현금및현금성자산</th>
                                <td class="money">222</td>
                                <td class="money">111</td>
                                <td class="money">90</td>
                            </tr>
                            <tr>
                                <th scope="row">매출채권및기타채권</th>
                                <td class="money">1,630</td>
                                <td class="money">1,416</td>
                                <td class="money">1,400</td>
                            </tr>
                            <tr>
                                <th scope="row">유동금융자산</th>
                                <td class="money">484</td>
                                <td class="money">2,418</td>
                                <td class="money">2,160</td>
                            </tr>
                            <tr>
                                <th scope="row">재고자산</th>
                                <td class="money">613</td>
                                <td class="money">568</td>
                                <td class="money">489</td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동자산</th>
                                <td class="money">23</td>
                                <td class="money">28</td>
                                <td class="money">24</td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동금융자산</th>
                                <td class="money">0</td>
                                <td class="money">0</td>
                                <td class="money">0</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">비유동자산</th>
                                <td class="money">14,743</td>
                                <td class="money">13,063</td>
                                <td class="money">12,790</td>
                            </tr>
                            <tr>
                                <th scope="row">유형자산</th>
                                <td class="money">2,120</td>
                                <td class="money">2,125</td>
                                <td class="money">2,115</td>
                            </tr>

                            <tr>
                                <th scope="row">투자부동산</th>
                                <td class="money">390</td>
                                <td class="money">354</td>
                                <td class="money">342</td>
                            </tr>
                            <tr>
                                <th scope="row">무형자산</th>
                                <td class="money">1,170</td>
                                <td class="money">1,186</td>
                                <td class="money">1,167</td>
                            </tr>
                            <tr>
                                <th scope="row">사용권자산</th>
                                <td class="money">39</td>
                                <td class="money">37</td>
                                <td class="money">50</td>
                            </tr>
                            <tr>
                                <th scope="row">종속기업투자</th>
                                <td class="money">2,796</td>
                                <td class="money">2,607</td>
                                <td class="money">2,731</td>
                            </tr>
                            <tr>
                                <th scope="row">관계기업및공동기업투자</th>
                                <td class="money">3,491</td>
                                <td class="money">2,241</td>
                                <td class="money">2,245</td>
                            </tr>
                            <tr>
                                <th scope="row">비유동금융자산</th>
                                <td class="money">4,264</td>
                                <td class="money">3,972</td>
                                <td class="money">3,769</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동자산</th>
                                <td class="money">1</td>
                                <td class="money">126</td>
                                <td class="money">1</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동금융자산</th>
                                <td class="money">473</td>
                                <td class="money">414</td>
                                <td class="money">371</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">부채 총계</th>
                                <td class="money">3,100</td>
                                <td class="money">3,616</td>
                                <td class="money">3,294</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">유동부채</th>
                                <td class="money">1,646</td>
                                <td class="money">2,022</td>
                                <td class="money">1,723</td>
                            </tr>
                            <tr>
                                <th scope="row">매입채무및기타채무</th>
                                <td class="money">1,316</td>
                                <td class="money">1,186</td>
                                <td class="money">1,409</td>
                            </tr>
                            <tr>
                                <th scope="row">단기차입금</th>
                                <td class="money"></td>
                                <td class="money">590</td>
                                <td class="money"></td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동부채</th>
                                <td class="money">177</td>
                                <td class="money">152</td>
                                <td class="money">141</td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동금융부채</th>
                                <td class="money">92</td>
                                <td class="money">70</td>
                                <td class="money">85</td>
                            </tr>
                            <tr>
                                <th scope="row">당기법인세부채</th>
                                <td class="money">47</td>
                                <td class="money">12</td>
                                <td class="money">72</td>
                            </tr>
                            <tr>
                                <th scope="row">유동리스부채</th>
                                <td class="money">15</td>
                                <td class="money">12</td>
                                <td class="money">16</td>
                            </tr>

                            <tr class="total">
                                <th scope="row">비유동부채</th>
                                <td class="money">1,454</td>
                                <td class="money">1,594</td>
                                <td class="money">1,571</td>
                            </tr>
                            <tr>
                                <th scope="row">확정급여부채</th>
                                <td class="money">10</td>
                                <td class="money">116</td>
                                <td class="money">192</td>
                            </tr>

                            <tr>
                                <th scope="row">기타비유동부채</th>
                                <td class="money">44</td>
                                <td class="money">34</td>
                                <td class="money">31</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동금융부채</th>
                                <td class="money">54</td>
                                <td class="money">73</td>
                                <td class="money">54</td>
                            </tr>
                            <tr>
                                <th scope="row">충당부채</th>
                                <td class="money">157</td>
                                <td class="money">286</td>
                                <td class="money">260</td>
                            </tr>
                            <tr>
                                <th scope="row">이연법인세부채</th>
                                <td class="money">1,175</td>
                                <td class="money">1,067</td>
                                <td class="money">1,008</td>
                            </tr>
                            <tr>
                                <th scope="row">비유동리스부채</th>
                                <td class="money">15</td>
                                <td class="money">18</td>
                                <td class="money">26</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">자본 총계</th>
                                <td class="money">14,617</td>
                                <td class="money">13,986</td>
                                <td class="money">13,661</td>
                            </tr>
                            <tr>
                                <th scope="row">자본금</th>
                                <td class="money">489</td>
                                <td class="money">489</td>
                                <td class="money">489</td>
                            </tr>
                            <tr>
                                <th scope="row">자본잉여금</th>
                                <td class="money">4,103</td>
                                <td class="money">4,103</td>
                                <td class="money">4,103</td>
                            </tr>
                            <tr>
                                <th scope="row">이익잉여금</th>
                                <td class="money">8,973</td>
                                <td class="money">8,552</td>
                                <td class="money">8,366</td>
                            </tr>
                            <tr>
                                <th scope="row">기타포괄손익누계액</th>
                                <td class="money">1,807</td>
                                <td class="money">1,598</td>
                                <td class="money">1,458</td>
                            </tr>
                            <tr>
                                <th scope="row">자기주식</th>
                                <td class="money">-734</td>
                                <td class="money">-734</td>
                                <td class="money">-734</td>
                            </tr>
                            <tr>
                                <th scope="row">기타자본조정</th>
                                <td class="money">-22</td>
                                <td class="money">-22</td>
                                <td class="money">-22</td>
                            </tr>

                            <tr class="total">
                                <th scope="row">자본과부채총계</th>
                                <td class="money">17,716</td>
                                <td class="money">17,602</td>
                                <td class="money">16,955</td>
                            </tr>

                        </tbody>
                    </table>
                </div>

                <div class="committee_area">
                    <h3 class="title_director">K_IFRS연결재무정보</h3>

                    <table class="list_tb finance_tb">
                        <caption class="caption_finance">(단위 : 억원)</caption>
                        <colgroup>
                            <col width="24%">
                            <col width="24%">
                            <col width="24%">
                            <col width="*">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="row" class="first" rowspan="2">구분</th>
                                <th scope="col" class="director_attend_th">제 54 기</th>
                                <th scope="col" class="director_attend_th">제 53 기</th>
                                <th scope="col" class="director_attend_th">제 52 기</th>
                            </tr>
                            <tr>
                                <th scope="col" class="attend_outwork_th"><span class="th_date">(2021년)</span></th>
                                <th scope="col" class="attend_outwork_th"><span class="th_date">(2020년)</span></th>
                                <th scope="col" class="attend_inwork_th"><span class="th_date">(2019년)</span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="total">
                                <th scope="row">자산총계</th>
                                <td class="money">31,100</td>
                                <td class="money">30,685</td>
                                <td class="money">29,666</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">유동자산</th>
                                <td class="money">9,906</td>
                                <td class="money">11,018</td>
                                <td class="money">11,197</td>
                            </tr>
                            <tr>
                                <th scope="row">현금및현금성자산</th>
                                <td class="money">594</td>
                                <td class="money">763</td>
                                <td class="money">692</td>
                            </tr>
                            <tr>
                                <th scope="row">매출채권및기타채권</th>
                                <td class="money">4,824</td>
                                <td class="money">4,071</td>
                                <td class="money">4,350</td>
                            </tr>
                            <tr>
                                <th scope="row">유동금융자산</th>
                                <td class="money">786</td>
                                <td class="money">3,284</td>
                                <td class="money">3,011</td>
                            </tr>
                            <tr>
                                <th scope="row">재고자산</th>
                                <td class="money">3,300</td>
                                <td class="money">2,745</td>
                                <td class="money">2,910</td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동자산</th>
                                <td class="money">391</td>
                                <td class="money">145</td>
                                <td class="money">230</td>
                            </tr>
                            <tr>
                                <th scope="row">당기법인세자산</th>
                                <td class="money">10</td>
                                <td class="money">10</td>
                                <td class="money">4</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">비유동자산</th>
                                <td class="money">21,194</td>
                                <td class="money">19,667</td>
                                <td class="money">18,469</td>
                            </tr>
                            <tr>
                                <th scope="row">장기매출채권및기타채권</th>
                                <td class="money">83</td>
                                <td class="money">1</td>
                                <td class="money">8</td>
                            </tr>
                            <tr>
                                <th scope="row">유형자산</th>
                                <td class="money">5,882</td>
                                <td class="money">5,896</td>
                                <td class="money">5,451</td>
                            </tr>
                            <tr>
                                <th scope="row">투자부동산</th>
                                <td class="money">310</td>
                                <td class="money">314</td>
                                <td class="money">380</td>
                            </tr>
                            <tr>
                                <th scope="row">무형자산</th>
                                <td class="money">2,108</td>
                                <td class="money">2,458</td>
                                <td class="money">2,497</td>
                            </tr>
                            <tr>
                                <th scope="row">사용권자산</th>
                                <td class="money">612</td>
                                <td class="money">698</td>
                                <td class="money">551</td>
                            </tr>
                            <tr>
                                <th scope="row">관계기업및공동투자</th>
                                <td class="money">6,630</td>
                                <td class="money">5,086</td>
                                <td class="money">4,865</td>
                            </tr>
                            <tr>
                                <th scope="row">비유동금융자산</th>
                                <td class="money">4,370</td>
                                <td class="money">4,072</td>
                                <td class="money">3,824</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동자산</th>
                                <td class="money">1</td>
                                <td class="money">126</td>
                                <td class="money">2</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동금융자산</th>
                                <td class="money">918</td>
                                <td class="money">845</td>
                                <td class="money">761</td>
                            </tr>
                            <tr>
                                <th scope="row">이연법인세자산</th>
                                <td class="money">281</td>
                                <td class="money">170</td>
                                <td class="money">131</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">부채 총계</th>
                                <td class="money">8,995</td>
                                <td class="money">8,783</td>
                                <td class="money">8,502</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">유동부채</th>
                                <td class="money">5,885</td>
                                <td class="money">5,467</td>
                                <td class="money">5,272</td>
                            </tr>
                            <tr>
                                <th scope="row">매입채무및기타채무</th>
                                <td class="money">4,023</td>
                                <td class="money">3,702</td>
                                <td class="money">3,896</td>
                            </tr>
                            <tr>
                                <th scope="row">단기차입금및유동성장기부채</th>
                                <td class="money">499</td>
                                <td class="money">705</td>
                                <td class="money">399</td>
                            </tr>
                            <tr>
                                <th scope="row">유동금융부채</th>
                                <td class="money">1</td>
                                <td class="money">0</td>
                                <td class="money">0</td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동부채</th>
                                <td class="money">1,028</td>
                                <td class="money">673</td>
                                <td class="money">576</td>
                            </tr>
                            <tr>
                                <th scope="row">기타유동금융부채</th>
                                <td class="money">42</td>
                                <td class="money">103</td>
                                <td class="money">96</td>
                            </tr>
                            <tr>
                                <th scope="row">충당부채</th>
                                <td class="money">51</td>
                                <td class="money">41</td>
                                <td class="money">29</td>
                            </tr>
                            <tr>
                                <th scope="row">당기법인세부채</th>
                                <td class="money">64</td>
                                <td class="money">67</td>
                                <td class="money">124</td>
                            </tr>
                            <tr>
                                <th scope="row">유동리스부채</th>
                                <td class="money">176</td>
                                <td class="money">175</td>
                                <td class="money">151</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">비유동부채</th>
                                <td class="money">3,110</td>
                                <td class="money">3,316</td>
                                <td class="money">3,230</td>
                            </tr>
                            <tr>
                                <th scope="row">확정급여부채</th>
                                <td class="money">99</td>
                                <td class="money">293</td>
                                <td class="money">436</td>
                            </tr>
                            <tr>
                                <th scope="row">장기차입금</th>
                                <td class="money">0</td>
                                <td class="money">15</td>
                                <td class="money">14</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동부채</th>
                                <td class="money">87</td>
                                <td class="money">73</td>
                                <td class="money">70</td>
                            </tr>
                            <tr>
                                <th scope="row">기타비유동금융부채</th>
                                <td class="money">93</td>
                                <td class="money">34</td>
                                <td class="money">81</td>
                            </tr>
                            <tr>
                                <th scope="row">충당부채</th>
                                <td class="money">188</td>
                                <td class="money">321</td>
                                <td class="money">282</td>
                            </tr>
                            <tr>
                                <th scope="row">이연법인세부채</th>
                                <td class="money">2,200</td>
                                <td class="money">2,047</td>
                                <td class="money">1,948</td>
                            </tr>
                            <tr>
                                <th scope="row">비유동리스부채</th>
                                <td class="money">442</td>
                                <td class="money">534</td>
                                <td class="money">400</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">자본 총계</th>
                                <td class="money">22,105</td>
                                <td class="money">21,902</td>
                                <td class="money">21,164</td>
                            </tr>
                            <tr>
                                <th scope="row">자본금</th>
                                <td class="money">489</td>
                                <td class="money">489</td>
                                <td class="money">489</td>
                            </tr>
                            <tr>
                                <th scope="row">자본잉여금</th>
                                <td class="money">4,446</td>
                                <td class="money">4,488</td>
                                <td class="money">4,488</td>
                            </tr>
                            <tr>
                                <th scope="row">이익잉여금</th>
                                <td class="money">12,285</td>
                                <td class="money">12,030</td>
                                <td class="money">11,519</td>
                            </tr>
                            <tr>
                                <th scope="row">기타포괄손익</th>
                                <td class="money">1,796</td>
                                <td class="money">1,570</td>
                                <td class="money">1,442</td>
                            </tr>
                            <tr>
                                <th scope="row">자기주식</th>
                                <td class="money">-743</td>
                                <td class="money">-743</td>
                                <td class="money">-743</td>
                            </tr>
                            <tr>
                                <th scope="row">기타자본조정</th>
                                <td class="money">-22</td>
                                <td class="money">-22</td>
                                <td class="money">-22</td>
                            </tr>
                            <tr>
                                <th scope="row">비지배지분</th>
                                <td class="money">3,853</td>
                                <td class="money">4,090</td>
                                <td class="money">3,991</td>
                            </tr>
                            <tr class="total">
                                <th scope="row">자본과부채총계</th>
                                <td class="money">31,100</td>
                                <td class="money">30,685</td>
                                <td class="money">29,666</td>
                            </tr>

                        </tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </body>

    </html>
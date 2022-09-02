<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Business_Performance</title>
    <link href="../Invest_Info_CSS/BP_style.css" rel="stylesheet" type="text/css">
</head>

    <div class="sub_contents">
        <!-- 타이틀 , 디스크립션 -->
        <div class="title_description">
            <h2 class="title_sub">재무정보</h2>
            <p class="sub_description">현대그린푸드의 재무현황을 요약하여 알려드립니다. </p>
        </div>
        <!-- //타이틀 , 디스크립션 -->


        <ul class="tab_list tab_list_2">
            <li class="on">
                <button onclick="location='Business_Performance.jsp'">경영실적</button>
            </li>
            <li>
                <button onclick="location='Financial_Position.jsp'">재무상태</button>
            </li>
        </ul>


        <div class="director_area">
            <div>
                <h3 class="title_director">K-IFRS 별도손익계산서</h3>

                <table class="list_tb finance_tb">
                    <caption class="caption_finance">(단위 : 억원,&nbsp;&nbsp;%)</caption>
                    <colgroup>
                        <col width="24%">
                        <col width="24%">
                        <col width="24%">
                        <col width="*">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col" class="first">구분</th>
                            <th scope="col">54기<br><span class="th_date">(2021년)</span></th>
                            <th scope="col">53기<br><span class="th_date">(2020년)</span></th>
                            <th scope="col">52기<br><span class="th_date">(2019년)</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="first">매출액</td>
                            <td class="money">16,712</td>
                            <td class="money">15,125</td>
                            <td class="money">15,427</td>
                        </tr>
                        <tr>
                            <td class="first">성장률(%)</td>
                            <td class="money">10.5</td>
                            <td class="money">-2.0</td>
                            <td class="money">1.9</td>
                        </tr>
                        <tr>
                            <td class="first">영업이익</td>
                            <td class="money">432</td>
                            <td class="money">451</td>
                            <td class="money">670</td>
                        </tr>
                        <tr>
                            <td class="first">영업이익률(%)</td>
                            <td class="money">2.6</td>
                            <td class="money">3.0</td>
                            <td class="money">4.3</td>
                        </tr>
                        <tr>
                            <td class="first">경상이익</td>
                            <td class="money">740</td>
                            <td class="money">498</td>
                            <td class="money">802</td>
                        </tr>
                        <tr>
                            <td class="first">경상이익률(%)</td>
                            <td class="money">4.4</td>
                            <td class="money">3.3</td>
                            <td class="money">5.2</td>
                        </tr>
                        <tr>
                            <td class="first">당기순이익</td>
                            <td class="money">607</td>
                            <td class="money">377</td>
                            <td class="money">616</td>
                        </tr>
                        <tr>
                            <td class="first">당기순이익률(%)</td>
                            <td class="money">3.63</td>
                            <td class="money">2.49</td>
                            <td class="money">3.99</td>
                        </tr>
                    </tbody>
                </table>

                <p class="korean_financial"><span>*</span> 한국채택국제회계기준으로 작성</p>
            </div>

            <div class="committee_area">
                <h3 class="title_director">K-IFRS 연결손익계산서</h3>

                <table class="list_tb finance_tb">
                    <caption class="caption_finance">(단위 : 억원,&nbsp;&nbsp;%)</caption>
                    <colgroup>
                        <col width="24%">
                        <col width="24%">
                        <col width="24%">
                        <col width="*">
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col" class="first">구분</th>
                            <th scope="col">54기<br><span class="th_date">(2021년)</span></th>
                            <th scope="col">53기<br><span class="th_date">(2020년)</span></th>
                            <th scope="col">52기<br><span class="th_date">(2019년)</span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="first">매출액</td>
                            <td class="money">34,861</td>
                            <td class="money">32,385</td>
                            <td class="money">31,243</td>
                        </tr>
                        <tr>
                            <td class="first">성장률(%)</td>
                            <td class="money">7.6</td>
                            <td class="money">3.7</td>
                            <td class="money">-3.9</td>
                        </tr>
                        <tr>
                            <td class="first">영업이익</td>
                            <td class="money">586</td>
                            <td class="money">786</td>
                            <td class="money">899</td>
                        </tr>
                        <tr>
                            <td class="first">영업이익률(%)</td>
                            <td class="money">1.7</td>
                            <td class="money">2.4</td>
                            <td class="money">2.9</td>
                        </tr>
                        <tr>
                            <td class="first">경상이익</td>
                            <td class="money">570</td>
                            <td class="money">1,035</td>
                            <td class="money">986</td>
                        </tr>
                        <tr>
                            <td class="first">경상이익률(%)</td>
                            <td class="money">1.6</td>
                            <td class="money">3.2</td>
                            <td class="money">3.2</td>
                        </tr>
                        <tr>
                            <td class="first">당기순이익</td>
                            <td class="money">413</td>
                            <td class="money">816</td>
                            <td class="money">639</td>
                        </tr>
                        <tr>
                            <td class="first">당기순이익률(%)</td>
                            <td class="money">1.2</td>
                            <td class="money">2.5</td>
                            <td class="money">2.0</td>
                        </tr>
                    </tbody>
                </table>

                <p class="korean_financial"><span>*</span> 한국채택국제회계기준으로 작성</p>
            </div>
        </div>
    </div>

</body>

</html>
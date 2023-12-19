
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="./favicon.ico">
    <title>컬리</title>
    <link rel="stylesheet" href="/resources/css/member/coupon.css">
    <link rel="stylesheet" href="/resources/product/css/main-css.css">
    <link rel="stylesheet" href="/resources/product/css/footer.css">
    <link href="https://fonts.googleapis.com/css2?family=Dhurjati&family=Orbit&family=Rethink+Sans&family=Source+Sans+3:wght@300&display=swap" rel="stylesheet">
</head>

<body>
<%@ include file="../include/header.jspf" %>
<div class = "css-2b29tl">
    <div class = "css-1jgbowa epggjnz4">
        <div class = "css-1oynwoh epggjnz3">
            <div class = "css-1nmq3i1 epggjnz2">
                <div class = "css-zjik7">
                    <div class = "welcome">웰컴</div>
                    <div class = "css-38n0u7">
                        <strong class = "name">
                            <sec:authorize access="isAuthenticated()">
                                <p>Welcome, <sec:authentication property="principal.mem_name" />!</p>
                            </sec:authorize>
                        </strong>
                        <div class = "css-70qvj9">
                            <button class = "css-rlyyl8">다음 달 등급 확인</button>
                            <span class = "css-i9bkc4"></span>
                            <button class = css-rlyyl8>전체 등급 확인</button>
                        </div>
                    </div>
                </div>

                <div class = "css-1rqh7gg">
                    <p class = "css-1nwlk71">적립 5%</p>
                    <p class = "css-1nwlk71">최소 1회 무료배송</p>
                    <a href="/member/membership" class="css-1qcjshh">
                            <span class="css-1fid7vq">
                                <span class="css-3a5cil">NEW</span>
                                <span class="css-1kxzrwz">컬리멤버스</span>
                                <span class="css-10yg44e">월 1,900원으로 10배 쿠폰 받기</span>
                            </span>
                    </a>
                </div>
            </div>


            <div class="css-1jemrvf epggjnz1">
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">적립금 · 컬리캐시
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">바로가기
                            <span class="css-mmvz9h e1ugk4rt0"></span>
                        </div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">쿠폰
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">0
                            <span class="css-mmvz9h e1ugk4rt0">개</span>
                        </div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-1bm0yf4 e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">나의 컬리 스타일
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-1omzzwx e1ugk4rt3">등록하기
                        </div>
                    </button>
                </div>
            </div>


            <div class="css-1jemrvf epggjnz1">
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-13d66fq e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">컬리 퍼플 박스
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-17cmttl e1ugk4rt3">알아보기</div>
                    </button>
                </div>
                <div class="css-1lomzjv epggjnz0">
                    <button class="css-13d66fq e1ugk4rt6">
                        <div class="css-157zkrj e1ugk4rt5">컬리멤버스
                            <span class="css-14phxgn e1ugk4rt4"></span>
                        </div>
                        <div class="css-17cmttl e1ugk4rt3">혜택받기</div>
                    </button>
                </div>
            </div>
        </div>
        <a href="https://www.kurly.com/m2/event/kurlyEventV2.php?lego=event/2023/0911/join/coupon" class="css-1khmcew eyulecr1">
            <img src="https://product-image.kurly.com/banner/da-banner/55b64dac-7373-4bb5-b44d-7a2eecde375a.jpg" alt="230713 신규1만원 쿠폰 웰컴 PC" class="css-1th0ley eyulecr0">
        </a>
    </div>


    <div class="css-luwwab eug5r8l1">
        <div class="css-833hqy ecbxmj3">
            <div class="css-1v4whg ecbxmj2">마이컬리</div>
            <ul class="css-1x9bshx ecbxmj1">
                <li>
                    <a class="active css-g4g0eu ecbxmj0">주문내역
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">선물내역
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">찜한상품
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">배송지 관리
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">상품후기
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">결제수단 · 컬리페이
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">상품 문의
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">적립금 · 컬리캐시
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">쿠폰
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">나의 컬리 스타일
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>

                <li>
                    <a class=" css-g4g0eu ecbxmj0">개인 정보 수정
                        <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                            <defs>
                                <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                            </defs>
                            <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                <use stroke="#999" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                            </g></g></g></g></g>
                        </svg>
                    </a>
                </li>
            </ul>

            <a href="/mypage/inquiry/list" class="css-196gwz9 e19l01ug3">
                <div class="css-rmee6s e19l01ug2">
                    <span class="css-1sdidca e19l01ug1">도움이 필요하신가요 ?</span>
                    <span class="css-rnnx2x e19l01ug0">1:1 문의하기</span>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" width="19" height="19" viewBox="0 0 24 24">
                    <defs>
                        <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                    </defs>
                    <g fill="none" fill-rule="evenodd"><g><g><g><g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                        <use stroke="#333" stroke-linecap="round" stroke-width="1.8" stroke-linejoin="round" transform="rotate(45 5.657 5.657)" xlink:href="#gfk9q0rhta"></use>
                    </g></g></g></g></g>
                </svg>
            </a>
        </div>


        <div class="css-171zbec eug5r8l0">
            <div class="css-j0lifa ed9qr673">
                <div class="css-fhxb3m ed9qr672">
                    <h2 class="css-1268zpe ed9qr671">쿠폰</h2>
                </div>
            </div>




            <div class="download_coupon">



                <input type="checkbox" id="check">
                <label for="check">
                    <span></span>
                    <span></span>
                    <span></span>
                </label>


                <div class="sidebar">
                    <ul>
                        <li class="coupon" id="dw_id 1">
                            <span class="coupon_count">수량</span>
                            <div class="coupon_front">
                                <div>쿠폰명</div>
                                <div>할인ddddddddd 10%</div>
                                <div class="cp_del_date">2023-12-25 15:30:00</div>
                            </div>
                            <div class="coupon_back active" id="10"><span>coupon</span></div>
                        </li>



                        <c:forEach var="download" items="${download}">

                            <li class="coupon" id="dw_id ${download.dw_id}">
                                <span class="coupon_count">${download.cp_qty}</span>
                                <div class="coupon_front">
                                    <div>${download.cp_name}</div>
                                    <div>${download.cash_rate}</div>
                                    <div class="cp_del_date">${download.cp_del_date}</div>
                                </div>
                                <div class="coupon_back active" id="${download.cp_id}"><span>coupon</span></div>
                            </li>

                        </c:forEach>



                    </ul>
                </div>



            </div>




            <div data-testid="summary" class="css-1ky9cuc e3geg1y2">
                <p class="css-16z9rvt e3geg1y1">쿠폰은 적용 가능한 상품이 따로 적용되어 있는 경우 해당 상품 구매 시에만 사용이 가능합니다.</p>
                <p class="css-1x6sdw1 e3geg1y0">사용가능쿠폰: ${coupon.size()}장</p>
            </div>
            <table class="css-171zbec e1rqxz0z3">
                <thead class="css-0 e1rqxz0z2">
                <tr class="css-141m64i e1rqxz0z1">
                    <th class="css-1ug13y3 e1rqxz0z0">쿠폰명</th>
                    <th class="css-1ug13y3 e1rqxz0z0">기능</th>
                    <th class="css-1ug13y3 e1rqxz0z0">할인/적립</th>
                    <th class="css-1ug13y3 e1rqxz0z0">사용가능기간</th>
                    <th class="css-1ug13y3 e1rqxz0z0">사용여부</th>
                </tr>
                </thead>



                <tbody data-testid="coupon-detail" class="css-1deckd1 e1rjzgz00">
                <tr data-testid="coupon-item" class="css-141m64i e1tgnahe2">
                    <td class="css-q2jm29 evod6yc1">
                        <p class="css-1sg7btz evod6yc0">${user_id}</p>
                        <div data-testid="price-condition" class="css-3apn08 e1y0jaxm0">29,000원 이상 주문 시 최대 10,000원 할인
                        </div>
                        <p data-testid="payment-condition" class="css-3apn08 er3hb6s0">컬리상품 한정, 특정상품 한정</p><button
                            class="css-1xwjhen e1mgczsm0">사용조건 보기</button>
                    </td>
                    <td class="css-44wg63 e1tgnahe1">할인</td>
                    <td class="css-44wg63 e1tgnahe1">15%</td>
                    <td class="css-44wg63 e1tgnahe1">23.12.07 11시까지</td>
                    <td class="css-qlipgp e1tgnahe0">미사용</td>
                </tr>
                </tbody>

                <c:forEach var="coupon" items="${coupon}">

                    <tbody data-testid="coupon-detail" class="css-1deckd1 e1rjzgz00">
                    <tr data-testid="coupon-item" class="css-141m64i e1tgnahe2">
                        <td class="css-q2jm29 evod6yc1">
                            <p class="css-1sg7btz evod6yc0">${coupon.cp_name}</p>
                            <div data-testid="price-condition" class="css-3apn08 e1y0jaxm0">${coupon.min_amt}원 이상 주문 시
                                <c:if test="${coupon.max_disc_amt != 0}">
                                    최대 ${coupon.max_disc_amt}원 할인
                                </c:if>
                            </div>
                            <p data-testid="payment-condition" class="css-3apn08 er3hb6s0">컬리상품 한정, 특정상품 한정</p><button
                                class="css-1xwjhen e1mgczsm0">사용조건 보기</button>
                        </td>
                        <td class="css-44wg63 e1tgnahe1">할인</td>
                        <td class="css-44wg63 e1tgnahe1">
                            <c:if test="${coupon.type == 'rate'}">
                                ${coupon.cash_rate}%
                            </c:if>
                            <c:if test="${coupon.type == 'cash'}">
                                ${coupon.cash_rate}원
                            </c:if>
                        </td>
                        <td class="css-44wg63 e1tgnahe1">${coupon.cp_del_date}</td>
                        <td class="css-qlipgp e1tgnahe0">${coupon.cp_sts}</td>
                    </tr>
                    </tbody>

                </c:forEach>


            </table>



        </div>



    </div>

</div>
<%@ include file="../include/footer.jspf" %>
<script>
    function getRandomColor(){
        const elements = "0123456789ABCDEF";
        let color = "#";

        for(let i = 0 ; i<6 ; i++){
            color += elements[Math.floor(Math.random()*16)];
        }
        return color;
    }

    document.addEventListener("DOMContentLoaded", function(){
        const coupons = document.querySelectorAll(".coupon");

        coupons.forEach(function(coupon){
            const coupon_front = coupon.querySelector(".coupon_front");
            const RandomColor = getRandomColor();

            coupon_front.style.backgroundColor = RandomColor;
        });

        //받았던 쿠폰들은 다시 다운 받지 못하게 한다
        var alreadyDownloadedArray = <%= request.getAttribute("already_downloaded") %>;
        // 이제 alreadyDownloadedArray 변수에는 Java에서 전달한 List<Integer>의 내용이 JavaScript 배열로 저장됩니다.

        // JavaScript에서 데이터 사용 예제
        for (var i = 0; i < alreadyDownloadedArray.length; i++) {
            console.log("Downloaded Item: " + alreadyDownloadedArray[i]);
        }
        const uniqueData = Array.from(new Set(alreadyDownloadedArray));
        console.log(uniqueData);


        uniqueData.forEach(number=> {
            var dwId1Tag = $('#dw_id\\ ' + number);
            let couponBackTag = dwId1Tag.find('.coupon_back');
            let couponFrontTag = dwId1Tag.find('.coupon_front');
            var isActive = couponBackTag.hasClass('active');
            if (isActive) {
                couponBackTag.removeClass('active').addClass('non');
            }

            couponBackTag.css("background-color", "gray");
            couponFrontTag.css("background-color", "gray");
            couponBackTag.css('cursor', 'default');
            couponFrontTag.css('cursor', 'default');
        });




    });


//     쿠폰에 이벤트 추가
    $('.coupon_back').on('click', function (){
        var currentId = $(this).attr('class');
        if(currentId.includes('active')){
            alert('활성');

            var cp_del_date = $(this).siblings('.coupon_front').find('.cp_del_date').text();
            console.log(cp_del_date);

            //dw_id 얻기
            var couponId = $(this).closest('.coupon').attr('id');

            // id에서 숫자 부분만 추출 (dw_id 뒤의 숫자)
            var dw_id = couponId.split(' ')[1];
            alert('dw_id : '+dw_id)

            var clickedId = $(this).attr('id');

            $.ajax({
                url: "coupon_dw",
                method: "GET",
                data: {
                    cp_id: clickedId,
                    cp_del_date: cp_del_date,
                    dw_id : dw_id
                },
                dataType: "json",
                success: function(data) {


                    console.log(data.download_cp_qty);
                    let download_cp_qty = data.download_cp_qty;

                    //컨트롤러에서 받아온 dw_id를 사용하여
                    var download_dw_id = $('#dw_id\\ ' + data.download_dw_id);
                    download_dw_id.find('.coupon_count').text(download_cp_qty);



                    //data에는 내가 받았던 dw_id들이 들어있다
                    console.log(data);
                    let downloaded_dw_id_list =  data.downloaded_dw_id_list;

                    //나중에는 필요 없지만 일단 중복제거를 한다
                    const uniqueData = Array.from(new Set(downloaded_dw_id_list));
                    console.log(uniqueData);
                    //하나씩 꺼내서 dw_id 에 해당하는 태그를 선택
                    uniqueData.forEach(number=> {
                        var dwId1Tag = $('#dw_id\\ ' + number);
                        let couponBackTag = dwId1Tag.find('.coupon_back');
                        let couponFrontTag = dwId1Tag.find('.coupon_front');
                        var isActive = couponBackTag.hasClass('active');
                        if (isActive) {
                            couponBackTag.removeClass('active').addClass('non');
                        }

                        couponBackTag.css("background-color", "gray");
                        couponFrontTag.css("background-color", "gray");
                        couponBackTag.css('cursor', 'default');
                        couponFrontTag.css('cursor', 'default');
                    });




                    //대공사
                    //밑에 문제는 반복문이 돌 때 마다 각각 바디에 하나씩 들어간다(어 총 3개씩 3번)
                    //목표 하나의 쿠폰을 받을 때는 하나의 쿠폰만 마지막 태그에 추가

                    let couponData = data.coupon_detail;
                    console.log(couponData);


                    // Create the new tbody element
                    var newTbody = $("<tbody data-testid='coupon-detail' class='css-1deckd1 e1rjzgz00'></tbody>");

// Create the new tr element
                    var newTr = $("<tr data-testid='coupon-item' class='css-141m64i e1tgnahe2'></tr>");

// Append td elements to the new tr
                    newTr.append("<td class='css-q2jm29 evod6yc1'>" +
                        "<p class='css-1sg7btz evod6yc0'>" + couponData.cp_name + "</p>" +
                        "<div data-testid='price-condition' class='css-3apn08 e1y0jaxm0'>" + couponData.min_amt + "원 이상 주문 시" +
                        "<c:if test='${couponData.max_disc_amt != 0}'>" +
                        "최대 " + couponData.max_disc_amt + "원 할인" +
                        "</c:if>" +
                        "</div>" +
                        "<p data-testid='payment-condition' class='css-3apn08 er3hb6s0'>컬리상품 한정, 특정상품 한정</p>" +
                        "<button class='css-1xwjhen e1mgczsm0'>사용조건 보기</button>" +
                        "</td>");

                    newTr.append("<td class='css-44wg63 e1tgnahe1'>할인</td>");
                    newTr.append("<td class='css-44wg63 e1tgnahe1'>" +
                        (couponData.type === 'rate' ? couponData.cash_rate + "%" :
                            (couponData.type === 'cash' ? couponData.cash_rate + "원" : "")) +
                        "</td>");
                    newTr.append("<td class='css-44wg63 e1tgnahe1'>" + couponData.cp_del_date + "</td>");
                    newTr.append("<td class='css-qlipgp e1tgnahe0'>" + couponData.cp_sts + "</td>");


                    newTbody.append(newTr);


                    $("table.css-171zbec.e1rqxz0z3").append(newTbody);




                },
                error: function(error) {

                    console.error('Error:', error);
                }
            });

        }else{
            alert('비활성');
        }



    });


</script>
</body>
</html>

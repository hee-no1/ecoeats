<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/product/css/main-css.css">
    <link rel="stylesheet" href="/resources/product/css/product-css.css"/>
    <script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <title></title>
    <style>
        .css-1c36ywl {
            background: url(${product.prod_img_id}) 0% 0% / cover, url(https://res.kurly.com/_next/static/images/noimg-150x195-2c819ff….svg) 50% 50% / contain no-repeat rgb(245, 245, 245);
        }

        /*드롭 다운 카테고리 (수정 필요)*/
        nav {
            overflow: hidden;
        }

        .dropdown {
            float: left;
            overflow: hidden;
        }

        .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit;
            margin: 0;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        .dropdown-content a:hover {
            background-color: #ddd;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
</head>
<body>

<%@ include file="../include/header.jspf" %>

        <div class="css-n48rgu ex9g73v0">
            <div class="css-16c0d8l e1brqtzw0">
                <main id="product-atf" class="css-1eoy87d e17iylht5">
                    <div class="css-1c36ywl e17iylht4"></div>
                    <section class="css-1ua1wyk e17iylht3">
                        <div class="css-12lw2qc ezpe9l13">샛별배송</div>
                        <div class="css-1qy9c46 ezpe9l12">
                            <h1 class="css-79gmk3 ezpe9l11">${product.prod_name}</h1>
                            <h2 class="css-ki8mlo ezpe9l10">${product.short_desc}</h2>
                            <button class=" css-57nu3d eaxuegm1"></button>
                        </div>
                        <h2 class="css-abwjr2 e1q8tigr4">
                                <span class="css-5nirzt e1q8tigr3">
                                    ${product.disc_rate}%
                                </span>
                            <span class="css-9pf1ze e1q8tigr2"></span>
                            <span class="css-1x9cx9j e1q8tigr1">${product.disc_price}원</span>
                        </h2>
                        <span class="css-1e1rd4p e1q8tigr0">
                                <span>
                                   ${product.prod_price}원
                                </span>
                                <button type="button">
                                    <svg xmlns="http://www.w3.org/2000/svg" widht="21" height="21"
                                         viewBox="0 0 21 21" fill="none">
                                        <circle cx="10.5" cy="10.5" r="6.9" stroke="#ccc" stroke-width="1.2"></circle>
                                        <path fill-rule="evenodd" clip-rule="evenodd"
                                              d="M9.19735 8.7317H7.80005C7.84762 7.32251 8.81681 6.2998 10.5828 6.2998C12.2119 6.2998 13.3 7.23926 13.3 8.55332C13.3 9.46305 12.8482 10.0993 12.0395 10.5809C11.2606 11.0387 11.0406 11.342 11.0406 11.9306V12.2695H9.66113L9.65518 11.8652C9.60167 10.9733 9.94654 10.4382 10.7671 9.95656L10.9414 9.84757C11.5443 9.45619 11.7541 9.14643 11.7541 8.60683C11.7541 7.98845 11.2546 7.54251 10.5055 7.54251C9.73843 7.54251 9.24491 8.00629 9.19735 8.7317ZM9.42924 14.1603C9.42924 14.7312 9.82167 15.1058 10.4163 15.1058C11.0228 15.1058 11.4033 14.7312 11.4033 14.1603C11.4033 13.5836 11.0228 13.209 10.4163 13.209C9.82167 13.209 9.42924 13.5836 9.42924 14.1603Z"
                                              fill="#CCCCCC"></path>
                                    </svg>
                                </button>
                            </span>
                        <p class="css-1jali72 e17iylht2">
                            원산지:${product.origin}
                        </p>
                        <div class="css-toq1xn e1hhkg2t2">로그인 후, 적립 혜택이 제공됩니다.</div>
                        <div href="https://www.kurly.com/member/membership" class="css-362vkr e1hhkg2t1">
                            <p class="css-1pf406l e1hhkg2t0">
                                <strong>2,000원적립금 + 할인 쿠폰 받고 구매하기</strong>
                            </p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                 viewBox="0 0 24 24">
                                <defs>
                                    <path id="gfk9q0rhta" d="M1.657 1.657L9.657 1.657 9.657 9.657"></path>
                                </defs>
                                <g fill="none" fill-rule="evenodd">
                                    <g>
                                        <g>
                                            <g>
                                                <g transform="translate(-339 -398) translate(0 386) translate(339 12) translate(4.69 6.343)">
                                                    <use stroke="#5f0080" stroke-linecap="round" stroke-width="1.2"
                                                         stroke-linejoin="round" transform="rotate(45 5.657 5.657)"
                                                         xlink:href="#gfk9q0rhta"></use>
                                                </g>
                                            </g>
                                        </g>
                                    </g>
                                </g>
                            </svg>
                        </div>
                        <ul class="css-iqoq9n e6qx2kx2">
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">배송</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">샛별배송</p>
                                    <p class="css-uy94b2 e6qx2kx0">23시 전 주문 시 내일 아침 7시 전 도착
                                        (대구·부산·울산 샛별배송 운영시간 별도 확인)</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">판매자</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.seller}</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">포장타입</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.pack_type}</p>
                                    <p class="css-uy94b2 e6qx2kx0">택배배송은 에코 포장이 스티로폼으로 대체됩니다.</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">판매단위</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.sales_unit}</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">중량/용량</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.weight}</p>
                                </dd>
                            </li>
                            <li class="css-e6zlnr epzddad2">
                                <dt class="css-lytdfk epzddad1">유통기한(또는 소비기한)정보</dt>
                                <dd class="css-1k8t52o epzddad0">
                                    <p class="css-c02hqi e6qx2kx1">${product.exp_date}</p>
                                </dd>
                            </li>
                        </ul>
                        <div class="css-1bp09d0 e17iylht1">
                            <div class="css-2lvxh7 e1qy0s5w0">
                                <li class="css-e6zlnr epzddad2">
                                    <dt class="css-lytdfk epzddad1">상품선택</dt>
                                    <dd class="css-1k8t52o epzddad0">
                                        <div class="cart-option-item css-1cb5lnc e1bjklo18">
                                            <div class="css-1qdyvok e1bjklo16">
                                                <span class="css-1yojl0t e1bjklo14">${product.prod_name}</span>
                                            </div>
                                            <span class="css-1072618 e1bjklo13">적립상품</span>
                                            <div class="css-tk6lxo e1bjklo15">
                                                <div class="css-nx0orh e1cqr3m40">
                                                    <button type="button" aria-label="수량내리기"
                                                            class="css-8azp8 e1hx75jb0"></button>
                                                    <div class="count css-6m57y0 e1cqr3m41">1</div>
                                                    <button type="button" aria-label="수량올리기"
                                                            class="css-18y6jr4 e1hx75jb0"></button>
                                                </div>
                                                <div class="css-1jzvrpg e1bjklo12">
                                                    <span class="css-fburr9 e1bjklo11">${product.prod_price}원</span>
                                                    <span class="css-gqkxk8 e1bjklo10">${product.disc_price}원</span>
                                                </div>
                                            </div>
                                        </div>
                                    </dd>
                                </li>
                            </div>
                            <div class="css-9y0nwt e17iylht0">
                                <div class="css-ixlb9s eebc7rx8">
                                    <div class="css-yhijln eebc7rx7">
                                        <span class="css-w1is7v eebc7rx6">총 상품금액 :</span>
                                        <span class="css-x4cdgl eebc7rx5">${product.disc_price}</span>
                                        <span class="css-1jb8hmu eebc7rx4">원</span>
                                    </div>
                                    <div class="css-1iis94s eebc7rx3">
                                        <span class="css-12p95ok eebc7rx2">적립</span>
                                        <span class="css-10e9px3 eebc7rx1">로그인 후, 적립 혜택 제공</span>
                                    </div>
                                </div>
                            </div>
                            <div class="css-gnxbjx e10vtr1i2">
                                <button class="css-3z91zj e4nu7ef3" type="button" width="56" height="56" radius="3">
                                            <span class="css-nytqmg e4nu7ef1">
                                                <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0yNS44MDcgNy44NjNhNS43NzcgNS43NzcgMCAwIDAtOC4xNzIgMEwxNiA5LjQ5N2wtMS42MzUtMS42MzRhNS43NzkgNS43NzkgMCAxIDAtOC4xNzMgOC4xNzJsMS42MzQgMS42MzQgNy40NjYgNy40NjdhMSAxIDAgMCAwIDEuNDE1IDBzMCAwIDAgMGw3LjQ2Ni03LjQ2N2gwbDEuNjM0LTEuNjM0YTUuNzc3IDUuNzc3IDAgMCAwIDAtOC4xNzJ6IiBzdHJva2U9IiM1RjAwODAiIHN0cm9rZS13aWR0aD0iMS42IiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIvPgo8L3N2Zz4K"
                                                     alt class="css-0">
                                            </span>
                                </button>
                                <button class="css-3z91zj e4nu7ef3" type="button" disabled width="56" height="56"
                                        radius="3">
                                            <span class="css-nytqmg e4nu7ef1">
                                                <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMzIiIGhlaWdodD0iMzIiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHN0cm9rZT0iI0NDQyIgc3Ryb2tlLXdpZHRoPSIxLjYiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTEyLjY2NiAyM2EzLjMzMyAzLjMzMyAwIDEgMCA2LjY2NiAwIi8+CiAgICAgICAgPHBhdGggZD0iTTI1Ljk5OCAyMi43MzhINmwuMDEzLS4wM2MuMDc2LS4xMzUuNDcxLS43MDQgMS4xODYtMS43MDlsLjc1LTEuMDV2LTYuNjM1YzAtNC40ODUgMy40MzgtOC4xNCA3Ljc0MS04LjMwOEwxNiA1YzQuNDQ2IDAgOC4wNSAzLjcyMiA4LjA1IDguMzE0djYuNjM0bDEuNzA3IDIuNDExYy4xNzMuMjUzLjI1NC4zOC4yNDIuMzh6IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiLz4KICAgIDwvZz4KPC9zdmc+Cg=="
                                                     alt class="css-0">
                                            </span>
                                </button>
                                <div class="css-14jnwd7 e10vtr1i0">
                                    <button class="cart-button css-1qirdbn e4nu7ef3" type="button" radius="3">
                                        <span class="css-nytqmg e4nu7ef1">장바구니 담기</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </section>
                </main>
            </div>
        </div>
    </div>
</div>
</div>
<script src="/resources/product/js/product.js"></script>
</body>
</html>
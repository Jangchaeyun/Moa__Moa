<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="moamoa.post.PostDAO"%>
<%@page import="moamoa.post.PostDTO"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Recipe Moa Moa</title>
        <link
            href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap"
            rel="stylesheet">

        <!-- CSS Styles -->
        <link rel="stylesheet" href="../css/bootstrap.min.css" type="text/css">
        <link rel="stylesheet" href="../css/font-awesome.min.css" type="text/css">
        <link rel="stylesheet" href="../css/elegant-icons.css" type="text/css">
        <link rel="stylesheet" href="../css/nice-select.css" type="text/css">
        <link rel="stylesheet" href="../css/jquery-ui.min.css" type="text/css">
        <link rel="stylesheet" href="../css/owl.carousel.min.css" type="text/css">
        <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
        <link rel="stylesheet" href="https://use.typekit.net/puo4qmu.css">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../css/mypage/mypage.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" type="text/css" href="../css/login_signup/signup.css">
        <link
            href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">
            
        <!--로그인 팝업창 관련 css, jquery 코드-->
        <link rel="stylesheet" href="../css/inquire/inquire_style.css" type="text/css">
        <link rel="stylesheet" href="./css/inquire/inquire_default.css" type="text/css">
        <!--로그인 팝업창 div 코드 css 파일-->
        <link rel="stylesheet" href="../css/login_signup/logindiv_default2.css" type="text/css">
        <link rel="stylesheet" href="../css/login_signup/logindiv_style2.css" type="text/css">
        <link rel="stylesheet" href="../css/slide.css">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <!-- luna herina script start -->
        <script type="text/javascript">
            !function (h, e, a, r, i, n, c) {
                c = function () {};
                i = e.createElement(a);
                i.async = !0;
                i.src = r;
                i.onload = c;
                n = e.getElementsByTagName(a)[0];
                n
                    .parentNode
                    .insertBefore(i, n);
                if (h.hearinaJs) {
                    c();
                    return;
                }
            }(window, document, 'script', '//cdn.hearina.com/js/luna_hearina_v.0.4.js');
        </script>

    </head>
<body>
        <div class="humberger__menu__overlay"></div>
        <div class="humberger__menu__wrapper">
            <div class="humberger__menu__logo">
                <a href="#">RECIPE MOA MOA</a>
            </div>
            <div class="humberger__menu__cart">
                <ul>
                    <li>
                        <a href="../indcompage/wish_list.html">
                            <i class="fa fa-heart"></i>
                            <span>1</span></a>
                    </li>
                    <li>
                        <a href="../indcompage/order.html">
                            <i class="fa fa-shopping-bag"></i>
                            <span>3</span></a>
                    </li>
                </ul>
                <div class="header__cart__price">총 주문가격
                    <span>15000</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__auth">
                    <a href="./login.html">
                        <i class="fa fa-user"></i>
                        로그인</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
               <ul>
                                <li class="active">
                                    <a href="../mainpage/index.html">홈</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/shop_grid.html">밀키트</a> -->
                                    <a href="../jsp/products.jsp">밀키트</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/order.html">주문하기</a> -->
                                    <a href="../jsp/cart.jsp">주문하기</a>
                                </li>
<!--                                 <li>
                                    <a href="../indcompage/milkit_post_list.html">게시판</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../indcompage/milkit_post_list.html">레시피</a>
                                        </li>
                                        <li>
                                            <a href="../indcompage/milkitX_post_list.html">자유</a>
                                        </li>
                                        <li>
                                            <a href="../indcompage/talk_list.html">토크</a>
                                        </li>
                                    </ul>
                                </li> -->
                                <li>
                                    <a href="../jsp/post_list.jsp">게시판</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../jsp/post_list.jsp">레시피</a>
                                        </li>
                                    </ul>
            </nav>
            <div id="mobile-menu-wrap"></div>
            <div class="header__top__right__social">
                <a href="#">
                    <i class="fa fa-facebook"></i>
                </a>
                <a href="#">
                    <i class="fa fa-twitter"></i>
                </a>
                <a href="#">
                    <i class="fa fa-linkedin"></i>
                </a>
            </div>
            <div class="humberger__menu__contact">
                <ul>
                    <li>
                        <i class="fa fa-envelope"></i>
                        hello@bc.kr</li>
                    <li>10000이상 무료배송</li>
                </ul>
            </div>
        </div>
        <!-- Humberger End -->

        <!-- Header Section Begin -->
        <header class="header">
            <div class="header__top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__left">
                                <ul>
                                    <li>
                                        <i class="fa fa-envelope"></i>
                                        hello@bc.kr</li>
                                    <li>10000이상 무료배송</li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <div class="header__top__right">
                                <div class="header__top__right__social">
                                    <a href="#">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                </div>
                               	<div class="header__top__right__auth" class="open">
                                    <a href="#a" class="open">
                                        <i class="fa fa-user"></i>
                                        개인&nbsp;&nbsp;</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="#a" class="open">
                                        기업&nbsp;&nbsp;</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="#a" class="open">
                                        운영자</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a>
                                        ← 로그인</a> <!--이민영- 로그인하는 곳인 것을 알 수 있게 화살표 추가-->
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--이민영: 로그인 팝업창 div 코드 작성-->
            <div class="popup">
                <body>
                    <section class="login">
                      <h2>관리자 접속</h2>
                        <br>
                        <h5>관리자로 접속하시겠습니까?</h5>
                        <br>
                        <li><button onclick="location.href='../jsp/contract.jsp';">관리자 접속</button></li>
                      </div>
                    </section>
                  </body>
            </div>
            <div class="dim"></div>
     
            
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="header__logo">
                            <a href="../mainpage/index.html"><img src="../img/logo2.png"></a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <nav class="header__menu">
                                      <ul>
                                <li class="active">
                                    <a href="../mainpage/index.html">홈</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/shop_grid.html">밀키트</a> -->
                                    <a href="../jsp/products.jsp">밀키트</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/order.html">주문하기</a> -->
                                    <a href="../jsp/cart.jsp">주문하기</a>
                                </li>
                                <li>
                                    <a href="../jsp/post_list.jsp">게시판</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../jsp/post_list.jsp">레시피</a>
                                        </li>
                                    </ul>
                                </li>
                              </ul>
                        </nav>
                    </div>
                    <div class="col-lg-3">
                        <div class="header__cart">
                            <ul>
                                <li>
                                    <a href="../indcompage/wish_list.html">
                                        <i class="fa fa-heart"></i>
                                        <span>1</span></a>
                                </li>
                                <li>
                                    <a href="../indcompage/order.html">
                                        <i class="fa fa-shopping-bag"></i>
                                        <span>3</span></a>
                                </li>
                            </ul>
                            <div class="header__cart__price">총 주문가격
                                <span>15000</span></div>
                        </div>
                    </div>
                </div>
                <div class="humberger__open">
                    <i class="fa fa-bars"></i>
                </div>
            </div>
        </header>

        <section class="hero">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="hero__categories">
                            <div class="hero__categories__all">
                                <i class="fa fa-bars"></i>
                                <span>카테고리</span>
                            </div>
                            <ul>
                                <li>
                                    <a href="#">양식</a>
                                </li>
                                <li>
                                    <a href="#">중식</a>
                                </li>
                                <li>
                                    <a href="#">한식</a>
                                </li>
                                <li>
                                    <a href="#">일식</a>
                                </li>
                                <li>
                                    <a href="#">디저트</a>
                                </li>
                                <li>
                                    <a href="#">기타</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="../jsp/search.jsp">
                                    <input type="text" name="search_keyword" placeholder="무엇을 검색하시겠습니까?">
                                    <button type="submit" class="site-btn">찾기</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>010-1234-5678</h5>
                                    <span>매일 24시간 전화 가능</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
            <h2 class="subtitle" id="sub1"style="padding-top:100px !important; ">레시피 게시판</h2>
                        <br>
				<%
					PostDAO dao = new PostDAO();
					List<PostDTO> result = dao.getAllPostDatas();
					//System.out.println(result.size());
				%>
				<table style="text-align: center; border: 1px solid #dddddd ; width: 100%; height: 600px;">
				<thead>
					<tr>
						<th>제목</th>
						<th>날짜</th>
						<th>내용</th>
					</tr>
				</thead>
					<tbody>
						<%for(int i=0; i< result.size(); i++){%>
							 <tr>
							 <td><a href="postDetail.jsp?postTitle=<%= result.get(i).getTitle()%>"><%=result.get(i).getTitle() %></a></td>
						     <td><%=result.get(i).getDate() %></td>
						     <td><%=result.get(i).getContent() %></td>
						     </tr>
						<%	 
						} 
						%>
					</tbody>
				</table>
					<span class="box_btn w144 h45 fs15"><a href="../indcompage/post_write.html">글쓰기</a></span>
					
			</div>
			
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>    
            <script src="../js/bootstrap.min.js"></script>
            <script src="../js/jquery.nice-select.min.js"></script>
            <script src="../js/jquery-ui.min.js"></script>
            <script src="../js/jquery.slicknav.js"></script>
            <script src="../js/mixitup.min.js"></script>
            <script src="../js/owl.carousel.min.js"></script>
            <script src="../js/main.js"></script>
            <script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
            <script src="../js/jquery-ui.js"></script>
            <script type="text/javascript" src="../js/jquery.form.min.js"></script>
            <script type="text/javascript" src="../js/clipboard.js"></script>
    
            <script type="text/javascript" src="../js/swiper.min.js"></script>
            <script type="text/javascript" src="../js/slick.min.js"></script>
            <script type="text/javascript" src="../js/ion.rangeSlider.js"></script>
            <script type="text/javascript" src="../js/jquery.countdown.min.js"></script>
            <script type="text/javascript" src="../js/cookie.js"></script>
            <script type="text/javascript" src="../js/script.js"></script>
            <script type="text/javascript" src="../js/custom.js"></script>
            <script type="text/javascript" src="../js/goods.js"></script>
            <script type="text/javascript" src="../js/buy.js"></script>
            <script type="text/javascript" src="../js/member.js"></script>
            <script type="text/javascript" src="../js/order.js"></script>
            <script type="text/javascript" src="../js/site.js"></script>
            <script type="text/javascript" src="../js/giftCard.js"></script>
            <script type="text/javascript" src="../js/scm.js"></script>
            <script type="text/javascript" src="../js/review.js"></script>
        </body>
</html>
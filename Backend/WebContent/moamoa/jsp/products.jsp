<%-- <%@page import="kr.gov.dto.Product"%> --%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Calendar"%>
<%@page import="moamoa.product.ProductDTO"%>
<%@page import="moamoa.product.ProductDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="productDAO" class="moamoa.product.ProductDAO" scope="session"/>

<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
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
                <div class="header__cart__price">??? ????????????
                    <span>15000</span></div>
            </div>
            <div class="humberger__menu__widget">
                <div class="header__top__right__auth">
                    <a href="./login.html">
                        <i class="fa fa-user"></i>
                        ?????????</a>
                </div>
            </div>
            <nav class="humberger__menu__nav mobile-menu">
                            <ul>
                                <li class="active">
                                    <a href="../mainpage/index.html">???</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/shop_grid.html">?????????</a> -->
                                    <a href="../jsp/products.jsp">?????????</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/order.html">????????????</a> -->
                                    <a href="../jsp/cart.jsp">????????????</a>
                                </li>
                                <li>
                                    <a href="../jsp/post_list.jsp">?????????</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../jsp/post_list.jsp">?????????</a>
                                        </li>
                                    </ul>
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
                    <li>10000?????? ????????????</li>
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
                                    <li>10000?????? ????????????</li>
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
                                <div class="header__top__right__auth">
                                    <a href="../???????????????/ind_login.html">
                                        <i class="fa fa-user"></i>
                                        ??????&nbsp;&nbsp;</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="../????????????????????????????????????/corp_login.html">
                                        ??????&nbsp;&nbsp;</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a href="../???????????????????????????????????????/op_login.html">
                                        ?????????</a>
                                </div>
                                <div class="header__top__right__auth">
                                    <a>
                                        ??? ?????????</a> <!--?????????- ??????????????? ?????? ?????? ??? ??? ?????? ????????? ??????-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
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
                                    <a href="../mainpage/index.html">???</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/shop_grid.html">?????????</a> -->
                                    <a href="../jsp/products.jsp">?????????</a>
                                </li>
                                <li>
                                    <!-- <a href="../indcompage/order.html">????????????</a> -->
                                    <a href="../jsp/cart.jsp">????????????</a>
                                </li>
<!--                                 <li>
                                    <a href="../indcompage/milkit_post_list.html">?????????</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../indcompage/milkit_post_list.html">?????????</a>
                                        </li>
                                        <li>
                                            <a href="../indcompage/milkitX_post_list.html">??????</a>
                                        </li>
                                        <li>
                                            <a href="../indcompage/talk_list.html">??????</a>
                                        </li>
                                    </ul>
                                </li> -->
                                <li>
                                    <a href="../jsp/post_list.jsp">?????????</a>
                                    <ul class="header__menu__dropdown">
                                        <li>
                                            <a href="../jsp/post_list.jsp">?????????</a>
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
                            <div class="header__cart__price">??? ????????????
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
                                <span>????????????</span>
                            </div>
                            <ul>
                                <li>
                                    <a href="#">??????</a>
                                </li>
                                <li>
                                    <a href="#">??????</a>
                                </li>
                                <li>
                                    <a href="#">??????</a>
                                </li>
                                <li>
                                    <a href="#">??????</a>
                                </li>
                                <li>
                                    <a href="#">?????????</a>
                                </li>
                                <li>
                                    <a href="#">??????</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="hero__search">
                            <div class="hero__search__form">
                                <form action="../jsp/search.jsp">
                                    <input type="text" name="search_keyword" placeholder="????????? ?????????????????????????">
                                    <button type="submit" class="site-btn">??????</button>
                                </form>
                            </div>
                            <div class="hero__search__phone">
                                <div class="hero__search__phone__icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="hero__search__phone__text">
                                    <h5>010-1234-5678</h5>
                                    <span>?????? 24?????? ?????? ??????</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	
		<div class="contaner">
			<h2 class="subtitle" id="sub1"style="padding-top:100px !important; ">????????????</h2>
		</div>
	
	
	<%
		//???????????? ?????????
		ProductDAO dao = new ProductDAO();
		ArrayList<ProductDTO> product = dao.getAllProduct();
		
	%>
	
	<div class="container">
		<div class="row" align="center">
			<%
				for(int i = 0; i<product.size(); i++){
					/* ProductDTO product = listOfProduct.get(i); */
					System.out.println(i);
					
			%>
			<div class="col-md-4">
				<hr>
				<h3><a href="product.jsp?productTitle=<%= product.get(i).getMealkit_title() %>"><%= product.get(i).getMealkit_title() %></a></h3>
				<h3><%=product.get(i).getMain_ingredient() %></h3>
				<h3><%=product.get(i).getMealkit_price() %></h3>
				<hr>
			</div>			 
			<%
				}
			%>
			
		</div>
        <hr>
	</div>
	
	<%-- <jsp:include page="footer.jsp"/> --%>
</body>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <link
                    href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                    rel="stylesheet">
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
                <title>Tìm Kiếm Chỗ Ở Online</title>
                <link href="/css/bootstrap.min.css" rel="stylesheet">
                <link rel="stylesheet" href="/css/fontawesome.css">
                <link rel="stylesheet" href="/css/templatemo-villa-agency.css">
                <link rel="stylesheet" href="/css/owl.css">
                <link rel="stylesheet" href="/css/animate.css">
                <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
                <style>
                    .deposit-list {
                        display: flex;
                        justify-content: space-around;
                    }

                    .radio-deposit {
                        padding: 5px;
                        display: flex;
                        align-items: center;
                        background-color: white;
                        color: white;
                        border: 1px #8d8d8d solid;
                        border-radius: 8px;
                        padding: 5px 10px 5px 10px;
                    }

                    .radio-deposit p {
                        margin-left: 20px;
                    }
                </style>
            </head>

            <body>
                <div id="js-preloader" class="js-preloader">
                    <div class="preloader-inner">
                        <span class="dot"></span>
                        <div class="dots">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
                <div class="sub-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-md-8">
                                <ul class="info">
                                    <li><i class="fa fa-envelope"></i> kiemtro247.com</li>
                                    <li><i class="fa fa-map"></i>Nghệ An, Việt Nam</li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <ul class="social-links">
                                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                                    <li><a href="https://x.com/minthu" target="_blank"><i
                                                class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../client/layout/header.jsp" />
                <div class="page-heading header-text">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <span class="breadcrumb"><a href="#">Home</a> / PROFILE</span>
                                <h3>Trang Cá Nhân</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section best-deal">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="section-heading">
                                    <h6>| DEPOSIT</h6>
                                    <h2>NẠP TIỀN TÀI KHOẢN</h2>
                                </div>
                            </div>
                            <div class="deposit-list">
                                <div class="radio-deposit">
                                    <div><input class="form-check-input" type="radio" id="acreage_1" name="area"
                                            value="duoi-20m-vuong"></div>

                                    <div>
                                        <p>Dưới 20 m2</p>
                                    </div>
                                </div>

                                <div class="radio-deposit">
                                    <label class="radio" for="acreage_1">
                                        <input class="form-check-input" type="radio" id="acreage_1" name="area"
                                            value="duoi-20m-vuong">
                                        <span></span>
                                        <p>Dưới 20 m2</p>
                                    </label>
                                </div>

                                <div class="radio-deposit">
                                    <label class="radio" for="acreage_1">
                                        <input class="form-check-input" type="radio" id="acreage_1" name="area"
                                            value="duoi-20m-vuong">
                                        <span></span>
                                        <p>Dưới 20 m2</p>
                                    </label>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <jsp:include page="../client/layout/footer.jsp" />
                <script src="/jquery/jquery.min.js"></script>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/isotope.min.js"></script>
                <script src="/js/owl-carousel.js"></script>
                <script src="/js/counter.js"></script>
                <script src="/js/custom.js"></script>

            </body>

            </html>
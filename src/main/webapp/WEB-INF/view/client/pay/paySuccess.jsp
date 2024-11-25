<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
                        body {
                            background-color: #f4f4f4;
                        }

                        .body-pay {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            margin: auto;
                            margin-top: 30px;
                            padding: 60px;
                            text-align: center;
                            background-color: white;
                            width: 40%;
                            border-radius: 8px;
                            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
                        }

                        .body-pay span {
                            font-weight: 600;
                            color: #198754;
                            font-size: 22px;
                        }

                        .body-pay p {
                            font-size: 16px;
                            padding-bottom: 10px;
                        }

                        .pay-notication {
                            display: block;
                        }

                        .info-detail {
                            display: flex;
                            padding-top: 20px;
                            justify-content: space-between;
                            border-bottom: 2px #f4f4f4 solid;
                        }

                        .info-detail span {
                            font-weight: 600;
                            font-size: 18px;
                            color: black;
                        }

                        .pay-button {
                            margin-top: 30px;
                        }

                        .pay-button a {
                            width: 100%;
                            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                            font-weight: 500;
                            font-size: 16px;
                            border-radius: 4px;
                            margin-bottom: 10px;
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
                    <jsp:include page="../layout/header.jsp" />
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

                    <div class="container">
                        <div class="body-pay">
                            <div class="pay-notication">
                                <div style="margin-bottom: 20px;" class="row"><span><i
                                            class="fa-solid fa-circle-check fa-2xl" style="color: #198754;"></i></span>
                                </div>
                                <span>GIAO DỊCH THÀNH CÔNG!</span>
                            </div>
                            <div class="pay-info">
                                <div class="info-detail">
                                    <p>Mã giao dịch:</p>
                                    <span>${transactionId}</span>
                                </div>
                                <div class="info-detail">
                                    <p>Cổng thanh toán:</p>
                                    <span>VNPAY</span>
                                </div>
                                <div class="info-detail">
                                    <p>Nội dung:</p>
                                    <span>${orderInfo}</span>
                                </div>
                                <div class="info-detail">
                                    <p>Số tiền:</p>
                                    <span>
                                        <fmt:formatNumber value="${totalPrice}" /> VNĐ
                                    </span>
                                </div>
                                <div class="info-detail">
                                    <p>Thời gian giao dịch:</p>
                                    <span>${paymentTime}</span>
                                </div>

                                <div class="pay-button">
                                    <a href="/" class="btn btn-primary">Về trang chủ</a>
                                    <a href="/profile">Xem lịch sử giao dịch</a>
                                </div>
                            </div>
                        </div>

                    </div>


                    <jsp:include page="../layout/footer.jsp" />
                    <script src="/jquery/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/isotope.min.js"></script>
                    <script src="/js/owl-carousel.js"></script>
                    <script src="/js/counter.js"></script>
                    <script src="/js/custom.js"></script>

                </body>

                </html>
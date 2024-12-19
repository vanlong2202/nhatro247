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
                    <title>Bản tin lưu - TroNhanh247</title>
                    <link href="/css/bootstrap.min.css" rel="stylesheet">
                    <link href="/images/icon.png" rel="icon">
                    <link rel="stylesheet" href="/css/fontawesome.css">
                    <link rel="stylesheet" href="/css/templatemo-villa-agency.css">
                    <link rel="stylesheet" href="/css/owl.css">
                    <link rel="stylesheet" href="/css/animate.css">
                    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
                    <style>
                        body {
                            background-color: #f4f4f4;
                        }

                        .save-item {
                            display: flex;
                            background-color: rgb(255, 255, 255);
                            border-radius: 8px;
                            padding: 20px;
                            margin: 10px;
                            transition: box-shadow 0.3s ease;
                        }

                        .save-item:hover {
                            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.3);
                        }

                        .save-item:hover img {
                            transform: scale(1.1);
                        }

                        .save-item:hover .save-item-title {
                            color: #0045a8;
                        }

                        .save-item-img {
                            position: relative;
                            width: 28%;
                            height: 200px;
                            border-radius: 8px;
                            overflow: hidden;
                        }

                        .save-item-img img {
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                            transition: transform 0.5s ease;
                        }

                        .svip-label {
                            position: absolute;
                            top: 10px;
                            left: 10px;
                            color: #fff;
                            font-size: 14px;
                            font-weight: bold;
                            padding: 5px 10px;
                            border-radius: 5px;
                            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
                            text-transform: uppercase;
                        }



                        .save-item-context {
                            margin-left: 20px;
                            padding: 10px;
                            width: 72%;
                            height: 100%;
                        }

                        .save-item-context span {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 18px;
                        }

                        .save-item-context p {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-size: 14px;
                            font-weight: 400;
                        }

                        .save-item-button {
                            margin-top: 10px;
                            margin-bottom: 10px;
                        }

                        .save-item-button button {
                            border: none;
                            padding: 8px;
                            border-radius: 4px;
                            background-color: #f4f4f4;
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 14px;
                        }

                        .save-item-title {
                            margin-bottom: 10px;
                        }

                        .item-button {
                            border: none;
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 14px;
                            color: #4d4d4d;
                            background-color: #f4f4f4;
                            padding: 10px;
                            width: 111px;
                            border-radius: 5px;
                        }

                        .save-item-submit {
                            width: 40%;
                            text-align: end;
                        }

                        .item {
                            height: 100%;
                            display: flex;
                            align-items: center;
                            justify-content: space-between;
                        }

                        footer {
                            margin-top: 0;
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
                                    <span class="breadcrumb"><a href="">Home</a> / NEWSLETTER SAVE</span>
                                    <h3>BẢN TIN ĐÃ LƯU</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="best-deal">
                        <div class="container">
                            <div class="row">
                                <div style="margin-top: 20px;margin-bottom: 20px;" class="section-heading">
                                    <h6>| NEWSLETTER SAVE</h6>
                                    <h2>BẢN TIN ĐÃ LƯU</h2>
                                </div>
                                <c:if test="${empty save}">
                                    <div class="notication-error">
                                        <span>Không tìm thấy kết quả</span>
                                    </div>
                                </c:if>
                                <c:forEach var="news" items="${save}">
                                    <div class="save-item">
                                        <div class="save-item-img">
                                            <img src="/uploads/${news.newsletter.image1}" alt="">
                                            <label class="svip-label"><i class="fa-solid fa-heart fa-beat"
                                                    style="color: #ff007b;"></i></label>
                                        </div>
                                        <div class="save-item-context">
                                            <div class="save-item-title">
                                                <span>${news.newsletter.title} <i
                                                        class="fa-solid fa-circle-check fa-fade"
                                                        style="color: #0091ff;"></i></span>
                                            </div>
                                            <div>
                                                <div class="item">
                                                    <div>
                                                        <p>từ <span style="color: brown;">
                                                                <fmt:formatNumber value="${news.newsletter.price}" />
                                                                vnd/tháng<span></p>
                                                        <div class="save-item-button">
                                                            <button> ${news.newsletter.format}</button>
                                                            <button> ${news.newsletter.newsletterType.name}</button>
                                                        </div>

                                                        <p><i class="fa-solid fa-fire fa-beat"
                                                                style="color: #f01414;"></i>
                                                            ${news.newsletter.addressDetail},
                                                            ${news.newsletter.newsletterAddress}
                                                        </p>
                                                    </div>

                                                    <div class="save-item-submit">
                                                        <a href="/newsletter-detail/${news.newsletter.newsletterID}"
                                                            class="item-button btn-detail"><i class="fa-solid fa-eye"
                                                                style="color: #006ec2;"></i> Xem chi Tiết</a>
                                                        <a href="/newsletter-follow/${news.newsletter.newsletterID}"
                                                            class="item-button btn-delete"><i
                                                                class="fa-solid fa-trash fa-bounce"
                                                                style="color: #ff0000;"></i> Xóa bản tin</a>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>

                                    </div>

                                </c:forEach>
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
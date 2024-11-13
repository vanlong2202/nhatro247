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
                    body {
                        background-color: #f4f4f4;
                    }

                    .header-blog {
                        padding-top: 10px;
                        padding-bottom: 20px;
                    }

                    .container-blog {
                        width: 100%;
                        height: auto;
                        background-color: white;
                        border-radius: 8px;
                        margin-top: 20px;
                        padding: 20px;
                    }

                    .blog-items {
                        margin-bottom: 20px;
                        display: flex;
                        height: 210px;
                        border-radius: 8px;
                        border: 1px solid #eaeaea;
                        overflow: hidden;
                        box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                    }

                    span.text-title {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 600;
                        font-size: 22px;
                    }

                    .item-info {
                        display: flex;
                    }

                    .item-info p {
                        font-size: 12px;
                        padding-bottom: 10px;
                    }

                    .items-context {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        margin: 20px;
                        align-items: center;
                    }

                    .items-img {
                        width: 50%;
                        overflow: hidden;
                    }

                    .items-img img {
                        width: 100%;
                        height: 100%;
                        object-fit: cover;
                        transition: transform 0.3s ease;
                    }


                    .text-span {
                        padding-bottom: 10px;
                    }

                    .blog-items:hover {
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                    }

                    .blog-items:hover img {
                        transform: scale(1.1);
                    }

                    .blog-items:hover span {
                        color: #0045a8;
                    }

                    .news-context {
                        display: flex;
                        justify-content: space-evenly;
                        padding-bottom: 3%;
                    }

                    .news-items img {
                        width: 100%;
                        height: 180px;
                        object-fit: cover;
                        transition: transform 0.3s ease;
                    }

                    .news-items {
                        width: 22%;
                        height: auto;
                        background-color: white;
                        border-radius: 8px;
                        border: 1px solid #eaeaea;
                        overflow: hidden;
                    }

                    .news-items-detail {
                        padding: 12px 10px;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 600;
                        display: flex;
                    }

                    .news-items:hover span {
                        color: #00b7ff;
                    }

                    .news-items:hover img {
                        transform: scale(1.1);
                    }

                    .news-items-detail span {
                        font-size: 30px;
                        padding: 5px 10px 5px 10px;
                        font-weight: 900;
                    }

                    .news-img {
                        overflow: hidden;
                    }

                    .news-items-detail a {
                        display: -webkit-box;
                        -webkit-line-clamp: 2;
                        -webkit-box-orient: vertical;
                        overflow: hidden;
                        text-overflow: ellipsis;
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
                                <span class="breadcrumb"><a href="#">Home</a> / BLOG</span>
                                <h3>TIN TỨC</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="container-blog">
                        <div class="header-blog">
                            <h3
                                style="color: #0045a8;font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;">
                                TIN TỨC CẬP NHẬT</h3>
                        </div>
                        <div class="blog-items">
                            <div class="items-img">
                                <img src="/uploads/ha_noi.jpg" alt="">

                            </div>

                            <div class="items-context">
                                <div class="text-span">
                                    <span class="text-title">Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi</span>
                                </div>

                                <div class="item-info">
                                    <p style="margin-right: 20px;">Kinh Nghiệm</p>
                                    <p>12:33:22 22/11/2024</p>
                                </div>
                                <p>
                                    Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi không chỉ giúp tiết kiệm diện
                                    tích mà còn mang lại cảm giác thoáng đãng, nhẹ nhàng. Cùng Tromoi điểm qua những
                                    phong cách thiết kế được nhiều người yêu thích trong bài viết này nhé!
                                </p>
                            </div>
                        </div>
                        <div class="blog-items">
                            <div class="items-img">
                                <img src="/uploads/ha_noi.jpg" alt="">

                            </div>

                            <div class="items-context">
                                <div class="text-span">
                                    <span class="text-title">Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi</span>
                                </div>

                                <div class="item-info">
                                    <p style="margin-right: 20px;">Kinh Nghiệm</p>
                                    <p>12:33:22 22/11/2024</p>
                                </div>
                                <p>
                                    Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi không chỉ giúp tiết kiệm diện
                                    tích mà còn mang lại cảm giác thoáng đãng, nhẹ nhàng. Cùng Tromoi điểm qua những
                                    phong cách thiết kế được nhiều người yêu thích trong bài viết này nhé!
                                </p>
                            </div>
                        </div>
                        <div class="blog-items">
                            <div class="items-img">
                                <img src="/uploads/ha_noi.jpg" alt="">

                            </div>

                            <div class="items-context">
                                <div class="text-span">
                                    <span class="text-title">Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi</span>
                                </div>

                                <div class="item-info">
                                    <p style="margin-right: 20px;">Kinh Nghiệm</p>
                                    <p>12:33:22 22/11/2024</p>
                                </div>
                                <p>
                                    Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi không chỉ giúp tiết kiệm diện
                                    tích mà còn mang lại cảm giác thoáng đãng, nhẹ nhàng. Cùng Tromoi điểm qua những
                                    phong cách thiết kế được nhiều người yêu thích trong bài viết này nhé!
                                </p>
                            </div>
                        </div>
                        <div class="blog-items">
                            <div class="items-img">
                                <img src="/uploads/ha_noi.jpg" alt="">

                            </div>

                            <div class="items-context">
                                <div class="text-span">
                                    <span class="text-title">Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi</span>
                                </div>

                                <div class="item-info">
                                    <p style="margin-right: 20px;">Kinh Nghiệm</p>
                                    <p>12:33:22 22/11/2024</p>
                                </div>
                                <p>
                                    Mẫu thiết kế nhà 30m2 1 tầng đẹp và đầy đủ tiện nghi không chỉ giúp tiết kiệm diện
                                    tích mà còn mang lại cảm giác thoáng đãng, nhẹ nhàng. Cùng Tromoi điểm qua những
                                    phong cách thiết kế được nhiều người yêu thích trong bài viết này nhé!
                                </p>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container">
                    <div class="container-blog">
                        <div class="header-blog">
                            <h3
                                style="margin-left: 30px;color: #0045a8;font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;">
                                TIN TRỌ MỚI</h3>
                        </div>
                        <div class="news-context">
                            <div class="news-items">
                                <div class="news-img">
                                    <img src="/uploads/BIATRO.jpg" alt="">
                                </div>
                                <div class="news-items-detail">
                                    <span>01</span>

                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/BIATRO2.jpg" alt=""></div>

                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/THUMP-TRO-811-01.jpg" alt=""></div>

                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/THUMP-TRO-811-01.jpg" alt=""></div>
                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="container">
                    <div class="container-blog">
                        <div class="header-blog">
                            <h3
                                style="margin-left: 30px;color: #0045a8;font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;">
                                TIN TRỌ MỚI</h3>
                        </div>
                        <div class="news-context">
                            <div class="news-items">
                                <div class="news-img">
                                    <img src="/uploads/BIATRO.jpg" alt="">
                                </div>
                                <div class="news-items-detail">
                                    <span>01</span>

                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/BIATRO2.jpg" alt=""></div>

                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/THUMP-TRO-811-01.jpg" alt=""></div>

                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/THUMP-TRO-811-01.jpg" alt=""></div>
                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="container">
                    <div class="container-blog">
                        <div class="header-blog">
                            <h3
                                style="margin-left: 30px;color: #0045a8;font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;">
                                TIN TRỌ MỚI</h3>
                        </div>
                        <div class="news-context">
                            <div class="news-items">
                                <div class="news-img">
                                    <img src="/uploads/BIATRO.jpg" alt="">
                                </div>
                                <div class="news-items-detail">
                                    <span>01</span>

                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/BIATRO2.jpg" alt=""></div>

                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/THUMP-TRO-811-01.jpg" alt=""></div>

                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
                                </div>
                            </div>
                            <div class="news-items">
                                <div class="news-img"><img src="/uploads/THUMP-TRO-811-01.jpg" alt=""></div>
                                <div class="news-items-detail">
                                    <span>01</span>
                                    <a>Trọ Mới - Giải pháp "F5" công cuộc tìm trọ cho sinh viên và người lao động
                                        thời đại 4.0</a>
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
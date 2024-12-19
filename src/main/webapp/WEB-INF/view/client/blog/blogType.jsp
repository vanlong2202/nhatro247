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
                        flex-wrap: wrap;
                        gap: 25px;
                        justify-content: flex-start;
                        padding-bottom: 3%;
                    }

                    .news-items img {
                        width: 100%;
                        height: 180px;
                        object-fit: cover;
                        transition: transform 0.3s ease;
                    }

                    .news-items {
                        flex: 0 0 calc(25% - 25px);
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

                    .news-items:hover .blog-item-title {
                        color: #0045a8;
                    }

                    .news-items:hover img {
                        transform: scale(1.1);
                    }

                    .news-items:hover {
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
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

                    .blog-context p {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-size: 16px;
                        margin: 5px 0 15px 0;
                    }

                    .blog-context strong {
                        font-size: 18px;
                    }

                    .blog-context img {
                        width: 60%;
                        margin-left: 20%;
                        text-align: center;
                    }

                    .breadcrumbs {
                        margin: 20px 0 20px 0;
                        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                        font-weight: 600;
                        font-size: small;
                    }

                    .breadcrumbs span:hover a {
                        color: chocolate;
                    }

                    .breadcrumbs span a {
                        color: #0045a8;
                    }

                    .breadcrumbs-wrap span:last-child a {
                        color: #5e5e5e;
                    }

                    .time {
                        margin-top: 10px;
                        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                        font-weight: 600;
                        font-size: 12px;
                    }

                    .time span {
                        margin-right: 20px;
                        color: #5e5e5e;
                    }

                    .blog-item-title {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 600;
                        font-size: 18px;
                        margin: 10px;
                        display: -webkit-box;
                        -webkit-box-orient: vertical;
                        overflow: hidden;
                        -webkit-line-clamp: 2;
                        line-height: 1.5;
                        max-height: calc(1.5em * 2);
                    }

                    .blog-item-title a {
                        color: inherit;
                    }

                    .blog-item-type {
                        margin: 10px;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 400;
                        font-size: 14px;
                    }

                    .blog-item-content {
                        margin: 10px;
                        color: #5e5e5e !important;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-size: 16px;
                        display: -webkit-box;
                        -webkit-box-orient: vertical;
                        overflow: hidden;
                        -webkit-line-clamp: 3;
                    }

                    .blog-item-content h3 strong {
                        font-size: 16px;
                        font-weight: normal;
                    }

                    .blog-item-content h2 strong {
                        font-size: 16px;
                        font-weight: normal;
                    }

                    .blog-item-content h1 strong {
                        font-size: 16px;
                        font-weight: normal;
                    }

                    .blog-item-content img {
                        display: none;
                    }

                    .detail-content {
                        display: none;
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
                                <span class="breadcrumb"><a href="#">Home</a> / BLOG</span>
                                <h3>TIN TỨC</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="breadcrumbs">
                        <div class="breadcrumbs-wrap">
                            <span class="item"><a href="/" class="item-link">Trang chủ</a></span>
                            <span class="item sep">/</span>
                            <span class="item"><a href="/blog" class="item-link">Tin Tức</a></span>
                            <span class="item sep">/</span>
                            <span class="item"><a href="" class="item-link">${type.name}</a></span>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="container-blog">
                        <div class="header-blog">
                            <h3
                                style="color: #0045a8;font-family:system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif ;">
                                ${type.name}</h3>
                        </div>

                        <div class="news-context">
                            <c:forEach var="post" items="${listPost}">
                                <div class="news-items">
                                    <div class="news-img">
                                        <img src="/uploads/${post.image}" alt="">
                                    </div>
                                    <div class="blog-context-item">
                                        <div class="blog-item-title">
                                            <a href="/blog-detail/${post.postID}">${post.title}</a>
                                        </div>
                                        <div class="blog-item-type">
                                            <span><i class="fa-solid fa-tag fa-beat" style="color: #ff0000;"></i>
                                                ${post.postType.name}</span>
                                            <span><i class="fa-solid fa-circle fa-2xs" style="color: #454545;"></i>
                                                ${post.createTime}</span>
                                        </div>
                                        <div class="blog-item-content">
                                            <span>${post.content}</span>
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
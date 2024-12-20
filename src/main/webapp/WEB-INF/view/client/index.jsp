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
                    <link href="/images/icon.png" rel="icon">
                    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
                        rel="stylesheet">
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
                    <style>
                        body {
                            background-color: #f4f4f4;
                        }

                        .city-list {
                            box-sizing: border-box;
                            width: 15%;
                            margin: 0;
                            padding: 0;
                            border-radius: 8px;
                            overflow: hidden;
                            background-color: #f4f4f4;
                            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
                        }


                        #collapseTwo .accordion-body {
                            display: -webkit-box;
                            -webkit-line-clamp: 4;
                            -webkit-box-orient: vertical;
                            overflow: hidden;
                            text-overflow: ellipsis;
                            padding-bottom: 0;
                        }

                        .city-text {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-size: 18px;
                            font-weight: 600;
                            margin: 10px;
                            color: black;
                        }

                        .city-list:hover {
                            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                        }

                        .city-list:hover .city-text {
                            color: #00b7ff;

                        }

                        .container-city {
                            display: flex;
                            justify-content: space-between;
                            padding: 0 0 40px 0;
                        }

                        .container-blog {
                            width: 100%;
                            margin: 10px 0;
                            padding: 0;
                            border-radius: 8px;
                            background-color: #f4f4f4;
                        }

                        .header-blog {
                            display: flex;
                            justify-content: space-between;
                            padding: 20px 0;
                            align-items: flex-end;
                        }

                        .header-blog a {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            color: #0045a8;
                        }

                        .blog-context {
                            display: flex;
                            justify-content: flex-start;
                            gap: 1%;
                            padding-bottom: 3%;
                        }

                        .blog-items {
                            width: 24%;
                            height: auto;
                            background-color: white;
                            border-radius: 8px;
                            overflow: hidden;
                        }

                        .blog-items:hover span {
                            color: #00b7ff;
                        }

                        .blog-items img {
                            width: 100%;
                            height: 180px;
                            object-fit: cover;
                        }

                        .blog-items-detail {
                            margin: 15px 10px;
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            display: flex;
                            align-items: center;
                        }

                        .blog-items-detail span {
                            font-size: 30px;
                            padding: 5px 10px 5px 10px;
                            font-weight: 900;
                        }

                        .blog-items-detail a {
                            color: black;
                            display: -webkit-box;
                            -webkit-line-clamp: 2;
                            -webkit-box-orient: vertical;
                            overflow: hidden;
                            text-overflow: ellipsis;
                        }

                        .container-category {
                            background-color: white;
                            border-radius: 8px;
                            padding: 30px 20px;
                            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
                        }

                        .categpry-text {
                            font-size: 16px;
                            color: #595959;
                            font-weight: lighter;
                            line-height: 1.5;
                        }

                        .category-list {
                            display: flex;
                            gap: 20px;
                            flex-wrap: wrap;
                            margin-top: 20px;
                        }

                        .category-item {
                            width: 22%;
                            display: grid;
                        }

                        .category-item__link {
                            font-weight: 500;
                            color: black;
                        }

                        .category-item__link:hover {
                            color: #003694;
                        }

                        .category-item__count {
                            font-weight: lighter;
                            font-size: 13px;
                        }

                        .title-container {
                            font-size: 24px;
                            line-height: 1.5;
                            font-weight: 700;
                            color: #0045a8;
                            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
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
                    <c:if test="${not empty success}">
                        <div class="alert alert-success bg-success text-light border-0 alert-dismissible fade show"
                            role="alert">
                            ${success}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    </c:if>
                    <c:if test="${not empty error}">
                        <div class="alert alert-danger bg-danger text-light border-0 alert-dismissible fade show"
                            role="alert">
                            ${error}
                            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                        </div>
                    </c:if>
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
                    <div class="main-banner">
                        <div class="owl-carousel owl-banner">
                            <div class="item item-1">
                                <div class="header-text">
                                    <span class="category">Hà Nội, Việt Nam <em>2024</em></span>
                                    <h2>TÌM NHANH, KIẾM DỄ TRỌ MỚI TOÀN QUỐC</h2>
                                </div>
                            </div>
                            <div class="item item-2">
                                <div class="header-text">
                                    <span class="category">TP-Hồ Chí Minh, Việt Nam <em>2024</em></span>
                                    <h2>Be Quick!<br>Get the best villa in town</h2>
                                </div>
                            </div>
                            <div class="item item-3">
                                <div class="header-text">
                                    <span class="category">Miami, <em>South Florida</em></span>
                                    <h2>Act Now!<br>Get the highest level penthouse</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- jdj -->

                    <div class="properties section">
                        <div class="container">
                            <div class="properties section">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-4 offset-lg-4">
                                            <div class="section-heading text-center">
                                                <h6>| Bản Tin</h6>
                                                <h2>LỰA CHỌN NỔI BẬT</h2>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div style="background-color: white;border-radius: 8px;" class="container">
                                            <div class="newsletter-container">
                                                <c:forEach var="post" items="${list}">
                                                    <div class="newsletter-items">
                                                        <div class="newsletter-item-img">
                                                            <a href="/newsletter-detail/${post.newsletterID}"><img
                                                                    src="/uploads/${post.image1}" alt=""></a>
                                                            <div class="tag">VIP</div>
                                                            <div class="service-follow">
                                                                <c:set var="isFollowed" value="false" />
                                                                <c:forEach var="save" items="${follow}">
                                                                    <c:if
                                                                        test="${save.newsletter.newsletterID == post.newsletterID}">
                                                                        <c:set var="isFollowed" value="true" />
                                                                    </c:if>
                                                                </c:forEach>
                                                                <c:choose>
                                                                    <c:when test="${isFollowed}">
                                                                        <a
                                                                            href="/newsletter-follow/${post.newsletterID}">
                                                                            <i class="fa-solid fa-heart"
                                                                                style="color: #ff6190;"></i>
                                                                        </a>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <a
                                                                            href="/newsletter-follow/${post.newsletterID}">
                                                                            <i class="fa-solid fa-heart"
                                                                                style="color: #ababab;"></i>
                                                                        </a>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                        </div>
                                                        <div class="newsletter-item-context">
                                                            <div class="newsletter-context-title"><a
                                                                    href="/newsletter-detail/${post.newsletterID}">${post.title}</a>
                                                            </div>

                                                            <div class="newsletter-context-price"><i
                                                                    class="fa-solid fa-money-bill-wave"
                                                                    style="color: #00c721;"></i> <span>
                                                                    <fmt:formatNumber value="${post.price}" />
                                                                    VNĐ/Tháng
                                                                </span></div>
                                                            <div class="newsletter-context-button">
                                                                <button>${post.format}</button>
                                                                <button>${post.acreage} m²</button>
                                                            </div>
                                                            <div class="newsletter-context-address"><span> <i
                                                                        class="fa-solid fa-location-dot fa-beat"
                                                                        style="color: #ff0000;"></i>
                                                                    ${post.newsletterAddress},
                                                                    ${post.addressDetail}</span></div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                            <div class="newsletter-submit"><a href="/service">Xem Tất Cả <i
                                                        class="fa-solid fa-arrow-right-long fa-beat"
                                                        style="color: #003694;"></i></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="featured section">
                                    <div class="container">
                                        <div class="row">

                                            <div class="col-lg-4">
                                                <div style="height: 460px; width: 400px;" class="left-image">
                                                    <img style="height: 100%; width: 100%; object-fit: cover;"
                                                        src="/uploads/${type2.image1}" alt="">
                                                    <a href="property-details.html"><img src="/images/featured-icon.png"
                                                            alt="" style="max-width: 60px; padding: 0px;"></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="section-heading">
                                                    <h6>| NHÀ, CĂN HỘ CHO THUÊ</h6>
                                                    <a href="/newsletter-detail/${type2.newsletterID}">
                                                        <h2
                                                            style="display: -webkit-box;-webkit-line-clamp: 3;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">
                                                            ${type2.title}</h2>
                                                    </a>
                                                </div>
                                                <div class="accordion" id="accordionExample">
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingOne">
                                                            <button class="accordion-button" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                                THÔNG TIN DỊCH VỤ
                                                            </button>
                                                        </h2>
                                                        <div id="collapseOne" class="accordion-collapse collapse  "
                                                            aria-labelledby="headingOne"
                                                            data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                <div>
                                                                    <div>
                                                                        <ul>
                                                                            <li>Phòng khả dụng: <span
                                                                                    style="font-weight: bold;">${type2.vacantRoom}
                                                                                    phòng</span></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div>
                                                                        <ul>
                                                                            <li>Ở tối đa (người/phòng): <span
                                                                                    style="font-weight: bold;">
                                                                                    ${type2.maximum} người
                                                                                </span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div>
                                                                    <div>
                                                                        <ul>
                                                                            <li>Giới tính ưu tiên: <span
                                                                                    style="font-weight: bold;">
                                                                                    <c:if test="${type2.prioritize==0}">
                                                                                        Tất cả
                                                                                    </c:if>
                                                                                    <c:if test="${type2.prioritize==1}">
                                                                                        Nữ
                                                                                    </c:if>
                                                                                    <c:if test="${type2.prioritize==2}">
                                                                                        Nam
                                                                                    </c:if>
                                                                                </span></li>
                                                                        </ul>
                                                                    </div>
                                                                    <div>
                                                                        <ul>
                                                                            <li>Hình Thức Tự Quản: <span
                                                                                    style="font-weight: bold;">
                                                                                    <c:if
                                                                                        test="${type2.selfManagement==1}">
                                                                                        Không
                                                                                    </c:if>
                                                                                    <c:if
                                                                                        test="${type2.selfManagement==2}">
                                                                                        Có
                                                                                    </c:if>
                                                                                </span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                                <div>
                                                                    <div>
                                                                        <ul>
                                                                            <li>Địa chỉ chi tiết: <span
                                                                                    style="font-weight: bold;">
                                                                                    ${type2.addressDetail},
                                                                                    ${type2.newsletterAddress}
                                                                                </span></li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingTwo">
                                                            <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                                aria-expanded="false" aria-controls="collapseTwo">
                                                                MÔ TẢ CHI TIẾT
                                                            </button>
                                                        </h2>
                                                        <div id="collapseTwo" class="accordion-collapse collapse"
                                                            aria-labelledby="headingTwo"
                                                            data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                ${type2.detail}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingThree">
                                                            <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseThree" aria-expanded="false"
                                                                aria-controls="collapseThree">
                                                                THÔNG TIN LIÊN HỆ
                                                            </button>
                                                        </h2>
                                                        <div id="collapseThree" class="accordion-collapse collapse"
                                                            aria-labelledby="headingThree"
                                                            data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                <ul>
                                                                    <li>Tên chủ: <span style="font-weight: bold;">
                                                                            ${type2.account.fullName}
                                                                        </span></li>
                                                                    <li>Số điện thoại: <span style="font-weight: bold;">
                                                                            ${type2.account.phone}
                                                                        </span></li>
                                                                    <li>Email: <span style="font-weight: bold;">
                                                                            ${type2.account.email}
                                                                        </span></li>
                                                                    <li>Facebook: <span style="font-weight: bold;">
                                                                            ${type2.account.facebook}
                                                                        </span></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>
                                                            <img src="/images/info-icon-01.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>
                                                                ${type2.acreage} m²<br><span>Diện tích
                                                                    phòng</span>
                                                            </h4>
                                                        </li>
                                                        <li>
                                                            <img src="/images/info-icon-02.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>${type2.account.phone}<br><span>Số điện thoại liên
                                                                    hệ</span>
                                                            </h4>
                                                        </li>
                                                        <li>
                                                            <img src="/images/info-icon-03.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>
                                                                <fmt:formatNumber value="${type2.price}" />
                                                                VND<br><span>Giá
                                                                    dịch
                                                                    vụ</span>
                                                            </h4>
                                                        </li>
                                                        <li>
                                                            <img src="/images/info-icon-04.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>
                                                                ${type2.format}<br><span>Hình thức</span>
                                                            </h4>
                                                        </li>
                                                    </ul>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>



                                <div class="section best-deal">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="section-heading">
                                                    <h6>| TÌM Ở GHÉP</h6>
                                                    <h2>THÔNG TIN Ở GHÉP</h2>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="tabs-content">
                                                    <div class="row">
                                                        <div class="tab-content" id="myTabContent">
                                                            <div class="tab-pane fade show active" id="appartment"
                                                                role="tabpanel" aria-labelledby="appartment-tab">
                                                                <div class="row">
                                                                    <div class="col-lg-3">
                                                                        <div class="info-table">
                                                                            <ul>
                                                                                <li>DIỆN TÍCH PHÒNG
                                                                                    <span>${type3.acreage} m²</span>
                                                                                </li>
                                                                                <li>PHÒNG Ở TỐI ĐA
                                                                                    <span>${type3.maximum} người</span>
                                                                                </li>
                                                                                <li>GIỚI TÍNH ƯU TIÊN <span>
                                                                                        <c:if
                                                                                            test="${type3.prioritize==0}">
                                                                                            Tất cả
                                                                                        </c:if>
                                                                                        <c:if
                                                                                            test="${type3.prioritize==1}">
                                                                                            Nữ
                                                                                        </c:if>
                                                                                        <c:if
                                                                                            test="${type3.prioritize==2}">
                                                                                            Nam
                                                                                        </c:if>
                                                                                    </span>
                                                                                </li>
                                                                                <li>PHÒNG KHẢ DỤNG
                                                                                    <span>${type3.vacantRoom}
                                                                                        phòng</span>
                                                                                </li>
                                                                                <li>HÌNH THỨC TỰ QUẢN <span>
                                                                                        <c:if
                                                                                            test="${type3.selfManagement==1}">
                                                                                            Không
                                                                                        </c:if>
                                                                                        <c:if
                                                                                            test="${type3.selfManagement==2}">
                                                                                            Có
                                                                                        </c:if>
                                                                                    </span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div style="height: 420px;" class="col-lg-6">
                                                                        <img style="height: 100%; width: 100%; object-fit: cover;"
                                                                            src="/uploads/${type3.image1}" alt="">
                                                                    </div>
                                                                    <div class="col-lg-3">
                                                                        <h3 style="margin-bottom: 30px;">${type3.title}
                                                                        </h3>
                                                                        <p
                                                                            style="line-height: 2;display: -webkit-box;-webkit-line-clamp: 4;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">
                                                                            ${type3.detail}
                                                                        </p>
                                                                        <div class="icon-button">
                                                                            <a
                                                                                href="/newsletter-detail/${type3.newsletterID}"><i
                                                                                    class="fa fa-calendar"></i>XEM CHI
                                                                                TIẾT</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="section-heading text-center mt-5 mb-5">
                            <h3 class="title-container">
                                TỈNH THÀNH NỔI BẬT</h3>
                        </div>
                        <div class="container-city">
                            <div class="city-list">
                                <a href="/service?page=1&address=Hà Nội"><img src="/uploads/ha_noi.jpg" alt="">
                                    <div class="city-text">Hà Nội</div>
                                </a>

                            </div>
                            <div class="city-list">
                                <a href="/service?page=1&address=Hồ Chí Minh"><img src="/uploads/hcm.jpg" alt="">
                                    <div class="city-text">Hồ Chí Minh</div>
                                </a>

                            </div>
                            <div class="city-list">
                                <img src="/uploads/da_nang.jpg" alt="">
                                <div class="city-text">Đà Nẵng</div>
                            </div>
                            <div class="city-list">
                                <a href="/service?page=1&address=Thừa Thiên Huế">
                                    <img src="/uploads/hue.jpg" alt="">
                                    <div class="city-text">Thừa Thiên Huế</div>
                                </a>
                            </div>
                            <div class="city-list">
                                <a href="/service?page=1&address=Cần Thơ">
                                    <img src="/uploads/can_tho.jpg" alt="">
                                    <div class="city-text">Cần Thơ</div>
                                </a>
                            </div>
                            <div class="city-list">
                                <a href="/service?page=1&address=Khánh Hòa">
                                    <img src="/uploads/khanh_hoa.jpg" alt="">
                                    <div class="city-text">Khánh Hòa</div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="container-category">
                            <h3 class="title-container">
                                KHÁM PHÁ TRỌ MỚI Ở CÁC TỈNH THÀNH</h3>
                            <span class="categpry-text">Dưới đây là tổng hợp các tỉnh thành có nhiều trọ mới và được
                                quan tâm nhất</span>
                            <div class="category-list">
                                <c:forEach var="link" items="${itemsLink}">
                                    <div class="category-item">
                                        <a href="/service?page=1&address=${link.address}"
                                            class="category-item__link">${link.address}</a>
                                        <span class="category-item__count">${link.count} phòng trọ</span>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>

                    </div>

                    <div class="container">
                        <div class="container-blog">
                            <div class="header-blog">
                                <h3 class="title-container">
                                    TIN TỨC NỔI BẬT</h3>
                                <a href="/blog" class="button btn-text">Xem thêm <i
                                        class="fa-solid fa-arrow-right-long"></i></a>
                            </div>
                            <div class="blog-context">
                                <c:forEach var="posts" items="${posts}" varStatus="status">
                                    <div class="blog-items">
                                        <img src="/uploads/${posts.image}" alt="">
                                        <div class="blog-items-detail">
                                            <span>0${status.index + 1}</span>
                                            <a href="/blog-detail/${posts.postID}">${posts.title}</a>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="contact section" id="contact-section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 offset-lg-4">
                                    <div class="section-heading text-center">
                                        <h6>| LIÊN HỆ VỚI CHÚNG TÔI</h6>
                                        <h2>Gửi Phản Hồi - Đánh Giá Dịch Vụ Tại Đây</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="contact-content">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div id="map">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.1102349383827!2d105.69317477473831!3d18.659048664930566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3139cddf0bf20f23%3A0x86154b56a284fa6d!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBWaW5o!5e0!3m2!1svi!2s!4v1701333714488!5m2!1svi!2s"
                                            width="100%" height="500px" frameborder="0"
                                            style="border:0; border-radius: 10px; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);"
                                            allowfullscreen=""></iframe>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="item phone">
                                                <img src="/images/phone-icon.png" alt="" style="max-width: 52px;">
                                                <h6>090.999.9999<br><span>Số điện thoại</span></h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="item email">
                                                <img src="/images/email-icon.png" alt="" style="max-width: 52px;">
                                                <h6>tn247@gmail.com<br><span>Email</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <form:form action="/lock" method="post" modelAttribute="f" id="contact-form">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Họ Và Tên</label>
                                                    <form:input type="text" path="fullName" placeholder="Tên của bạn..."
                                                        autocomplete="on" required="required" />
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Email</label>
                                                    <form:input type="email" path="email"
                                                        placeholder="Địa chỉ email của bạn..." autocomplete="on"
                                                        required="required" />
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Tiêu Đề</label>
                                                    <form:input type="text" path="title"
                                                        placeholder="Tiêu đề liên hệ ..." autocomplete="on"
                                                        required="required" />
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Nội Dung Chi Tiết</label>
                                                    <form:textarea type="text" path="context" placeholder="Nội dung ..."
                                                        autocomplete="on" required="required"></form:textarea>
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <button type="submit" id="form-submit"
                                                        class="orange-button">Gửi</button>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="../client/layout/footer.jsp" />
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            var alert = document.querySelector(".alert");
                            if (alert) {
                                alert.classList.add("show");
                                setTimeout(function () {
                                    alert.classList.remove("show");
                                }, 3000);
                            }
                        });
                    </script>
                    <script src="/jquery/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/isotope.min.js"></script>
                    <script src="/js/owl-carousel.js"></script>
                    <script src="/js/counter.js"></script>
                    <script src="/js/custom.js"></script>
                </body>

                </html>
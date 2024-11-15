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
                    <title>Tìm Phòng Dịch Vụ - TroNhanh247</title>
                    <link href="/css/bootstrap.min.css" rel="stylesheet">
                    <link rel="stylesheet" href="/css/fontawesome.css">
                    <link rel="stylesheet" href="/css/templatemo-villa-agency.css">
                    <link rel="stylesheet" href="/css/owl.css">
                    <link rel="stylesheet" href="/css/animate.css">
                    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
                </head>

                <body>
                    <!-- <div id="js-preloader" class="js-preloader">
                    <div class="preloader-inner">
                        <span class="dot"></span>
                        <div class="dots">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div> -->
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
                                    <span class="breadcrumb"><a href="#">Home</a> / SREACH</span>
                                    <h3>TÌM KIẾM DỊCH VỤ</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <style>
                        #room-list {
                            position: absolute;
                            width: 65%;
                            background-color: #fff;
                            border: 1px solid #ccc;
                            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
                            z-index: 1000;
                            display: none;
                            margin-top: 40px;
                            /* Điều chỉnh vị trí của danh sách tìm kiếm */
                        }

                        #room-list ul {
                            list-style: none;
                            padding: 0;
                        }

                        #room-list li {
                            padding: 10px;
                            border-bottom: 1px solid #eee;
                            cursor: pointer;
                        }

                        .search-results:focus-within #room-list {
                            display: block;
                        }

                        .search-results:focus-within #room-list.show-results {
                            display: none;
                        }

                        .service-container {
                            display: flex;
                            justify-content: space-around;
                            width: 100%;
                            max-width: 100%;
                        }

                        .service-filter {
                            background-color: #f4f4f4;
                            width: 20%;
                            margin-right: 20px;
                            border-radius: 8px;
                        }

                        .box-subtitle {
                            margin: 10px 0 10px 0;
                            padding-left: 20px;
                            padding-bottom: 10px;
                            color: #0045a8;
                            border-bottom: 1px #ccc solid;
                        }

                        .box-header {
                            display: flex;
                            justify-content: space-between;
                            margin: 0 10px 0 10px;
                        }

                        .title {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 18px;
                        }

                        .sidebar-filter {
                            display: block;
                            margin: 10px;
                        }

                        .radio {
                            display: flex;
                            align-items: center;
                            margin: 8px;

                        }


                        .radio input {
                            margin-right: 20px;
                            appearance: none;
                            width: 20px;
                            height: 20px;
                            border: 2px solid #333;
                            border-radius: 50%;
                            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
                            cursor: pointer;
                        }

                        .radio input:checked {
                            background-color: #0045a8;
                            border: 2px solid #555;
                            box-shadow: 0 0 4px rgba(0, 0, 0, 0.6);
                        }

                        .radio p {
                            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                            font-size: 18px;
                        }

                        .checkbox p {
                            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                            font-size: 18px;
                        }

                        .checkbox input:checked {
                            box-shadow: 0 0 4px rgba(0, 0, 0, 0.6);
                        }

                        .checkbox {
                            display: flex;
                            align-items: center;
                            margin: 8px;
                        }

                        .checkbox input {
                            margin-right: 20px;
                            width: 20px;
                            height: 20px;
                        }

                        .service-items {
                            width: 80%;
                        }

                        .btn-check {
                            display: flex;
                            justify-content: space-around;
                            color: white;
                        }

                        .btn-search {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            color: white;
                            text-align: center;
                            background-color: #0045a8;
                            width: 47%;
                            border: none;
                            padding: 10px;
                            border-radius: 8px;
                        }

                        .btn-resset {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            color: #0045a8;
                            text-align: center;
                            background-color: #ffffff;
                            border: 2px #0045a8 solid;
                            width: 47%;
                            padding: 10px;
                            border-radius: 8px;
                        }

                        .btn-submit {
                            border-top: 1px #ccc solid;
                            padding: 10px;
                        }

                        .arrange-form {
                            display: flex;
                            justify-content: space-between;
                            margin-bottom: 5px;
                        }

                        .arrange-form span {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 18px;

                        }

                        .select-sort {
                            display: flex;
                            align-items: center;
                        }

                        .select-sort span {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 16px;
                        }

                        .select-sort select {
                            width: 150px;
                            padding: 5px;
                            font-size: 16px;
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 400;
                            border: none;
                            border-radius: 8px;
                            color: #555;
                            background-color: #f4f4f4;
                        }

                        .select-form {
                            margin: 5px;
                        }
                    </style>
                    <div class="properties section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="section-heading text-center">
                                        <h6>| Bản Tin</h6>
                                        <h2>TÌM PHÒNG Ở CHO THUÊ RẺ NHẤT, MỚI NHẤT</h2>
                                    </div>
                                </div>
                                <div class="search-bar">
                                    <div class="card shadow mb-4">
                                        <div class="card-body" style="background-color: #dedede;">
                                            <form id="searchForm" method="get">
                                                <div class="row">
                                                    <div class="container mt-3">
                                                        <div class="col-md-12 mb-2 mt-3 d-flex justify-content-center">
                                                            <div
                                                                class="form-group col-md-11 mb-12 d-flex search-results">
                                                                <input type="hidden" name="page" value="1">
                                                                <input type="text" class="form-control" name="title"
                                                                    id="title" placeholder="Tìm Kiếm Nhanh">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-12 d-flex justify-content-center">
                                                    <div class="col-md-3">
                                                        <select class="form-control" name="address" id="address"
                                                            required>
                                                            <option selected disabled value="0">Bạn muốn tìm trọ ở
                                                                đâu...
                                                            </option>
                                                            <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                                            <option value="Hà Nội">Hà Nội</option>
                                                            <option value="Đà Nẵng">Đà Nẵng</option>
                                                            <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                                            <option value="Bình Dương">Bình Dương</option>
                                                            <option value="An Giang">An Giang</option>
                                                            <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu
                                                            </option>
                                                            <option value="Bắc Giang">Bắc Giang</option>
                                                            <option value="Bắc Kạn">Bắc Kạn</option>
                                                            <option value="Bạc Liêu">Bạc Liêu</option>
                                                            <option value="Bắc Ninh">Bắc Ninh</option>
                                                            <option value="Bến Tre">Bến Tre</option>
                                                            <option value="Bình Phước">Bình Phước</option>
                                                            <option value="Bình Thuận">Bình Thuận</option>
                                                            <option value="Bình Định">Bình Định</option>
                                                            <option value="Cà Mau">Cà Mau</option>
                                                            <option value="Cần Thơ">Cần Thơ</option>
                                                            <option value="Cao Bằng">Cao Bằng</option>
                                                            <option value="Gia Lai">Gia Lai</option>
                                                            <option value="Hà Giang">Hà Giang</option>
                                                            <option value="Hà Nam">Hà Nam</option>
                                                            <option value="Hà Tĩnh">Hà Tĩnh</option>
                                                            <option value="hHải Dương">Hải Dương</option>
                                                            <option value="Hải Phòng">Hải Phòng</option>
                                                            <option value="hHậu Giang">Hậu Giang</option>
                                                            <option value="Hòa Bình">Hòa Bình</option>
                                                            <option value="Hưng Yên">Hưng Yên</option>
                                                            <option value="Khánh Hòa">Khánh Hòa</option>
                                                            <option value="Kiên Giang">Kiên Giang</option>
                                                            <option value="Kon Tum">Kon Tum</option>
                                                            <option value="Lai Châu">Lai Châu</option>
                                                            <option value="Lâm Đồng">Lâm Đồng</option>
                                                            <option value="Lạng Sơn">Lạng Sơn</option>
                                                            <option value="Lào Cai">Lào Cai</option>
                                                            <option value="Long An">Long An</option>
                                                            <option value="Nam Định">Nam Định</option>
                                                            <option value="Nghệ An">Nghệ An</option>
                                                            <option value="Ninh Bình">Ninh Bình</option>
                                                            <option value="Ninh Thuận">Ninh Thuận</option>
                                                            <option value="Phú Thọ">Phú Thọ</option>
                                                            <option value="Phú Yên">Phú Yên</option>
                                                            <option value="Quảng Bình">Quảng Bình</option>
                                                            <option value="Quảng Nam">Quảng Nam</option>
                                                            <option value="Quảng Ngãi">Quảng Ngãi</option>
                                                            <option value="Quảng Ninh">Quảng Ninh</option>
                                                            <option value="Quảng Trị">Quảng Trị</option>
                                                            <option value="Sóc Trăng">Sóc Trăng</option>
                                                            <option value="Sơn La">Sơn La</option>
                                                            <option value="Tây Ninh">Tây Ninh</option>
                                                            <option value="Thái Bình">Thái Bình</option>
                                                            <option value="Thái Nguyên">Thái Nguyên</option>
                                                            <option value="Thanh Hóa">Thanh Hóa</option>
                                                            <option value="Tiền Giang">Tiền Giang</option>
                                                            <option value="Trà Vinh">Trà Vinh</option>
                                                            <option value="Tuyên Quang">Tuyên Quang</option>
                                                            <option value="Vĩnh Long">Vĩnh Long</option>
                                                            <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                                                            <option value="Yên Bái">Yên Bái</option>
                                                            <option value="Đắk Lắk">Đắk Lắk</option>
                                                            <option value="Đắk Nông">Đắk Nông</option>
                                                            <option value="Điện Biên">Điện Biên</option>
                                                            <option value="ồng Nai">Đồng Nai</option>
                                                            <option value="Đồng Tháp">Đồng Tháp</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="form-control" name="format" id="format" required>
                                                            <option selected disabled value="0">Hình Thức Dịch Vụ
                                                            </option>
                                                            <option value="Phòng Trọ">Phòng Trọ</option>
                                                            <option value="Ký túc xá (dorm)">Ký túc xá (dorm)
                                                            </option>
                                                            <option value="Chung cư mini">Chung cư mini</option>
                                                            <option value="Cư xá">Cư xá</option>
                                                            <option value="Homestay">Homestay</option>
                                                            <option value="Trọ nhà nguyên căn">Trọ nhà nguyên căn
                                                            </option>
                                                            <option value="Trọ trong nhà chung chủ">Trọ trong nhà
                                                                chung
                                                                chủ</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <select class="form-control" name="price" id="price" required>
                                                            <option selected disabled>Mức giá</i>
                                                            </option>
                                                            <option value="duoi-1tr">Dưới 1.000.000 VND</option>
                                                            <option value="khoang-1tr-toi-2tr">1.000.000 VND - 2.000.000
                                                                VND</option>
                                                            <option value="khoang-2tr-toi-5tr">2.000.000 VND - 5.000.000
                                                                VND</option>
                                                            <option value="tren-5tr">Trên 5.000.000 VND</option>
                                                        </select>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <button type="button" onclick="generateURL()"
                                                            style="background-color: #0045a8;font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-weight: 400;color: white;"
                                                            class="form-control btn ">Tìm
                                                            Kiếm</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="container">
                            <div class="service-container">
                                <div class="service-filter">
                                    <div class="box-subtitle flex" style="font-size: 18px; font-weight: 500"><i
                                            class="fa-solid fa-filter"></i> Lọc kết quả
                                    </div>
                                    <div>
                                        <div id="fillter-acreage">
                                            <div class="box-header">
                                                <div class="title">Diện tích</div>
                                                <div class="toggle"><i class="fa-solid fa-caret-down"></i></div>
                                            </div>
                                            <div class="sidebar-filter">
                                                <label class="radio" for="acreage_1">
                                                    <input class="form-check-input" type="radio" id="acreage_1"
                                                        name="area" value="duoi-20m-vuong">
                                                    <span></span>
                                                    <p>Dưới 20 m2</p>
                                                </label>
                                                <label class="radio" for="acreage2">
                                                    <input class="form-check-input" type="radio" id="acreage2"
                                                        name="area" value="tu-20m-den-40m-vuong">
                                                    <span></span>
                                                    <p>20-40 m2</p>
                                                </label>
                                                <label class="radio" for="area_3">
                                                    <input class="form-check-input" type="radio" id="acreage_3"
                                                        name="area" value="tu-40m-den-60m-vuong">
                                                    <span></span>
                                                    <p>40-60 m2</p>
                                                </label>
                                                <label class="radio" for="area_4">
                                                    <input class="form-check-input" type="radio" id="acreage4"
                                                        name="area" value="tu-60m-den-80m-vuong">
                                                    <span></span>
                                                    <p>60-80 m2</p>
                                                </label>
                                                <label class="radio" for="area_5">
                                                    <input class="form-check-input" type="radio" id="acreage_5"
                                                        name="area" value="tren-80m-vuong">
                                                    <span></span>
                                                    <p>Trên 80 m2</p>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div id="fillter-type">
                                            <div class="box-header">
                                                <div class="title">Loại Hình</div>
                                                <div class="toggle"><i class="fa-solid fa-caret-down"></i></div>
                                            </div>
                                            <div class="sidebar-filter">
                                                <label class="checkbox" for="type_1">
                                                    <input class="form-check-input" type="checkbox" id="type_1"
                                                        value="cho-thue-tro">
                                                    <span></span>
                                                    <p>Cho Thuê Trọ</p>
                                                </label>
                                                <label class="checkbox" for="type_2">
                                                    <input class="form-check-input" type="checkbox" id="type_2"
                                                        value="nha-can-ho-cho-thue">
                                                    <span></span>
                                                    <p>Cho Thuê Nhà/Căn Hộ</p>
                                                </label>
                                                <label class="checkbox" for="type_3">
                                                    <input class="form-check-input" type="checkbox" id="type_3"
                                                        value="tim-o-ghep">
                                                    <span></span>
                                                    <p>Tìm Ở Ghép</p>
                                                </label>

                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <div id="fillter-prioritize">
                                            <div class="box-header">
                                                <div class="title">Giới Tính Ưu Tiên</div>
                                                <div class="toggle"><i class="fa-solid fa-caret-down"></i></div>
                                            </div>
                                            <div class="sidebar-filter">
                                                <label class="radio" for="prioritize_1">
                                                    <input class="form-check-input" type="radio" id="prioritize_1"
                                                        name="prioritize" value="tat-ca">
                                                    <span></span>
                                                    <p>Tất Cả</p>
                                                </label>
                                                <label class="radio" for="prioritize_2">
                                                    <input class="form-check-input" type="radio" id="prioritize_2"
                                                        name="prioritize" value="nu">
                                                    <span></span>
                                                    <p>Nữ</p>
                                                </label>
                                                <label class="radio" for="prioritize_3">
                                                    <input class="form-check-input" type="radio" id="prioritize_3"
                                                        name="prioritize" value="nam">
                                                    <span></span>
                                                    <p>Nam</p>
                                                </label>

                                            </div>
                                        </div>
                                    </div>

                                    <div>
                                        <div id="fillter-self">
                                            <div class="box-header">
                                                <div class="title">Hình Thức Tự Quản</div>
                                                <div class="toggle"><i class="fa-solid fa-caret-down"></i></div>
                                            </div>
                                            <div class="sidebar-filter">
                                                <label class="radio" for="self_1">
                                                    <input class="form-check-input" type="radio" id="self_1" name="self"
                                                        value="1">
                                                    <span></span>
                                                    <p>Không</p>
                                                </label>
                                                <label class="radio" for="self_2">
                                                    <input class="form-check-input" type="radio" id="self_2" name="self"
                                                        value="2">
                                                    <span></span>
                                                    <p>Có</p>
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="btn-submit">
                                        <div class="box-header">
                                            <button id="btnFillter" class="btn-search">Tìm ngay</button>
                                            <button id="btnResset" class="btn-resset">Xoá bộ lọc</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="service-items">
                                    <div class="arrange-form">
                                        <span>Tổng ${request} kết quả</span>
                                        <div class="select-sort">
                                            <div><span>Sắp Xếp Theo</span></div>
                                            <div class="select-form">
                                                <form method="get" id="sortForm" onchange="this.form.submit()">
                                                    <select name="sort" id="sort">
                                                        <option selected value="moi-nhat">Mới nhất
                                                        </option>
                                                        <option value="gia-giam-dan">Giá giảm dần
                                                        </option>
                                                        <option value="gia-tang-dan">Giá tăng dần
                                                        </option>
                                                    </select>
                                                </form>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="row">
                                        <c:if test="${totalPages ==  0}">
                                            <div
                                                style="text-align: center; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;margin-top: 30px;">
                                                Không tìm thấy kết quả phù hợp</div>
                                        </c:if>
                                        <c:if test="${totalPages > 0}">
                                            <c:forEach var="post" items="${list}">
                                                <div class="col-lg-4 col-md-6">
                                                    <div class="item">
                                                        <a href="/newsletter-detail/${post.newsletterID}"><img
                                                                style="width: 100%; height: 200px;object-fit: cover;"
                                                                src="/uploads/${post.image1}" alt=""></a>
                                                        <span class="category">${post.newsletterAddress}</span>
                                                        <h6>
                                                            <fmt:formatNumber value="${post.price}" />
                                                            VND
                                                        </h6>
                                                        <h4
                                                            style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">
                                                            <a href="property-details.html">${post.title}</a>
                                                        </h4>
                                                        <ul>
                                                            <li>Diện tích: <span>${post.acreage} m²</span></li>
                                                            <li>Phòng khả dụng: <span>${post.vacantRoom} phòng</span>
                                                            </li>
                                                            <li>Loại hình: <span>${post.newsletterType.name}</span>
                                                            </li>
                                                            <li>Ngày cập nhật: <span>${post.createTime}</span></li>
                                                        </ul>
                                                        <div style="display: flex; justify-content: space-evenly;">
                                                            <div class="main-button">
                                                                <a href="/newsletter-detail/${post.newsletterID}">THÔNG
                                                                    TIN
                                                                    CHI TIẾT</a>
                                                            </div>
                                                            <div class="main-button">
                                                                <a href="property-details.html"><i
                                                                        class="fa-brands fa-gratipay"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </c:if>
                                    </div>
                                    <c:if test="${totalPages > 0}">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <ul class="pagination">
                                                    <c:if test="${curentPage > 2}">
                                                        <li>
                                                            <a href="/service?page=1${queryString}">
                                                                << </a>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${curentPage > 2}">
                                                        <li>
                                                            <a href="/service?page=${curentPage-1}${queryString}">
                                                                < </a>
                                                        </li>
                                                    </c:if>
                                                    <c:forEach begin="0" end="${totalPages-1}" varStatus="status">
                                                        <c:if
                                                            test="${(status.index + 1) > curentPage-2 && curentPage+2 > (status.index + 1)}">
                                                            <li><a class="${(status.index + 1) eq curentPage ? 'is_active':''}"
                                                                    href="/service?page=${status.index+1}${queryString}">${status.index+1}</a>
                                                            </li>
                                                        </c:if>
                                                    </c:forEach>
                                                    <c:if test="${(totalPages-1) > curentPage}">
                                                        <li><a href="/service?page=${curentPage+1}${queryString}">></a>
                                                        </li>
                                                    </c:if>
                                                    <c:if test="${(totalPages-2) > curentPage}">
                                                        <li><a href="/service?page=${totalPages}${queryString}">>></a>
                                                        </li>
                                                    </c:if>
                                                </ul>
                                            </div>
                                        </div>
                                    </c:if>
                                </div>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="../client/layout/footer.jsp" />

                    </div>
                    </div>
                    <script>
                        function generateURL() {
                            const form = document.getElementById('searchForm');
                            const formData = new FormData(form);
                            const url = new URL(window.location.href);

                            formData.forEach((value, key) => {
                                if (value) {
                                    url.searchParams.set(key, value);
                                }
                            });

                            window.location.href = url;
                        }
                        const params = new URLSearchParams(window.location.search);
                        const selectElement = document.getElementById("sort");
                        selectElement.addEventListener("change", function () {
                            const selectedValue = this.value;
                            const currentUrl = new URL(window.location.href);
                            currentUrl.searchParams.set("page", "1");
                            if (selectedValue) {
                                currentUrl.searchParams.set("sort", selectedValue);
                            }
                            window.location.href = currentUrl.toString();
                        });
                        if (params.has("title")) {
                            document.getElementById("title").value = params.get("title");
                        }
                        if (params.has("address")) {
                            document.getElementById("address").value = params.get("address");
                        }

                        if (params.has("format")) {
                            document.getElementById("format").value = params.get("format");
                        }

                        if (params.has("price")) {
                            document.getElementById("price").value = params.get("price");
                        }
                        if (params.has("sort")) {
                            document.getElementById("sort").value = params.get("sort");
                        }

                    </script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script src="/jquery/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/isotope.min.js"></script>
                    <script src="/js/owl-carousel.js"></script>
                    <script src="/js/counter.js"></script>
                    <script src="/js/custom.js"></script>


                </body>

                </html>
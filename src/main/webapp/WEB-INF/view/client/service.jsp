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
                                    <span class="breadcrumb"><a href="#">Home</a> / ĐĂNG TIN</span>
                                    <h3>ĐĂNG TIN</h3>
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
                    </style>
                    <div class="properties section">

                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 offset-lg-4">
                                    <div class="section-heading text-center">
                                        <h6>| Bản Tin</h6>
                                        <h2>DANH SÁCH BẢN TIN</h2>
                                    </div>
                                </div>
                                <div class="search-bar">
                                    <div class="card shadow mb-4">
                                        <div class="card-body" style="background-color: #dedede;">
                                            <div class="row">
                                                <div class="container mt-3">
                                                    <div class="col-md-12 mb-2 mt-3 d-flex justify-content-center">
                                                        <div class="form-group col-md-8 mb-12 d-flex search-results">
                                                            <form id="search-form" class="col-md-12 mb-12">
                                                                <input type="text" class="form-control" name="timkiem"
                                                                    id="timkiem" placeholder="Tìm Kiếm Nhanh">
                                                            </form>

                                                            <div id="room-list" class="card shadow mb-4 col-md-8 ">
                                                                <!-- hiện thị kết quả ajax -->


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <form method="get" action="">
                                                    <div class="col-md-12 mb-2 d-flex justify-content-center">
                                                        <div class="col-md-2 mb-2">
                                                            <select class="form-control" name="Tin_diachi"
                                                                id="Tin_diachi" required>
                                                                <option selected disabled value="0">Chọn địa điểm
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
                                                        <div class="col-md-2 mb-1">
                                                            <select class="form-control" name="Tin_hinhthuc"
                                                                id="Tin_hinhthuc" required>
                                                                <option selected disabled value="0">Chọn loại hình
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
                                                        <div class="col-md-2 mb-2">
                                                            <select class="form-control" name="Tin_gia" id="Tin_gia"
                                                                required>
                                                                <option selected disabled value="0">Chọn giá</i>
                                                                </option>
                                                                <option value="1">Dưới 1.000.000 VND</option>
                                                                <option value="2">1.000.000 VND - 2.000.000 VND</option>
                                                                <option value="3">2.000.000 VND - 3.000.000 VND</option>
                                                                <option value="4">3.000.000 VND - 5.000.000 VND</option>
                                                                <option value="5">Trên 5.000.000 VND</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2 mb-1">
                                                            <button type="submit"
                                                                class="form-control btn btn-primary">Tìm
                                                                Kiếm</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
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
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <ul class="pagination">
                                        <c:if test="${curentPage > 2}">
                                            <li>
                                                <a href="/service?page=1">
                                                    << </a>
                                            </li>
                                        </c:if>
                                        <c:if test="${curentPage > 2}">
                                            <li>
                                                <a href="/service?page=${curentPage-1}">
                                                    < </a>
                                            </li>
                                        </c:if>

                                        <c:forEach begin="0" end="${totalPages-1}" varStatus="status">
                                            <c:if
                                                test="${(status.index + 1) > curentPage-2 && curentPage+2 > (status.index + 1)}">
                                                <li><a class="${(status.index + 1) eq curentPage ? 'is_active':''}"
                                                        href="/service?page=${status.index+1}">${status.index+1}</a>
                                                </li>
                                            </c:if>

                                        </c:forEach>

                                        <c:if test="${(totalPages-1) > curentPage}">
                                            <li><a href="/service?page=${curentPage+1}">></a></li>

                                        </c:if>
                                        <c:if test="${(totalPages-2) > curentPage}">
                                            <li><a href="/service?page=${totalPages}">>></a></li>

                                        </c:if>

                                    </ul>
                                </div>
                            </div>
                        </div>


                    </div>
                    </div>
                    <jsp:include page="../client/layout/footer.jsp" />
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script src="/jquery/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/isotope.min.js"></script>
                    <script src="/js/owl-carousel.js"></script>
                    <script src="/js/counter.js"></script>
                    <script src="/js/custom.js"></script>

                </body>

                </html>
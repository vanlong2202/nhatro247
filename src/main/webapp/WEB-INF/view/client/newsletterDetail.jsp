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
                        .main-image {
                            width: auto;
                            height: 650px;
                            overflow: hidden;
                            border-radius: 8px;
                        }

                        .main-image img {
                            width: 100%;
                            height: 100%;
                            object-fit: cover;
                        }

                        .button-report {
                            background-color: white;
                            color: #f35525;
                            border: 2px #f35525 solid;
                            border-radius: 4px;
                            padding: 8px 20%;
                            font-size: 16px;
                            font-weight: 600;
                        }

                        .button-phone {
                            background-color: #f35525;
                            color: white;
                            border: 2px #f35525 solid;
                            border-radius: 4px;
                            padding: 8px 10%;
                            font-size: 16px;
                            font-weight: 600;
                        }

                        .button-zalo {
                            background-color: #003694;
                            color: white;
                            border: 2px #003694 solid;
                            border-radius: 4px;
                            padding: 8px 10%;
                            font-size: 16px;
                            font-weight: 600;
                        }

                        .button-items {
                            margin-top: 50px;
                        }

                        .main-content h4 {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            text-transform: uppercase;
                            line-height: 1.5;
                            color: #f35525;
                        }

                        .main-content h5 {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            text-transform: uppercase;
                            line-height: 1.5;
                            color: #6e6e6e;
                        }

                        .newsletter-info {
                            background-color: white;
                            width: 100%;
                            border-radius: 4px;
                            height: 200px;
                            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
                        }

                        table th {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 400;
                            font-size: 16px;
                            color: #6e6e6e;
                            line-height: 1.5;
                        }

                        table td {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 400;
                            font-size: 16px;
                            color: #6e6e6e;
                            line-height: 1.5;
                        }

                        table span {
                            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                            font-weight: 600;
                            font-size: 16px;
                            color: #003694;
                            line-height: 1.5;
                        }

                        p {
                            line-height: 2;
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
                                    <span class="breadcrumb"><a href="#">Home</a> / Chi Tiết Bản Tin</span>
                                    <h3>Thông Tin Chi Tiết Bản Tin</h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="single-property section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="main-banner">
                                        <div class="owl-carousel owl-banner">
                                            <div class="main-image">
                                                <img style="" src="/uploads/${newsletters.image1}" alt="">
                                            </div>
                                            <div class="main-image">
                                                <img style="" src="/uploads/${newsletters.image2}" alt="">
                                            </div>
                                            <div class="main-image">
                                                <img style="" src="/uploads/${newsletters.image3}" alt="">
                                            </div>

                                        </div>
                                    </div>
                                    <div class="main-content">
                                        <span class="category">${newsletters.newsletterAddress}</span>
                                        <c:if test="${newsletters.svip == 1}">
                                            <span style="color: red;" class="category">VIP</span>
                                        </c:if>
                                        <span class="category">${newsletters.newsletterType.name}</span>
                                        <h4>${newsletters.title}</h4>
                                        <h5 class="mb-3">Thông Tin Dịch Vụ</h5>

                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th class="col-lg-2" scope="col">Địa chỉ:</th>
                                                    <td colspan="3"><span>${newsletters.addressDetail},
                                                            ${newsletters.newsletterAddress}</span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th scope="col">Giá:</th>
                                                    <td colspan="3">khoảng<span>
                                                            <fmt:formatNumber value="${newsletters.price}" />
                                                        </span>đồng/tháng</td>
                                                </tr>
                                                <tr>
                                                    <th scope="col">Hình thức:</th>
                                                    <td class="col-lg-3"><span>
                                                            ${newsletters.format}
                                                        </span></td>
                                                    <th class="col-lg-2" scope="col">Tự quản: </th>
                                                    <td><span>
                                                            <c:if test="${newsletters.selfManagement==1}">
                                                                Không
                                                            </c:if>
                                                            <c:if test="${newsletters.selfManagement==2}">
                                                                Có
                                                            </c:if>
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <th scope="col">Diện tích:</th>
                                                    <td><span>${newsletters.acreage} </span>m²
                                                    </td>
                                                    <th scope="col">Đối tượng:</th>
                                                    <td><span>
                                                            <c:if test="${newsletters.prioritize==0}">
                                                                Tất cả
                                                            </c:if>
                                                            <c:if test="${newsletters.prioritize==1}">
                                                                Nữ
                                                            </c:if>
                                                            <c:if test="${newsletters.prioritize==2}">
                                                                Nam
                                                            </c:if>
                                                        </span></td>
                                                </tr>
                                                <tr>
                                                    <th scope="col">Phòng khả dụng:</th>
                                                    <td>còn<span> ${newsletters.vacantRoom}</span> phòng</td>
                                                    <th scope="col">Ở tối đa:</th>
                                                    <td><span>${newsletters.maximum}</span> (người/phòng)</td>
                                                </tr>
                                                <tr>
                                                    <th scope="col">Loại hình:</th>
                                                    <td><span>${newsletters.newsletterType.name}</span></td>
                                                    <th scope="col">Người đăng:</th>
                                                    <td><span>${newsletters.account.fullName}</span></td>
                                                </tr>
                                                <tr>
                                                    <th scope="col">Tỉnh thành:</th>
                                                    <td><span>${newsletters.newsletterAddress}</span></td>
                                                    <th scope="col">Ngày cập nhật:</th>
                                                    <td><span>${newsletters.createTime},
                                                            ${newsletters.formattedCreatedDate}
                                                        </span></td>
                                                </tr>
                                            </thead>
                                        </table>

                                        <div>
                                            <h4></h4>
                                            <h5 class="mb-3">Giới Thiệu</h5>
                                            <p>
                                                ${newsletters.detail}
                                            </p>
                                        </div>
                                        <div>
                                            <h4></h4>
                                            <h5 class="mb-3">Liên Hệ Chính Chủ</h5>
                                            <table style="border-radius: 8px;" class="table table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th class="col-lg-1 text-center" scope="col"><i
                                                                class="fa-solid fa-user"></i></th>
                                                        <td colspan="3"><span>
                                                                ${newsletters.account.fullName}
                                                            </span></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="col-lg-1 text-center" scope="col"><i
                                                                class="fa-solid fa-phone"></i></th>
                                                        <td colspan="3"><span>
                                                                ${newsletters.account.phone}
                                                            </span></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="col-lg-1 text-center" scope="col"><i
                                                                class="fa-solid fa-envelope"></i></th>
                                                        <td colspan="3"><span>
                                                                ${newsletters.account.email}
                                                            </span></td>
                                                    </tr>
                                                    <tr>
                                                        <th class="col-lg-1 text-center" scope="col"><i
                                                                class="fa-brands fa-facebook"></i></th>
                                                        <td colspan="3"><span>
                                                                ${newsletters.account.facebook}
                                                            </span></td>
                                                    </tr>
                                                    <!-- Thêm các trường khác tương tự cho các thông tin khác -->
                                                </thead>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-4">
                                    <div class="info-table">
                                        <ul>
                                            <li>
                                                <img src="/images/info-icon-01.png" alt="" style="max-width: 52px;">
                                                <h4>
                                                    ${newsletters.acreage} m²<br><span>Diện tích phòng</span>
                                                </h4>
                                            </li>
                                            <li>
                                                <img src="/images/info-icon-02.png" alt="" style="max-width: 52px;">
                                                <h4>+84 ${newsletters.account.phone}<br><span>Số điện thoại liên
                                                        hệ</span>
                                                </h4>
                                            </li>
                                            <li>
                                                <img src="/images/info-icon-03.png" alt="" style="max-width: 52px;">
                                                <h4>
                                                    <fmt:formatNumber value="${newsletters.price}" /> VND<br><span>Giá
                                                        dịch
                                                        vụ</span>
                                                </h4>
                                            </li>
                                            <li>
                                                <img src="/images/info-icon-04.png" alt="" style="max-width: 52px;">
                                                <h4>
                                                    ${newsletters.format}<br><span>Hình thức</span>
                                                </h4>
                                            </li>
                                            <li>
                                                <img src="/images/phone-icon.png" alt="" style="max-width: 52px;">
                                                <h4>
                                                    ${newsletters.account.fullName}<br><span>Liên Hệ Chủ Trọ</span>
                                                </h4>
                                            </li>
                                        </ul>
                                        <div class="button-items text-center">
                                            <a class="button-phone" href="">Gọi ngay</a>
                                            <a class="button-zalo" href="https://zalo.me/${newsletters.account.phone}"
                                                class="btn btn-primary">ZALO</a>
                                        </div>
                                        <div class="mt-4 text-center">
                                            <a class="button-report" href="" data-toggle="modal"
                                                data-target="#myModal">Báo cáo bản tin
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container mt-5">
                        <div class="section-heading">
                            <h4 style="color: #ee626b;">| Tin Trọ Cùng Đường</h4>
                        </div>
                    </div>
                    <div class="properties section mt-1">
                        <div class="container">
                            <div class="row">
                                <c:forEach var="post" items="${newsletterRelate}">
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
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!-- Modal -->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">BÁO CÁO BẢN TIN</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="card-body">
                                        <form:form action="/report" modelAttribute="report" method="post">
                                            <div class="row">
                                                <div class="col-md-12 mb-2">
                                                    <div class="form-group mb-1">
                                                        <form:input path="newsletter"
                                                            value="${newsletters.newsletterID}" class="form-control"
                                                            type="hidden" />
                                                    </div>
                                                </div>
                                                <div class="col-md-12  mb-2">
                                                    <div class="form-group">
                                                        <form:textarea type="text" path="context" class="form-control"
                                                            rows="6" placeholder="Bạn hãy mô tả thêm thông tin..."
                                                            autocomplete="on" required="required"></form:textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 mb-2">
                                                    <div class="form-group mb-1">
                                                        <label for="example-static">Điền thông tin để TroNhanh247 liên
                                                            lạc với bạn khi cần thiết</label>
                                                        <form:input path="phone" class="form-control mb-2" type="text"
                                                            placeholder="Số điện thoại" />
                                                        <form:input path="email" class="form-control" type="email"
                                                            placeholder="Email" />
                                                    </div>
                                                </div>
                                                <div class="form-group d-grid gap-2 col-2 mx-auto mb-3">
                                                    <input name="" type="submit" class="btn btn-danger"
                                                        value="Xác Nhận">
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div style="margin-top: 30px;" class="container" id="support-info">
                        <div class="section-heading text-center mt-5 mb-5">
                            <h3 class="title-container">
                                HỖ TRỢ KHÁCH HÀNG</h3>
                            <span class="support-title">Bạn cần hỗ trợ Tìm kiếm, Đăng tin, Thanh toán? Liên hệ với chúng
                                tôi ngay qua các hình
                                thức:</span>
                        </div>
                        <div class="support-client">
                            <div class="support-client__items">
                                <div class="support-item__img"><img src="/images/icon_mail.svg" alt=""></div>
                                <div class="support-item__socalmedia"><span>Email</span>
                                </div>
                                <div class="support-item__context"><span>Chúng tôi sẽ trả lời thắc mắc của bạn trong
                                        vòng 24 giờ.</span></div>
                                <div class="support-item__link"><a href="mailto:hovanlong2202@gmail.com">Email ngay</a>
                                </div>
                            </div>
                            <div class="support-client__items">
                                <div class="support-item__img"><img src="/images/icon_phone.svg" alt=""></div>
                                <div class="support-item__socalmedia"><span>Hotline 24/7</span></div>
                                <div class="support-item__context"><span>Điện thoại viên luôn sẵn sàng giải đáp các thắc
                                        mắc của bạn.</span></div>
                                <div class="support-item__link"><a href="tel:+84987298072">Gọi ngay</a></div>
                            </div>
                            <div class="support-client__items">
                                <div class="support-item__img"><img src="/images/icon_mess.svg" alt=""></div>
                                <div class="support-item__socalmedia"><span>Facebook</span></div>
                                <div class="support-item__context"><span>Nhắn tin với chúng tôi trên nền tảng facebook
                                        messenger</span></div>
                                <div class="support-item__link"><a href="https://m.me/VnLong22.02">Gửi tin nhắn</a>
                                </div>
                            </div>
                            <div class="support-client__items">
                                <div class="support-item__img"><img src="/images/icon_zalo.svg" alt=""></div>
                                <div class="support-item__socalmedia"><span>Zalo</span></div>
                                <div class="support-item__context"><span>Nhắn tin hoặc gọi cho chúng tôi trên nền tảng
                                        Zalo</span></div>
                                <div class="support-item__link"><a href="https://zalo.me/0987298072">Liên hệ ngay</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="../client/layout/footer.jsp" />
                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                    <script src="/jquery/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/isotope.min.js"></script>
                    <script src="/js/owl-carousel.js"></script>
                    <script src="/js/counter.js"></script>
                    <script src="/js/custom.js"></script>
                </body>

                </html>
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
                        .balance {
                            margin-top: 25px;
                            display: flex;
                        }

                        table {
                            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                        }

                        .balance-items {
                            display: flex;
                            align-items: center;
                        }

                        .balance-items button {
                            background-color: #F35525;
                            color: white;
                            border: none;
                            margin-left: 30px;
                            border-radius: 4px;
                            padding: 5px 10px 5px 10px;
                            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                            font-size: 16px;
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
                    <div class="contact-page section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="section-heading">
                                        <h6>| THÔNG TIN CHI TIẾT</h6>
                                        <h2>Xin Chào, ${info.username}</h2>
                                    </div>
                                    <p>Vui lòng cập nhật thông tin cá nhân để thuận tiện trong việc sử dụng các dịch vụ
                                        của
                                        chúng tôi !</p>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="item phone">
                                                <img src="/images/phone-icon.png" alt="" style="max-width: 44px;">
                                                <h6 style="font-size: 18px;">${info.phone}<br><span>Số Điện Thoại</span>
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="item email">
                                                <img src="/images/email-icon.png" alt="" style="max-width: 44px;">
                                                <h6 style="font-size: 18px;">${info.email}<br><span>Địa Chỉ Email</span>
                                                </h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="item balance">
                                                <div class="balance-items">
                                                    <img src="/images/info-icon-03.png" alt="" style="max-width: 44px;">
                                                    <h6 style="font-size: 18px;">
                                                        <fmt:formatNumber value="${info.balance}" /> VNĐ<br><span>Số Dư
                                                            Tài
                                                            Khoản</span>
                                                    </h6>
                                                    <div><a href="/deposit"><button>Nạp Tiền</button></a></div>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="row" id="contact-form">
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <label for="fullname">Họ Và Tên</label>
                                                <input value="${info.fullName}" type="name" name="fullname"
                                                    id="fullname" placeholder="Your Name..." readonly autocomplete="on"
                                                    required>
                                            </fieldset>
                                        </div>
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <label for="address">Địa Chỉ</label>
                                                <input value="${info.address}" type="text" name="address" id="address"
                                                    pattern="[^ @]*@[^ @]*" placeholder="Your Address..." readonly
                                                    required="">
                                            </fieldset>
                                        </div>
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <label for="phone">Số Điện Thoại</label>
                                                <input value="${info.phone}" type="text" name="phone" id="phone"
                                                    placeholder="Your Phone..." readonly autocomplete="on">
                                            </fieldset>
                                        </div>
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <label for="email">Địa Chỉ Email</label>
                                                <input value="${info.email}" type="text" name="email" id="email"
                                                    placeholder="Your Email..." readonly autocomplete="on">
                                            </fieldset>
                                        </div>
                                        <div class="col-lg-12">
                                            <fieldset>
                                                <a href="/update-profile"><button type="submit" id="form-submit"
                                                        class="orange-button">Cập Nhật
                                                        Thông Tin</button></a>
                                            </fieldset>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="contact-page section">
                                <div class="container">
                                    <div class="section-heading">
                                        <h6>| Lịch sử giao dịch</h6>
                                    </div>
                                    <div class="card shadow mb-4">
                                        <div class="card-header">
                                            <h6 class="card-title">DANH SÁCH LỊCH SỬ GIAO DỊCH</h6>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="card-body">
                                                <c:if test="${empty bills}">
                                                    Không có kết quả nào !
                                                </c:if>
                                                <c:if test="${not empty bills}">
                                                    <table class="table table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>ID</th>
                                                                <th>Mã giao dịch</th>
                                                                <th>Thời gian</th>
                                                                <th>Số tiền</th>
                                                                <th>Nôi dung thanh toán</th>
                                                                <th>Thời gian xác thực</th>
                                                                <th>Hình thức</th>
                                                                <th>Trạng thái</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:forEach var="bill" items="${bills}" varStatus="status">
                                                                <tr>
                                                                    <td>#${status.index + 1}</td>
                                                                    <td>${bill.transactionCode}</td>
                                                                    <td>${bill.createTime}</td>
                                                                    <td>
                                                                        <c:if test="${bill.billType.billTypeID == 1}">
                                                                            <span
                                                                                style="color: green; font-weight: 600;">
                                                                                +
                                                                                <fmt:formatNumber
                                                                                    value="${bill.amount}" /> VNĐ
                                                                            </span>
                                                                        </c:if>
                                                                        <c:if test="${bill.billType.billTypeID == 2}">
                                                                            <span style="color: red; font-weight: 600;">
                                                                                -
                                                                                <fmt:formatNumber
                                                                                    value="${bill.amount}" /> VNĐ
                                                                            </span>
                                                                        </c:if>

                                                                    </td>
                                                                    <td>
                                                                        ${bill.transferContent}
                                                                    </td>
                                                                    <td>
                                                                        ${bill.confirmTime}
                                                                    </td>
                                                                    <td>
                                                                        <c:if test="${bill.billType.billTypeID == 1}">
                                                                            <button style="width: 122px;" type="button"
                                                                                class="btn mb-2 btn-success btn-sm">${bill.billType.name}</button>
                                                                        </c:if>
                                                                        <c:if test="${bill.billType.billTypeID == 2}">
                                                                            <button style="width: 122px;" type="button"
                                                                                class="btn mb-2 btn-danger btn-sm">${bill.billType.name}</button>
                                                                        </c:if>
                                                                        <c:if test="${bill.billType.billTypeID == 3}">
                                                                            <button style="width: 122px;" type="button"
                                                                                class="btn mb-2 btn-danger btn-sm">${bill.billType.name}</button>
                                                                        </c:if>
                                                                    </td>
                                                                    <td>
                                                                        <c:if test="${bill.isStatus == 0}">
                                                                            <button style="width: 122px;" type="button"
                                                                                class="btn mb-2 btn-primary btn-sm">Đang
                                                                                Phê
                                                                                Duyệt</button>
                                                                        </c:if>
                                                                        <c:if test="${bill.isStatus == 1}">
                                                                            <button style="width: 122px;" type="button"
                                                                                class="btn mb-2 btn-success btn-sm">Thành
                                                                                công</button>
                                                                        </c:if>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </c:if>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div id="map">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.1102349383827!2d105.69317477473831!3d18.659048664930566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3139cddf0bf20f23%3A0x86154b56a284fa6d!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBWaW5o!5e0!3m2!1svi!2s!4v1701333714488!5m2!1svi!2s"
                                            width="100%" height="500px" frameborder="0"
                                            style="border:0; border-radius: 10px; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);"
                                            allowfullscreen=""></iframe>
                                    </div>
                                </div>
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
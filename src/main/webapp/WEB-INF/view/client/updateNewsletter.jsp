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
                                <span class="breadcrumb"><a href="#">Home</a> / ĐĂNG TIN</span>
                                <h3>ĐĂNG TIN</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <form:form action="/update-post" method="post" modelAttribute="infoNewsletterDTO" id="contact-form"
                    enctype="multipart/form-data">
                    <div class="contact-page section">
                        <div class="container">
                            <div class="section-heading">
                                <h6>| Đăng Bản Tin</h6>
                                <h2>
                                    Xin chào
                                </h2>
                            </div>
                            <div class="card shadow mb-4">
                                <div class="card-header">
                                    <h4 class="card-title">THÔNG TIN LIÊN HỆ</h4>
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="col-lg-12" style="display: none;">
                                                <form:input path="account.accountID" type="text"
                                                    placeholder="Subject..." />
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="simpleinput">Họ Và Tên</label>
                                                <form:input type="text" path="account.fullName" class="form-control" />
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="example-email">Email</label>
                                                <form:input path="account.email" type="email" class="form-control"
                                                    placeholder="Email" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group mb-3">
                                                <label for="example-password">Số Điện Thoại</label>
                                                <form:input path="account.phone" type="text" class="form-control" />
                                            </div>
                                            <div class="form-group mb-3">
                                                <label for="example-palaceholder">Facebook</label>
                                                <form:input path="account.facebook" type="text" class="form-control"
                                                    placeholder="Nhập đường đẫn facebook của bạn tại đây..." />
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="container">
                        <div class="card shadow mb-4">
                            <div class="card-header">
                                <h4 class="card-title">CHI TIẾT BẢN TIN</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12 mb-2">
                                        <div class="form-group mb-1">
                                            <label>Tiêu đề tin</label>
                                            <form:input path="newsletter.newsletterID" style="display: none;" />
                                            <form:input path="newsletter.title" class="form-control" type="text"
                                                placeholder="Tiêu đề bản tin..." />
                                        </div>
                                    </div>

                                    <div class="col-md-12 mb-2 d-flex justify-content-between">
                                        <div class="col-md-3 mb-2">
                                            <label>Loại Hình</label>
                                            <select class="form-control" name="newsletter.newsletterType" required>
                                                <c:forEach var="type" items="${newsletterType}">
                                                    <option value="${type.newsletterTypeID}" ${
                                                        type.newsletterTypeID==infoNewsletterDTO.newsletter.newsletterType.newsletterTypeID
                                                        ? 'selected' : '' }>${type.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <label for="validationCustom04">Hình Thức Trọ</label>
                                            <form:select class="form-control" path="newsletter.format"
                                                required="required">
                                                <option value="Phòng trọ"
                                                    ${infoNewsletterDTO.newsletter.format=='Phòng trọ' ? 'selected' : ''
                                                    }>Phòng trọ</option>
                                                <option value="Ký túc xá (dorm)"
                                                    ${infoNewsletterDTO.newsletter.format=='Ký túc xá (dorm)'
                                                    ? 'selected' : '' }>Ký túc xá (dorm)</option>
                                                <option value="Chung cư mini"
                                                    ${infoNewsletterDTO.newsletter.format=='Chung cư mini' ? 'selected'
                                                    : '' }>Chung cư mini</option>
                                                <option value="Cư xá" ${infoNewsletterDTO.newsletter.format=='Cư xá'
                                                    ? 'selected' : '' }>Cư xá</option>
                                                <option value="Homestay"
                                                    ${infoNewsletterDTO.newsletter.format=='Homestay' ? 'selected' : ''
                                                    }>Homestay</option>
                                                <option value="Trọ nhà nguyên căn"
                                                    ${infoNewsletterDTO.newsletter.format=='Trọ nhà nguyên căn'
                                                    ? 'selected' : '' }>Trọ nhà nguyên căn</option>
                                                <option value="Trọ trong nhà chung chủ"
                                                    ${infoNewsletterDTO.newsletter.format=='Trọ trong nhà chung chủ'
                                                    ? 'selected' : '' }>Trọ trong nhà chung chủ</option>
                                            </form:select>
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <label for="validationCustom04">Trọ tự quản</label>
                                            <form:select class="form-control" path="newsletter.selfManagement"
                                                required="required">
                                                <option selected disabled value="">--- Chọn Hình Thức ---</option>
                                                <option value="1" ${infoNewsletterDTO.newsletter.selfManagement=='1'
                                                    ? 'selected' : '' }>Không</option>
                                                <option value="2" ${infoNewsletterDTO.newsletter.selfManagement=='2'
                                                    ? 'selected' : '' }>Có</option>
                                            </form:select>
                                        </div>
                                    </div>

                                    <div class="col-md-12 mb-2 d-flex justify-content-between">
                                        <div class="col-md-3 mb-1">
                                            <label for="validationCustomUsername">Phòng trống:</label>
                                            <div class="input-group">
                                                <form:input path="newsletter.vacantRoom" type="text"
                                                    class="form-control" placeholder="Số phòng trống ..."
                                                    required="required" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustomUsername">Tổng Số Phòng:</label>
                                            <div class="input-group">
                                                <form:input path="newsletter.totalRoom" type="text" class="form-control"
                                                    placeholder="Tổng số phòng ..." required="required" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustomUsername">Ở Tối Đa(Người/Phòng)</label>
                                            <form:input path="newsletter.maximum" type="text" class="form-control"
                                                placeholder="Tối đa số người ở 1 phòng ..." required="required" />
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-2 d-flex justify-content-between">
                                        <div class="col-md-3 mb-1">
                                            <label for="validationCustomUsername">Diện tích phòng</label>
                                            <div class="input-group">
                                                <form:input path="newsletter.acreage" type="text" class="form-control"
                                                    placeholder="Diện tích của phòng" required="required" />
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="inputGroupPrepend">m²</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-3">
                                            <label for="validationCustomUsername">Giá phòng</label>
                                            <div class="input-group">
                                                <form:input path="newsletter.price" type="text" class="form-control"
                                                    placeholder="Nhập đúng giá trị tiền" required="required" />
                                                <div class="input-group-prepend">
                                                    <span class="input-group-text" id="inputGroupPrepend">VND</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <label for="validationCustomUsername">Giới Tính Ưu Tiên</label>
                                            <form:select class="form-control" path="newsletter.prioritize"
                                                required="required">
                                                <option value="0" ${infoNewsletterDTO.newsletter.prioritize=='0'
                                                    ? 'selected' : '' }>--- Tất cả ---</option>
                                                <option value="1" ${infoNewsletterDTO.newsletter.prioritize=='1'
                                                    ? 'selected' : '' }>Nữ</option>
                                                <option value="2" ${infoNewsletterDTO.newsletter.prioritize=='2'
                                                    ? 'selected' : '' }>Nam</option>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-2 d-flex justify-content-between">
                                        <div class="col-md-2 mb-2">
                                            <label for="example-static">Tỉnh Thành</label>
                                            <form:select class="form-control" path="newsletter.newsletterAddress"
                                                required="required">
                                                <option selected disabled value="">Chọn địa điểm</option>
                                                <option value="Hồ Chí Minh"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hồ Chí Minh'
                                                    ? 'selected' : '' }>Hồ Chí Minh</option>
                                                <option value="Hà Nội"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hà Nội'
                                                    ? 'selected' : '' }>Hà Nội</option>
                                                <option value="Đà Nẵng"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Đà Nẵng'
                                                    ? 'selected' : '' }>Đà Nẵng</option>
                                                <option value="Thừa Thiên Huế"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Thừa Thiên Huế'
                                                    ? 'selected' : '' }>Thừa Thiên Huế</option>
                                                <option value="Bình Dương"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bình Dương'
                                                    ? 'selected' : '' }>Bình Dương</option>
                                                <option value="An Giang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='An Giang'
                                                    ? 'selected' : '' }>An Giang</option>
                                                <option value="Bà Rịa - Vũng Tàu"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bà Rịa - Vũng Tàu'
                                                    ? 'selected' : '' }>Bà Rịa - Vũng Tàu</option>
                                                <option value="Bắc Giang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bắc Giang'
                                                    ? 'selected' : '' }>Bắc Giang</option>
                                                <option value="Bắc Kạn"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bắc Kạn'
                                                    ? 'selected' : '' }>Bắc Kạn</option>
                                                <option value="Bạc Liêu"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bạc Liêu'
                                                    ? 'selected' : '' }>Bạc Liêu</option>
                                                <option value="Bắc Ninh"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bắc Ninh'
                                                    ? 'selected' : '' }>Bắc Ninh</option>
                                                <option value="Bến Tre"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bến Tre'
                                                    ? 'selected' : '' }>Bến Tre</option>
                                                <option value="Bình Phước"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bình Phước'
                                                    ? 'selected' : '' }>Bình Phước</option>
                                                <option value="Bình Thuận"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bình Thuận'
                                                    ? 'selected' : '' }>Bình Thuận</option>
                                                <option value="Bình Định"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Bình Định'
                                                    ? 'selected' : '' }>Bình Định</option>
                                                <option value="Cà Mau"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Cà Mau'
                                                    ? 'selected' : '' }>Cà Mau</option>
                                                <option value="Cần Thơ"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Cần Thơ'
                                                    ? 'selected' : '' }>Cần Thơ</option>
                                                <option value="Cao Bằng"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Cao Bằng'
                                                    ? 'selected' : '' }>Cao Bằng</option>
                                                <option value="Gia Lai"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Gia Lai'
                                                    ? 'selected' : '' }>Gia Lai</option>
                                                <option value="Hà Giang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hà Giang'
                                                    ? 'selected' : '' }>Hà Giang</option>
                                                <option value="Hà Nam"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hà Nam'
                                                    ? 'selected' : '' }>Hà Nam</option>
                                                <option value="Hà Tĩnh"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hà Tĩnh'
                                                    ? 'selected' : '' }>Hà Tĩnh</option>
                                                <option value="Hải Dương"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hải Dương'
                                                    ? 'selected' : '' }>Hải Dương</option>
                                                <option value="Hải Phòng"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hải Phòng'
                                                    ? 'selected' : '' }>Hải Phòng</option>
                                                <option value="Hậu Giang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hậu Giang'
                                                    ? 'selected' : '' }>Hậu Giang</option>
                                                <option value="Hòa Bình"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hòa Bình'
                                                    ? 'selected' : '' }>Hòa Bình</option>
                                                <option value="Hưng Yên"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Hưng Yên'
                                                    ? 'selected' : '' }>Hưng Yên</option>
                                                <option value="Khánh Hòa"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Khánh Hòa'
                                                    ? 'selected' : '' }>Khánh Hòa</option>
                                                <option value="Kiên Giang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Kiên Giang'
                                                    ? 'selected' : '' }>Kiên Giang</option>
                                                <option value="Kon Tum"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Kon Tum'
                                                    ? 'selected' : '' }>Kon Tum</option>
                                                <option value="Lai Châu"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Lai Châu'
                                                    ? 'selected' : '' }>Lai Châu</option>
                                                <option value="Lâm Đồng"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Lâm Đồng'
                                                    ? 'selected' : '' }>Lâm Đồng</option>
                                                <option value="Lạng Sơn"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Lạng Sơn'
                                                    ? 'selected' : '' }>Lạng Sơn</option>
                                                <option value="Lào Cai"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Lào Cai'
                                                    ? 'selected' : '' }>Lào Cai</option>
                                                <option value="Long An"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Long An'
                                                    ? 'selected' : '' }>Long An</option>
                                                <option value="Nam Định"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Nam Định'
                                                    ? 'selected' : '' }>Nam Định</option>
                                                <option value="Nghệ An"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Nghệ An'
                                                    ? 'selected' : '' }>Nghệ An</option>
                                                <option value="Ninh Bình"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Ninh Bình'
                                                    ? 'selected' : '' }>Ninh Bình</option>
                                                <option value="Ninh Thuận"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Ninh Thuận'
                                                    ? 'selected' : '' }>Ninh Thuận</option>
                                                <option value="Phú Thọ"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Phú Thọ'
                                                    ? 'selected' : '' }>Phú Thọ</option>
                                                <option value="Phú Yên"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Phú Yên'
                                                    ? 'selected' : '' }>Phú Yên</option>
                                                <option value="Quảng Bình"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Quảng Bình'
                                                    ? 'selected' : '' }>Quảng Bình</option>
                                                <option value="Quảng Nam"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Quảng Nam'
                                                    ? 'selected' : '' }>Quảng Nam</option>
                                                <option value="Quảng Ngãi"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Quảng Ngãi'
                                                    ? 'selected' : '' }>Quảng Ngãi</option>
                                                <option value="Quảng Ninh"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Quảng Ninh'
                                                    ? 'selected' : '' }>Quảng Ninh</option>
                                                <option value="Quảng Trị"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Quảng Trị'
                                                    ? 'selected' : '' }>Quảng Trị</option>
                                                <option value="Sóc Trăng"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Sóc Trăng'
                                                    ? 'selected' : '' }>Sóc Trăng</option>
                                                <option value="Sơn La"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Sơn La'
                                                    ? 'selected' : '' }>Sơn La</option>
                                                <option value="Tây Ninh"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Tây Ninh'
                                                    ? 'selected' : '' }>Tây Ninh</option>
                                                <option value="Thái Bình"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Thái Bình'
                                                    ? 'selected' : '' }>Thái Bình</option>
                                                <option value="Thái Nguyên"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Thái Nguyên'
                                                    ? 'selected' : '' }>Thái Nguyên</option>
                                                <option value="Thanh Hóa"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Thanh Hóa'
                                                    ? 'selected' : '' }>Thanh Hóa</option>
                                                <option value="Tiền Giang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Tiền Giang'
                                                    ? 'selected' : '' }>Tiền Giang</option>
                                                <option value="Trà Vinh"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Trà Vinh'
                                                    ? 'selected' : '' }>Trà Vinh</option>
                                                <option value="Tuyên Quang"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Tuyên Quang'
                                                    ? 'selected' : '' }>Tuyên Quang</option>
                                                <option value="Vĩnh Long"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Vĩnh Long'
                                                    ? 'selected' : '' }>Vĩnh Long</option>
                                                <option value="Vĩnh Phúc"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Vĩnh Phúc'
                                                    ? 'selected' : '' }>Vĩnh Phúc</option>
                                                <option value="Yên Bái"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Yên Bái'
                                                    ? 'selected' : '' }>Yên Bái</option>
                                                <option value="Đắk Lắk"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Đắk Lắk'
                                                    ? 'selected' : '' }>Đắk Lắk</option>
                                                <option value="Đắk Nông"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Đắk Nông'
                                                    ? 'selected' : '' }>Đắk Nông</option>
                                                <option value="Điện Biên"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Điện Biên'
                                                    ? 'selected' : '' }>Điện Biên</option>
                                                <option value="Đồng Nai"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Đồng Nai'
                                                    ? 'selected' : '' }>Đồng Nai</option>
                                                <option value="Đồng Tháp"
                                                    ${infoNewsletterDTO.newsletter.newsletterAddress=='Đồng Tháp'
                                                    ? 'selected' : '' }>Đồng Tháp</option>
                                            </form:select>
                                        </div>
                                        <div class="col-md-9 mb-2">
                                            <div class="form-group mb-1">
                                                <label for="example-static">Địa Chỉ Chi Tiết</label>
                                                <form:input path="newsletter.addressDetail" class="form-control"
                                                    type="text" placeholder="Nhập địa chỉ chi tiết tại đây ..." />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12  mb-2">
                                        <div class="form-group">
                                            <label for="example-static">Mô tả chi tiết</label>
                                            <form:textarea path="newsletter.detail" class="form-control" type="text"
                                                placeholder="Mô tả chi tiết tại đây ..." rows="6" />
                                        </div>
                                    </div>
                                    <div class="form-group mb-12">
                                        <label for="image">Tải hình ảnh lên</label>
                                        <input name="file" id="image1" type="file" class="form-control-file">
                                    </div>
                                    <div class="form-group mb-12 mt-3">
                                        <label for="image1">Tải hình ảnh lên</label>
                                        <input name="file" id="image2" type="file" class="form-control-file">
                                    </div>
                                    <div class="form-group mb-12 mt-3">
                                        <label for="image2">Tải hình ảnh lên</label>
                                        <input name="file" id="image3" type="file" class="form-control-file">
                                    </div>
                                    <div class="col-md-12 mb-2 mt-3 d-flex justify-content-space-between">
                                        <div class="col-md-3 mb-1">
                                            <img id="previewImage1"
                                                src="/uploads/${infoNewsletterDTO.newsletter.image1}"
                                                alt="Preview Image" style="max-width: 300px;">
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <img id="previewImage2"
                                                src="/uploads/${infoNewsletterDTO.newsletter.image2}"
                                                alt="Preview Image" style="max-width: 300px;">
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <img id="previewImage3"
                                                src="/uploads/${infoNewsletterDTO.newsletter.image3}"
                                                alt="Preview Image" style="max-width: 300px;">
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="form-group d-grid gap-2 col-2 mx-auto mb-3">
                            <input type="submit" class="btn btn-danger" value="ĐĂNG TIN">
                        </div>



                    </div>
                </form:form>
                <jsp:include page="../client/layout/footer.jsp" />
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                <script>
                    $(document).ready(() => {
                        const file1 = $("#image1");
                        const file2 = $("#image2");
                        const file3 = $("#image3");
                        file1.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#previewImage1").attr("src", imgURL);
                            $("#previewImage1").css({ "display": "block" });
                        });
                        file2.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#previewImage2").attr("src", imgURL);
                            $("#previewImage2").css({ "display": "block" });
                        });
                        file3.change(function (e) {
                            const imgURL = URL.createObjectURL(e.target.files[0]);
                            $("#previewImage3").attr("src", imgURL);
                            $("#previewImage3").css({ "display": "block" });
                        });
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
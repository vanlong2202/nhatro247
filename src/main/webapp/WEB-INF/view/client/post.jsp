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
                <form:form action="/new/port" method="post" modelAttribute="infoNewsletterDTO" id="contact-form"
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
                                            <form:input path="newsletter.title" class="form-control" type="text"
                                                placeholder="Tiêu đề bản tin..." />
                                        </div>
                                    </div>

                                    <div class="col-md-12 mb-2 d-flex justify-content-between">
                                        <div class="col-md-3 mb-2">
                                            <label>Loại Hình</label>
                                            <select class="form-control" name="newsletter.newsletterType" required>
                                                <c:forEach var="type" items="${newsletterType}">
                                                    <option value="${type.newsletterTypeID}">${type.name}</option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <label for="validationCustom04">Hình Thức Trọ</label>
                                            <form:select class="form-control" path="newsletter.format"
                                                required="required">
                                                <option value="Phòng trọ">Phòng trọ</option>
                                                <option value="Ký túc xá (dorm)">Ký túc xá (dorm)</option>
                                                <option value="Chung cư mini">Chung cư mini</option>
                                                <option value="Cư xá">Cư xá</option>
                                                <option value="Homestay">Homestay</option>
                                                <option value="Trọ nhà nguyên căn">Trọ nhà nguyên căn</option>
                                                <option value="Trọ trong nhà chung chủ">Trọ trong nhà chung chủ</option>
                                            </form:select>
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <label for="validationCustom04">Trọ tự quản</label>
                                            <form:select class="form-control" path="newsletter.selfManagement"
                                                required="required">
                                                <option selected disabled value="0">--- Chọn Hình Thức ---</option>
                                                <option value="1">Không</option>
                                                <option value="2">Có</option>
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
                                                <option value="0">--- Tất cả ---</option>
                                                <option value="1">Nữ</option>
                                                <option value="2">Nam</option>
                                            </form:select>
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-2 d-flex justify-content-between">
                                        <div class="col-md-2 mb-2">
                                            <label for="example-static">Địa Chỉ</label>
                                            <form:select class="form-control" path="newsletter.newsletterAddress"
                                                required="required">
                                                <option selected disabled value="0">Chọn địa điểm</option>
                                                <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                                <option value="Hà Nội">Hà Nội</option>
                                                <option value="Đà Nẵng">Đà Nẵng</option>
                                                <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                                <option value="Bình Dương">Bình Dương</option>
                                                <option value="An Giang">An Giang</option>
                                                <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
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
                                                <option value="Hải Dương">Hải Dương</option>
                                                <option value="Hải Phòng">Hải Phòng</option>
                                                <option value="Hậu Giang">Hậu Giang</option>
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
                                                <option value="Đồng Nai">Đồng Nai</option>
                                                <option value="dong-thap">Đồng Tháp</option>
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
                                        <input name="file" id="image1" type="file" class="form-control-file"
                                            required="required">
                                    </div>
                                    <div class="form-group mb-12 mt-3">
                                        <label for="image1">Tải hình ảnh lên</label>
                                        <input name="file" id="image2" type="file" class="form-control-file"
                                            required="required">
                                    </div>
                                    <div class="form-group mb-12 mt-3">
                                        <label for="image2">Tải hình ảnh lên</label>
                                        <input name="file" id="image3" type="file" class="form-control-file"
                                            required="required">
                                    </div>
                                    <div class="col-md-12 mb-2 mt-3 d-flex justify-content-space-between">
                                        <div class="col-md-3 mb-1">
                                            <img id="previewImage1" src="#" alt="Preview Image"
                                                style="max-width: 300px; display: none;">
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <img id="previewImage2" src="#" alt="Preview Image"
                                                style="max-width: 300px; display: none;">
                                        </div>
                                        <div class="col-md-3 mb-1">
                                            <img id="previewImage3" src="#" alt="Preview Image"
                                                style="max-width: 300px; display: none;">
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
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>NhaTro247 - Trang Quản Trị</title>
                    <meta content="" name="description">
                    <meta content="" name="keywords">
                    <link href="/admin/img/favicon.png" rel="icon">
                    <link href="/admin/img/apple-touch-icon.png" rel="apple-touch-icon">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
                        rel="stylesheet">


                    <!-- Google Fonts -->
                    <link href="https://fonts.gstatic.com" rel="preconnect">
                    <link
                        href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                        rel="stylesheet">
                    <link href="/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                    <link href="/admin/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
                    <link href="/admin/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
                    <link href="/admin/vendor/quill/quill.snow.css" rel="stylesheet">
                    <link href="/admin/vendor/quill/quill.bubble.css" rel="stylesheet">
                    <link href="/admin/vendor/remixicon/remixicon.css" rel="stylesheet">
                    <link href="/admin/vendor/simple-datatables/style.css" rel="stylesheet">
                    <link href="/admin/css/style.css" rel="stylesheet">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css"
                        rel="stylesheet">
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
                    <style>
                        table td {
                            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                            font-size: 17px;
                            font-weight: 400;
                        }

                        table th {
                            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                            font-weight: bold;
                        }
                    </style>
                </head>

                <body>
                    <jsp:include page="../layout/header.jsp" />
                    <main id="main" class="main">

                        <div class="pagetitle">
                            <h1>QUẢN LÍ BẢN TIN</h1>
                        </div>

                        <section class="section profile">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="card">
                                        <div class="card-body pt-3">
                                            <div class="tab-content pt-2">
                                                <div class="tab-pane fade show active profile-overview"
                                                    id="profile-overview">
                                                    <h5 class="card-title">Thông Tin Liên Hệ</h5>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Người đăng:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.account.fullName}</div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Số Điện Thoại:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.account.phone}</div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Email:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.account.email}
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Facebook:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.account.facebook}
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Ngày cập nhật:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.createTime}
                                                        </div>
                                                    </div>
                                                    <h4 class="card-title">Chi Tiết Bản Tin</h4>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Tiêu đề:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                                ${newsletter.title}
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Giá thuê:</div>
                                                        <div style="font-weight: bold; color: red;"
                                                            class="col-lg-9 col-md-8">
                                                            <fmt:formatNumber value="${newsletter.price}" /> VND
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Địa chỉ:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.addressDetail}, ${newsletter.newsletterAddress}
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Loại hình:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.newsletterType.name}</div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Hình thức:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.format}
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Chi tiết nội dung:</div>
                                                        <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                            ${newsletter.detail}</div>
                                                    </div>
                                                    <div style="display: flex; justify-content: space;">
                                                        <div class="col-md-3">
                                                            <div class="row">
                                                                <div class="col-lg-6 col-md-1 label">Phòng khả dụng:
                                                                </div>
                                                                <div style="font-weight: bold;color: red;"
                                                                    class="col-lg-6">
                                                                    ${newsletter.vacantRoom} phòng</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="row">
                                                                <div class="col-lg-6 label">Diện tích:
                                                                </div>
                                                                <div style="font-weight: bold;color: red;"
                                                                    class="col-lg-6">
                                                                    ${newsletter.acreage} m²</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="row">
                                                                <div class="col-lg-6 label">Ở tối đa (người/phòng):
                                                                </div>
                                                                <div style="font-weight: bold;color: red;"
                                                                    class="col-lg-6">
                                                                    ${newsletter.maximum} người</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div style="display: flex; justify-content: space;">
                                                        <div class="col-md-3">
                                                            <div class="row">
                                                                <div class="col-lg-6 label">Tự quản:
                                                                </div>
                                                                <div style="font-weight: bold;color: red;"
                                                                    class="col-lg-6">
                                                                    <c:if test="${newsletter.selfManagement==1}">
                                                                        Không
                                                                    </c:if>
                                                                    <c:if test="${newsletter.selfManagement==2}">
                                                                        Có
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <div class="row">
                                                                <div class="col-lg-6 label">Giới tính ưu tiên:
                                                                </div>
                                                                <div style="font-weight: bold;color: red;"
                                                                    class="col-lg-6">
                                                                    <c:if test="${newsletter.prioritize==0}">
                                                                        Tất cả
                                                                    </c:if>
                                                                    <c:if test="${newsletter.prioritize==1}">
                                                                        Nữ
                                                                    </c:if>
                                                                    <c:if test="${newsletter.prioritize==2}">
                                                                        Nam
                                                                    </c:if>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label ">Hình ảnh:</div>
                                                        <div style="font-weight: bold; display: flex;"
                                                            class="col-lg-9 col-md-8">
                                                            <img style="width: 30%; height: auto; margin-right: 5px;"
                                                                src="/uploads/${newsletter.image1}" alt="" />
                                                            <img style="width: 30%; height: auto;margin-right: 5px;"
                                                                src="/uploads/${newsletter.image2}" alt="" />
                                                            <img style="width: 30%; height: auto;margin-right: 5px;"
                                                                src="/uploads/${newsletter.image3}" alt="" />
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Trạng Thái bản tin :</div>
                                                        <div class="col-lg-9 col-md-8">
                                                            <c:if test="${newsletter.isStatus == 1}">
                                                                <a href="" class="btn btn-success  btn-sm"
                                                                    title="Xem Chi Tiết">Đã Phê Duyệt</a>
                                                                </a>
                                                            </c:if>
                                                            <c:if test="${newsletter.isStatus == 2}">
                                                                <a href="" class="btn btn-danger  btn-sm"
                                                                    title="Xem Chi Tiết">Từ Chối</a>
                                                                </a>
                                                            </c:if>
                                                            <c:if test="${newsletter.isStatus == 0}">
                                                                <a href="" class="btn btn-primary  btn-sm"
                                                                    title="Xem Chi Tiết">Chờ Phê Duyệt</a>
                                                                </a>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-lg-3 col-md-4 label">Trạng thái hoạt động:</div>
                                                        <div class="col-lg-9 col-md-8">
                                                            <c:if test="${newsletter.isActive == 1}">
                                                                <i class="fa-solid fa-circle-check fa-beat"
                                                                    style="color: #00ff55;"></i>
                                                            </c:if>
                                                            <c:if test="${newsletter.isActive == 0}">
                                                                <i class="fa-solid fa-circle-xmark fa-beat"
                                                                    style="color: #ff0000;"></i>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <div style="text-align: center; display: flex; justify-content: center;">
                            <div>
                                <button style="width: 122px;" onclick="history.back()" type="reset"
                                    class="btn btn-secondary btn-sm">Trở lại</button>
                            </div>
                        </div>
                        </div>
                    </main>
                    <jsp:include page="../layout/sidebar.jsp" />
                    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                            class="bi bi-arrow-up-short"></i></a>

                    <script src="/admin/vendor/apexcharts/apexcharts.min.js"></script>
                    <script src="/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                    <script src="/admin/vendor/chart.js/chart.umd.js"></script>
                    <script src="/admin/vendor/echarts/echarts.min.js"></script>
                    <script src="/admin/vendor/quill/quill.min.js"></script>
                    <script src="/admin/vendor/simple-datatables/simple-datatables.js"></script>
                    <script src="/admin/vendor/tinymce/tinymce.min.js"></script>
                    <script src="/admin/vendor/php-email-form/validate.js"></script>
                    <script src="/admin/js/main.js"></script>
                </body>

                </html>
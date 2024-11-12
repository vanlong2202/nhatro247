<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta content="width=device-width, initial-scale=1.0" name="viewport">

                <title>NhaTro247 - Trang Quản Trị</title>
                <meta content="" name="description">
                <meta content="" name="keywords">

                <!-- Favicons -->
                <link href="/admin/img/favicon.png" rel="icon">
                <link href="/admin/img/apple-touch-icon.png" rel="apple-touch-icon">

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

                    label {
                        font-weight: bold;
                    }
                </style>
            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <main id="main" class="main">

                    <div class="pagetitle">
                        <h1>QUẢN LÍ TÀI KHOẢN</h1>
                        <nav>
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="/admin">Trang chủ</a></li>
                                <li class="breadcrumb-item">Quản lí tài khoản</li>
                                <li class="breadcrumb-item active">Cập nhật thông tin</li>
                            </ol>
                        </nav>
                    </div>
                    <section class="section">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Xóa thông tin người dùng</h5>
                                        <div class="row g-3">
                                            <div class="col-md-12" style="display: none;">
                                                <input value="${info.accountID}" type="text" class="form-control"
                                                    placeholder="Nhập tên người dùng ...">
                                            </div>
                                            <div class="col-md-12">
                                                <label for="inputName5" class="form-label">Họ và Tên:</label>
                                                <input value="${info.fullName}" type="text" class="form-control"
                                                    placeholder="Nhập tên người dùng ..." readonly>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="inputEmail5" class="form-label">Email:</label>
                                                <input value="${info.email}" type="email" class="form-control"
                                                    placeholder="Nhập địa chỉ email ..." readonly>
                                            </div>
                                            <div class="col-md-6">
                                                <label for="inputPassword5" class="form-label">Phone:</label>
                                                <input value="${info.phone}" type="text" class="form-control"
                                                    placeholder="Nhập số điện thoại ..." readonly>
                                            </div>
                                            <div class="col-12">
                                                <label for="inputAddress5" class="form-label">Địa chỉ:</label>
                                                <input value="${info.address}" type="text" class="form-control"
                                                    placeholder="Nhập địa chỉ ..." readonly>
                                            </div>
                                            <div class="col-12">
                                                <label for="inputAddress2" class="form-label">Facebook:</label>
                                                <input value="${info.facebook}" type="text" class="form-control"
                                                    placeholder="Nhập link facebook dưới dạng url ..." readonly>
                                            </div>
                                            <div class="mt-4 text-center">
                                                <form:form action="/admin/delete-submit" method="post"
                                                    modelAttribute="info">
                                                    <div class="col-md-12" style="display: none;">
                                                        <form:input path="accountID" type="text" class="form-control"
                                                            placeholder="Nhập tên người dùng ..." />
                                                    </div>
                                                    <button type="submit" class="btn btn-danger">Xóa Tài Khoản</button>
                                                    <button onclick="history.back()" type="reset"
                                                        class="btn btn-secondary">Trờ
                                                        lại</button>
                                                </form:form>

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>



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
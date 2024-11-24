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
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">


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
                <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
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

                    .table-data-title {
                        width: 300px;
                        display: -webkit-box;
                        -webkit-box-orient: vertical;
                        overflow: hidden;
                        -webkit-line-clamp: 2;
                    }

                    .table-data-active {
                        text-align: center;
                    }

                    .table-data-view {
                        box-shadow: 0 2px 5px grey;
                    }

                    .alert {
                        color: white;
                        position: fixed;
                        top: 70px;
                        right: 20px;
                        z-index: 1050;
                        opacity: 0;
                        transform: translateX(100%);
                        transition: opacity 0.5s, transform 0.5s;
                    }

                    .alert.show {
                        opacity: 1;
                        transform: translateX(0);
                    }

                    .card-img {
                        width: 100%;
                        height: 250px;
                        border-radius: 8px;
                        overflow: hidden;
                    }

                    .card-img img {
                        width: 33%;
                        height: 100%;
                        object-fit: cover;
                    }
                </style>
            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <main id="main" class="main">

                    <div class="pagetitle">
                        <h1>BÁO CÁO BẢN TIN</h1>
                    </div>

                    <div class="card">
                        <div class="card-img" style="display: flex; justify-content: space-between;">
                            <img src="/uploads/${report.newsletter.image1}">
                            <img src="/uploads/${report.newsletter.image2}">
                            <img src="/uploads/${report.newsletter.image3}">
                        </div>

                        <div class="card-body mt-2">
                            <a href="/newsletter-detail/${report.newsletter.newsletterID}"
                                class="card-title">${report.newsletter.title}</a>
                        </div>
                    </div>
                    <section class="section profile">
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card">
                                    <div class="card-body pt-3">
                                        <div class="tab-content pt-2">
                                            <div class="tab-pane fade show active profile-overview"
                                                id="profile-overview">
                                                <h5 class="card-title">THÔNG TIN BÁO CÁO</h5>
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Số Điện Thoại:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${report.phone}</div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label ">Email:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${report.email}
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label ">Nội dung báo cáo:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${report.context}
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label ">Ngày báo cáo:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${report.createTime}
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </section>

                    <div style="display: flex;justify-content: center;">
                        <a style="margin-right: 5px;width: 88px;" href="/admin/report-comfirm/${report.reportID}"
                            class="btn btn-success btn-sm">Xác
                            Thực</a>
                        <div>
                            <button style="width: 88px;" onclick="history.back()" type="reset"
                                class="btn btn-secondary btn-sm">Trở lại</button>
                        </div>
                    </div>

                </main>
                <jsp:include page="../layout/sidebar.jsp" />
                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>
                <script>
                    document.addEventListener("DOMContentLoaded", function () {
                        var alert = document.querySelector(".alert");
                        if (alert) {
                            // Thêm class "show" để hiển thị thông báo
                            alert.classList.add("show");

                            // Sau 3 giây, tự động ẩn thông báo
                            setTimeout(function () {
                                alert.classList.remove("show");
                            }, 3000); // 3000ms = 3 giây
                        }
                    });
                </script>
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
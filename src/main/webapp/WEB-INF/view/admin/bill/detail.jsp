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

                        <section class="section">
                            <div class="row">
                                <div class="col-lg-6">

                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Thông tin người dùng</h5>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Họ và Tên:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${bill.account.fullName}</div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Số Điện Thoại:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${bill.account.phone}</div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Email:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${bill.account.email}</div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Số dư:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        <fmt:formatNumber value="${bill.account.balance}" /> VNĐ
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                                <div class="col-lg-6">

                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Thông Tin Hóa Đơn</h5>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Mã giao dịch:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${bill.transactionCode}</div>
                                                </div>
                                            </div>

                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Số tiền:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        <span style="color: green; font-weight: bold;">
                                                            +
                                                            <fmt:formatNumber value="${bill.amount}" /> VNĐ
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Nội dung:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${bill.transferContent}</div>
                                                </div>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="row">
                                                    <div class="col-lg-3 col-md-4 label">Thời gian:</div>
                                                    <div style="font-weight: bold;" class="col-lg-9 col-md-8">
                                                        ${bill.createTime}</div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>

                        <div style="text-align: center; display: flex; justify-content: center;">
                            <div style="margin-right: 10px;">
                                <button style="width: 122px;" class="btn btn-success btn-sm" data-bs-toggle="modal"
                                    data-bs-target="#basicModal">Cộng tiền</button>
                            </div>
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
                    <div class="modal fade" id="basicModal" tabindex="-1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title">Xác Nhận Hoàn Thành Hóa Đơn Nạp Tiền</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Xác nhận cộng tiền <span style="color: green;font-weight: bold;">+
                                        <fmt:formatNumber value="${bill.amount}" /> VNĐ
                                    </span> vào tài khoản
                                    <span style="color: green;font-weight: bold;">${bill.account.fullName}</span>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary btn-sm"
                                        data-bs-dismiss="modal">Đóng</button>
                                    <a href="/admin/bill-submit/${bill.billID}"><button type="button"
                                            class="btn btn-success btn-sm">Xác
                                            Nhận</button></a>
                                </div>
                            </div>
                        </div>
                    </div>
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
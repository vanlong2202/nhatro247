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

                        .table-data-title {
                            width: 300px;
                            display: -webkit-box;
                            -webkit-box-orient: vertical;
                            overflow: hidden;
                            -webkit-line-clamp: 2;
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
                    </style>
                </head>

                <body>
                    <jsp:include page="../layout/header.jsp" />
                    <main id="main" class="main">

                        <div class="pagetitle">
                            <h1>QUẢN LÍ TÀI CHÍNH</h1>
                            <c:if test="${not empty success}">
                                <div class="alert alert-success bg-success text-light border-0 alert-dismissible fade show"
                                    role="alert">
                                    ${success}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"
                                        aria-label="Close"></button>
                                </div>
                            </c:if>
                            <c:if test="${not empty error}">
                                <div class="alert alert-danger bg-danger text-light border-0 alert-dismissible fade show"
                                    role="alert">
                                    ${error}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"
                                        aria-label="Close"></button>
                                </div>
                            </c:if>
                        </div>

                        <section class="section">
                            <div class="row">
                                <div class="col-lg-12">

                                    <div class="card">
                                        <div class="card-body">
                                            <h5 class="card-title">Danh Sách Nạp Tiền Cần Phê Duyệt</h5>
                                            <table class="table datatable">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Mã giao dịch</th>
                                                        <th>Số tiền</th>
                                                        <th>Thời gian</th>
                                                        <th>Nội dung</th>
                                                        <th>Người dùng</th>
                                                        <th>Trạng thái</th>
                                                        <th>Chức năng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="bill" items="${bills}" varStatus="status">
                                                        <tr>
                                                            <td>#${status.index + 1}</td>
                                                            <td>
                                                                ${bill.transactionCode}
                                                            </td>
                                                            <td>
                                                                <c:if test="${bill.billType.billTypeID == 1}">
                                                                    <span style="color: green; font-weight: 500;">
                                                                        +
                                                                        <fmt:formatNumber value="${bill.amount}" /> VNĐ
                                                                    </span>
                                                                </c:if>
                                                                <c:if test="${bill.billType.billTypeID == 2}">
                                                                    <span style="color: red; font-weight: 500;">
                                                                        -
                                                                        <fmt:formatNumber value="${bill.amount}" /> VNĐ
                                                                    </span>
                                                                </c:if>
                                                            </td>
                                                            <td>${bill.createTime}</td>
                                                            <td>
                                                                ${bill.transferContent}
                                                            </td>
                                                            <td>${bill.account.fullName}</td>
                                                            <td>
                                                                <button style="width: 122px;" type="button"
                                                                    class="btn mb-2 btn-primary btn-sm">Chờ Phê
                                                                    Duyệt</button>
                                                                </a>
                                                            </td>
                                                            <td>
                                                                <div
                                                                    style="display: flex; justify-content: space-between;">
                                                                    <a style="width: 88px;margin-right: 5px;"
                                                                        href="/admin/bill-pending/${bill.billID}"
                                                                        class="btn btn-success btn-sm ">Xử Lí</a>
                                                                </div>

                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </section>

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
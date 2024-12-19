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

                        .info-bill {
                            font-weight: 400;
                            font-size: 15px;
                            font-style: initial;
                            color: rgb(33 37 41 / 65%);
                        }

                        /* input {
                            font-weight: 400;
                            font-size: 15px;
                            color: rgb(33 37 41 / 65%);
                        } */

                        .btn-submit {
                            color: #0045a8;
                            background-color: white;
                            border: 2px solid #0045a8;
                            font-weight: 600;
                            font-size: 16px;
                            border-radius: 3px;
                            padding: 5px 16px;
                        }

                        .btn-submit:hover {
                            color: #ffffff;
                            background-color: #0045a8;
                            border: 2px solid #0045a8;
                        }

                        .btn-reset {
                            color: white;
                            background-color: rgb(142, 142, 142);
                            border: 2px solid rgb(142, 142, 142);
                            font-weight: 600;
                            font-size: 16px;
                            border-radius: 3px;
                            padding: 5px 16px;
                        }
                    </style>
                </head>

                <body>
                    <jsp:include page="../layout/header.jsp" />
                    <main id="main" class="main" style="padding-bottom: 0;">

                        <section class="section">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">DANH SÁCH TÀI KHOẢN HỆ THỐNG</h4>
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
                                            <table class="table datatable">
                                                <thead>
                                                    <tr>
                                                        <th>STT</th>
                                                        <th>Tên hệ thống</th>
                                                        <th>Họ và Tên</th>
                                                        <th>Số điện thoại</th>
                                                        <th>Email</th>
                                                        <th>Số dư</th>
                                                        <th>Chức năng</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="account" items="${listAccount}" varStatus="status">
                                                        <tr>
                                                            <td>#${status.index + 1}</td>
                                                            <td>${account.username}</td>
                                                            <td>${account.fullName}</td>
                                                            <td>${account.phone}</td>
                                                            <td>${account.email}</td>
                                                            <td>
                                                                <div style="color: #ff0000;font-weight: 600;">
                                                                    <fmt:formatNumber value="${account.balance}" /> VNĐ
                                                                </div>
                                                            </td>
                                                            <td>
                                                                <a href="#handle"
                                                                    style="color: black;background-color: white;box-shadow: 0 2px 5px grey"
                                                                    onclick="fillAccountInfo('${account.accountID}','${account.username}', '${account.fullName}', '${account.phone}', '${account.email}')"
                                                                    type="button" class="btn btn-secondary btn-sm"
                                                                    title="Update Info"><i class="fa-solid fa-coins"
                                                                        style="color: #ff9500;"></i> Thao tác</a>
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
                    <main id="main" class="main" style="margin-top: 0;">

                        <section class="section">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <h4 class="card-title">NHẬP THÔNG TIN XỬ LÍ</h4>
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
                                            <form:form id="handle" class="row g-3" action="/admin/bill/create"
                                                method="post" modelAttribute="itemsBillDTO">
                                                <form:hidden path="account.accountID" id="accountID" required="true" />
                                                <div class="col-md-6">
                                                    <label class="info-bill" style="left: 0.5rem;"
                                                        for="floatingSelect">Tên
                                                        Username</label>
                                                    <form:input path="account.username" type="text" id="username"
                                                        class="form-control" readonly="true" required="true" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="info-bill" style="left: 0.5rem;"
                                                        for="floatingSelect">Họ và Tên</label>
                                                    <form:input path="account.fullName" type="text" id="fullName"
                                                        class="form-control" readonly="true" required="true" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="info-bill" style="left: 0.5rem;"
                                                        for="floatingSelect">Số điện
                                                        thoại</label>
                                                    <form:input path="account.phone" type="email" id="phone"
                                                        class="form-control" readonly="true" required="true" />
                                                </div>
                                                <div class="col-md-6">
                                                    <label class="info-bill" style="left: 0.5rem;"
                                                        for="floatingSelect">Email</label>
                                                    <form:input path="account.email" type="text" id="email"
                                                        class="form-control" readonly="true" required="true" />
                                                </div>
                                                <div class="form-floating mb-6 col-md-4">
                                                    <form:select path="bill.billType" class="form-select"
                                                        id="floatingSelect" aria-label="State">
                                                        <c:forEach var="type" items="${billType}">
                                                            <option value="${type.billTypeID}">${type.name}
                                                            </option>
                                                        </c:forEach>
                                                    </form:select>
                                                    <label style="left: 0.5rem;" for="floatingSelect">Hình thức</label>
                                                </div>
                                                <div class="form-floating mb-6 col-md-8">
                                                    <form:input path="bill.amount" class="form-select"
                                                        required="true" />
                                                    <label style="left: 0.5rem;" for="floatingSelect">Số tiền
                                                        (VND)</label>
                                                </div>
                                                <div class="form-floating mb-3 col-md-12">
                                                    <form:input path="bill.transferContent" style="height: 5rem;"
                                                        class="form-select" id="floatingSelect" aria-label="State"
                                                        required="true" />
                                                    <label style="left: 0.5rem;" for="floatingSelect">Nội dung giao
                                                        dịch</label>
                                                </div>
                                                <div class="text-center">
                                                    <button type="submit" class="btn-submit">Thực hiện</button>
                                                    <button type="button" class="btn-reset" onclick="resetForm()">Làm
                                                        mới</button>
                                                </div>
                                            </form:form>
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
                        function resetForm() {
                            document.getElementById("handle").reset();
                            document.getElementById("accountID").value = "";
                            document.getElementById("username").value = "";
                            document.getElementById("fullName").value = "";
                            document.getElementById("phone").value = "";
                            document.getElementById("email").value = "";
                        }
                    </script>
                    <script>
                        function fillAccountInfo(id, username, fullName, phone, email) {
                            document.getElementById("accountID").value = id;
                            document.getElementById("fullName").value = fullName;
                            document.getElementById("phone").value = phone;
                            document.getElementById("email").value = email;
                            document.getElementById("username").value = username;
                        }
                    </script>
                    <script>
                        document.addEventListener("DOMContentLoaded", function () {
                            var alert = document.querySelector(".alert");
                            if (alert) {
                                alert.classList.add("show");
                                setTimeout(function () {
                                    alert.classList.remove("show");
                                }, 3000);
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
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
                            <div class="col-lg-12">

                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">Danh Sách Bản Tin Cần Phê Duyệt</h5>
                                        <table class="table datatable">
                                            <thead>
                                                <tr>
                                                    <th>STT</th>
                                                    <th>Tiêu đề</th>
                                                    <th>Loại hình</th>
                                                    <th>Thời gian</th>
                                                    <th>Người đăng</th>
                                                    <th>Trạng thái</th>
                                                    <th>Xử lí</th>
                                                    <th>Chức năng</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="newsletter" items="${news}" varStatus="status">
                                                    <tr>
                                                        <td>#${status.index + 1}</td>
                                                        <td>${newsletter.title}</td>
                                                        <td>${newsletter.newsletterType.name}</td>
                                                        <td>${newsletter.createTime}</td>
                                                        <td>${newsletter.account.fullName}</td>
                                                        <td>
                                                            <c:if test="${newsletter.isStatus == 1}">
                                                                <button style="width: 122px;" type="button"
                                                                    class="btn mb-2 btn-success btn-sm">Đã Phê
                                                                    Duyệt</button>
                                                                </a>
                                                            </c:if>
                                                            <c:if test="${newsletter.isStatus == 2}">
                                                                <button style="width: 122px;" type="button"
                                                                    class="btn mb-2 btn-danger btn-sm">Bị Từ
                                                                    Chối</button>
                                                                </a>
                                                            </c:if>

                                                        </td>
                                                        <td>${newsletter.approver}</td>
                                                        <td>
                                                            <div style="display: flex;">
                                                                <c:if
                                                                    test="${newsletter.isStatus == 1 && newsletter.svip == 0}">
                                                                    <a style="margin-right: 5px;"
                                                                        href="/admin/newsletter-svip/${newsletter.newsletterID}"
                                                                        class="btn btn-success btn-sm "
                                                                        title="Thêm vị trí ưu tiên"><i
                                                                            class="bi bi-star-fill"></i></a>
                                                                </c:if>
                                                                <a style="margin-right: 5px;"
                                                                    href="/admin/newsletter-detail/${newsletter.newsletterID}"
                                                                    class="btn btn-secondary btn-sm "><i
                                                                        class="bi bi-eye-fill"></i></a>

                                                                <a href="/admin/newsletter-delete/${newsletter.newsletterID}"
                                                                    class="btn btn-danger btn-sm"><i
                                                                        class="fa-solid fa-trash"><i
                                                                            class="bi bi-trash"></i></a>
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
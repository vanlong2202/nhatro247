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

                    img {
                        width: 50%;
                    }
                </style>
            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <main id="main" class="main">
                    <section class="section">
                        <div class="row">
                            <div class="col-lg-12">

                                <div class="card">
                                    <div class="card-body">
                                        <h5 class="card-title">THÔNG TIN LIÊN HỆ</h5>
                                        <div class="form-floating mt-3 mb-3 col-md-12">
                                            <input value="${feedback.title}" class="form-select" readonly />
                                            <label for="floatingSelect">Tiêu đề</label>
                                        </div>
                                        <div class="form-floating mt-3 mb-3 col-md-12">
                                            <input value="${feedback.context}" style="height: 5rem;" class="form-select"
                                                id="floatingSelect" readonly />
                                            <label for="floatingSelect">Nội dung liên hệ</label>
                                        </div>
                                        <div class="d-flex ">
                                            <div style="margin-right: 2rem;" class="form-floating mt-3 mb-3 col-md-5">
                                                <input value="${feedback.fullName}" class="form-select" readonly />
                                                <label for="floatingSelect">Họ và Tên</label>
                                            </div>
                                            <div style="margin-right: 2rem;" class="form-floating mt-3 mb-3 col-md-5">
                                                <input value="${feedback.email}" class="form-select" readonly />
                                                <label for="floatingSelect">Email</label>
                                            </div>
                                            <div style="align-content: center;"
                                                class="form-floating mt-3 mb-3 col-md-1">
                                                <a href="mailto:${feedback.email}"><img
                                                        src="/uploads/envelope-solid.svg" alt=""></a>
                                            </div>
                                        </div>
                                        <div style="text-align: center; display: flex; justify-content: center;">
                                            <div style="margin-right: 5px;">
                                                <form:form action="/admin/contact-submit" method="post"
                                                    modelAttribute="feedback">
                                                    <div style="display: none;">
                                                        <form:input path="feedBackID" type="text" />
                                                    </div>
                                                    <button style="width: 122px;" type="submit" name="action"
                                                        value="approve" class="btn btn-success btn-sm">Xác Nhận</button>
                                                </form:form>
                                            </div>
                                            <div>
                                                <button style="width: 122px;" onclick="history.back()" type="reset"
                                                    class="btn btn-secondary btn-sm">Trở lại</button>
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
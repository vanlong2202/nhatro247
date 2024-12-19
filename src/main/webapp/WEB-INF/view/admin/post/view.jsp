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
                </style>
            </head>

            <body>
                <jsp:include page="../layout/header.jsp" />
                <main id="main" class="main">

                    <div class="pagetitle">
                        <h1>QUẢN LÍ BÀI VIẾT</h1>
                    </div>

                    <section class="section">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-body">
                                        <a href="/admin/addPost" style="margin: 10px;" class="mt-3 btn btn-success">Thêm
                                            Bài viết</a>
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
                                                    <th>ID</th>
                                                    <th>Tiêu đề</th>
                                                    <th>Thể loại</th>
                                                    <th>Người đăng</th>
                                                    <th>Ngày đăng</th>
                                                    <th>Hoạt động</th>
                                                    <th>Chức năng</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="post" items="${listPost}" varStatus="status">
                                                    <tr>
                                                        <td>#${status.index + 1}</td>
                                                        <td>
                                                            <div class="table-data-title">
                                                                ${post.title}
                                                            </div>
                                                        </td>
                                                        <td>${post.postType.name}</td>
                                                        <td>${post.account.fullName}</td>
                                                        <td>${post.createTime}</td>
                                                        <td>
                                                            <div class="table-data-active">
                                                                <c:if test="${post.isActive == 1}">
                                                                    <i class="fa-solid fa-circle-check fa-beat"
                                                                        style="color: #00ff55;"></i>
                                                                </c:if>
                                                                <c:if test="${post.isActive == 0}">
                                                                    <i class="fa-solid fa-circle-xmark fa-beat"
                                                                        style="color: #ff0000;"></i>
                                                                </c:if>
                                                            </div>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <a href="/blog-detail/${post.postID}"
                                                                    class="btn table-data-view btn-sm"
                                                                    title="Cập Nhật Thông Tin">
                                                                    <i class="fa-solid fa-eye fa-fade"
                                                                        style="color: #0043b8;"></i>
                                                                </a>
                                                                <c:if test="${post.isActive == 1}">
                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                        href="" type="button" data-bs-toggle="modal"
                                                                        data-bs-target="#modalActive1"
                                                                        data-title="${post.title}"
                                                                        data-id="${post.postID}" class="btn btn-sm"
                                                                        title="Đăng Lại"><i
                                                                            class="fa-solid fa-toggle-on"
                                                                            style="color: #00ff55;"></i></a>
                                                                </c:if>
                                                                <c:if test="${post.isActive == 0}">
                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                        href="" type="button" data-bs-toggle="modal"
                                                                        data-bs-target="#modalActive"
                                                                        data-title="${post.title}"
                                                                        data-id="${post.postID}" class="btn btn-sm"
                                                                        title="Đăng Lại"><i
                                                                            class="fa-solid fa-toggle-off"
                                                                            style="color: #ff0000;"></i></a>
                                                                </c:if>
                                                                <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                    href="/admin/update-post/${post.postID}"
                                                                    type="button" class="btn btn-secondary btn-sm"
                                                                    title="Đăng Lại"><i class="fa-solid fa-pen"
                                                                        style="color: #ff9500;"></i></a>
                                                                <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                    data-bs-toggle="modal" data-bs-target="#basicModal"
                                                                    data-title="${post.title}" data-id="${post.postID}"
                                                                    class="btn btn-danger btn-sm" title="Xóa bản tin"><i
                                                                        class="fa-solid fa-trash fa-bounce"
                                                                        style="color: #ff0000;"></i><span></span></a>
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
                <div class="modal fade" id="basicModal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 style="color: #ff0000;" class="modal-title">XÓA BÀI VIẾT</h5>
                            </div>
                            <div class="modal-body">
                                <p id="modal-body-content"></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary btn-sm"
                                    data-bs-dismiss="modal">Đóng</button>
                                <a id="modal-confirm-btn" href="" style="width: 111px;"
                                    class="btn btn-danger btn-sm">Xác
                                    Nhận</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalActive" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">HIỂN THỊ BÀI VIẾT</h5>
                            </div>
                            <div class="modal-body">
                                <p id="modal-body-content"></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary btn-sm"
                                    data-bs-dismiss="modal">Đóng</button>
                                <a id="modal-confirm-btn" href="" style="width: 111px;"
                                    class="btn btn-success btn-sm">Hiển Thị</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="modalActive1" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">ẨN BÀI VIẾT</h5>
                            </div>
                            <div class="modal-body">
                                <p id="modal-body-content"></p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary btn-sm"
                                    data-bs-dismiss="modal">Đóng</button>
                                <a id="modal-confirm-btn" href="" style="width: 111px;"
                                    class="btn btn-danger btn-sm">XÁC NHẬN</a>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../layout/sidebar.jsp" />
                <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                        class="bi bi-arrow-up-short"></i></a>
                <script type="text/javascript">
                    document.addEventListener('DOMContentLoaded', function () {
                        const modal = document.getElementById('basicModal');
                        const modalBodyContent = modal.querySelector('#modal-body-content');
                        const confirmButton = modal.querySelector('#modal-confirm-btn');
                        modal.addEventListener('show.bs.modal', function (event) {
                            const button = event.relatedTarget;
                            const title = button.getAttribute('data-title');
                            const id = button.getAttribute('data-id');
                            modalBodyContent.textContent = 'Bạn chắc chắn muốn xóa bản tin "' + title + '" này không? Không thể khôi phục sau khi thực hiện.';
                            confirmButton.href = '/admin/delete-post/' + id;
                        });
                    });
                    document.addEventListener('DOMContentLoaded', function () {
                        const modal = document.getElementById('modalActive');
                        const modalBodyContent = modal.querySelector('#modal-body-content');
                        const confirmButton = modal.querySelector('#modal-confirm-btn');
                        modal.addEventListener('show.bs.modal', function (event) {
                            const button = event.relatedTarget;
                            const title = button.getAttribute('data-title');
                            const id = button.getAttribute('data-id');
                            modalBodyContent.textContent = 'Xác nhận hiển thị bản tin "' + title + '" này !';
                            confirmButton.href = '/admin/update-active-post/' + id;
                        });
                    });
                    document.addEventListener('DOMContentLoaded', function () {
                        const modal = document.getElementById('modalActive1');
                        const modalBodyContent = modal.querySelector('#modal-body-content');
                        const confirmButton = modal.querySelector('#modal-confirm-btn');
                        modal.addEventListener('show.bs.modal', function (event) {
                            const button = event.relatedTarget;
                            const title = button.getAttribute('data-title');
                            const id = button.getAttribute('data-id');
                            modalBodyContent.textContent = 'Xác nhận ẩn bản tin "' + title + '" này !';
                            confirmButton.href = '/admin/update-active-post/' + id;
                        });
                    });
                </script>
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
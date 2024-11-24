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

                    <!-- Favicons -->
                    <link href="/admin/img/favicon.png" rel="icon">
                    <link href="/admin/img/apple-touch-icon.png" rel="apple-touch-icon">

                    <!-- Google Fonts -->
                    <link href="https://fonts.gstatic.com" rel="precoblogect">
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

                        .card-body {
                            margin-top: 20px;
                        }
                    </style>
                </head>

                <body>
                    <jsp:include page="../layout/header.jsp" />
                    <main id="main" class="main">

                        <div class="pagetitle">
                            <h1>THÊM MỚI BÀI VIẾT</h1>
                        </div>

                        <div class="col-lg-12">

                            <div class="card">
                                <div class="card-body">
                                    <form:form action="/admin/post/update-submit" method="post" modelAttribute="blog"
                                        enctype="multipart/form-data">
                                        <div class="row mb-3">
                                            <label for="inputText" class="col-sm-2 col-form-label">Tiêu Đề</label>
                                            <div class="col-sm-10">
                                                <input style="display: none;" name="postID" id="postID"
                                                    value="${blog.postID}" type="text">
                                                <input value="${blog.title}" id="name" name="title" type="text"
                                                    class="form-control">
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label">Loại Bài Viết</label>

                                            <div class="col-sm-10">
                                                <select id="postType" name="postType" class="form-select" disabled>
                                                    <c:forEach var="type" items="${type}">
                                                        <option value="${postType.postTypeID}"
                                                            ${blog.postType.postTypeID==type.postTypeID ? 'selected'
                                                            : '' }>
                                                            ${type.name}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="inputEmail" class="col-sm-2 col-form-label">Nội Dung Bài
                                                Viết</label>
                                            <div class="col-sm-10">
                                                <textarea id="content" name="content"
                                                    class="tinymce-editor">${blog.content}</textarea>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <label for="inputNumber" class="col-sm-2 col-form-label">Tải Hình
                                                Ảnh</label>
                                            <div class="col-sm-10">
                                                <input name="file" id="image" type="file" class="form-control"
                                                    accept="image/*">
                                                <img id="previewImage" src="/uploads/${blog.image}" alt="Preview Image"
                                                    style="max-width: 400px; height: 250px; object-fit: cover; margin-top: 10px;">
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label"></label>
                                            <div class="col-sm-10">
                                                <button type="submit" class="btn btn-primary">Đăng</button>
                                            </div>
                                        </div>

                                    </form:form>

                                </div>
                            </div>

                        </div>


                        </div>
                    </main>
                    <jsp:include page="../layout/sidebar.jsp" />
                    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                            class="bi bi-arrow-up-short"></i></a>

                    <script>
                        const imageInput = document.getElementById('image');
                        const previewImage = document.getElementById('previewImage');

                        imageInput.addEventListener('change', (event) => {
                            const file = event.target.files[0];

                            if (file && file.type.startsWith('image/')) {
                                const reader = new FileReader();

                                reader.onload = (e) => {
                                    previewImage.src = e.target.result;
                                    previewImage.style.display = 'block';
                                };
                                reader.readAsDataURL(file);
                            } else {
                                previewImage.style.display = 'none';
                            }
                        });
                    </script>
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
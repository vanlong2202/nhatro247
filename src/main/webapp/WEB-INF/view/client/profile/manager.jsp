<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <link
                    href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
                    rel="stylesheet">
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
                <title>Quản lí bản tin - TroNhanh247</title>
                <link href="/css/bootstrap.min.css" rel="stylesheet">
                <link rel="stylesheet" href="/css/fontawesome.css">
                <link rel="stylesheet" href="/css/templatemo-villa-agency.css">
                <link rel="stylesheet" href="/css/owl.css">
                <link rel="stylesheet" href="/css/animate.css">
                <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
                <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

                <style>
                    table {
                        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                    }

                    table a {
                        width: 30px;
                    }

                    .alert {
                        color: white;
                        position: fixed;
                        top: 170px;
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

                    .btn-close {
                        color: white;
                    }

                    footer {
                        margin-top: 0;
                    }

                    .section {
                        margin-top: 0;
                    }
                </style>
            </head>

            <body>
                <div id="js-preloader" class="js-preloader">
                    <div class="preloader-inner">
                        <span class="dot"></span>
                        <div class="dots">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </div>
                </div>
                <c:if test="${not empty success}">
                    <div class="alert alert-success bg-success text-light border-0 alert-dismissible fade show"
                        role="alert">
                        ${success}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>
                <c:if test="${not empty error}">
                    <div class="alert alert-danger bg-danger text-light border-0 alert-dismissible fade show"
                        role="alert">
                        ${error}
                        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                    </div>
                </c:if>

                <div class="sub-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 col-md-8">
                                <ul class="info">
                                    <li><i class="fa fa-envelope"></i> kiemtro247.com</li>
                                    <li><i class="fa fa-map"></i>Nghệ An, Việt Nam</li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <ul class="social-links">
                                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                                    <li><a href="https://x.com/minthu" target="_blank"><i
                                                class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../layout/header.jsp" />
                <div class="page-heading header-text">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <span class="breadcrumb"><a href="#">Home</a> / Manager</span>
                                <h3>QUẢN LÍ BẢN TIN</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section best-deal">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="section-heading">
                                    <h6>| MANAGER</h6>
                                    <h2>QUẢN LÍ BẢN TIN</h2>
                                </div>
                            </div>
                            <div class="col-lg-12">
                                <div class="tabs-content">
                                    <div class="row">
                                        <div class="nav-wrapper ">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li class="nav-item" role="presentation">
                                                    <button style="width: 200px;font-size: 14px;"
                                                        class="nav-link active" id="appartment-tab" data-bs-toggle="tab"
                                                        data-bs-target="#appartment" type="button" role="tab"
                                                        aria-controls="appartment" aria-selected="true">ĐÃ PHÊ DUYỆT
                                                        [${countActive}]</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button style="width: 200px;font-size: 14px;" class="nav-link"
                                                        id="villa-tab" data-bs-toggle="tab" data-bs-target="#villa"
                                                        type="button" role="tab" aria-controls="villa"
                                                        aria-selected="false" tabindex="-1">BỊ TỪ CHỐI
                                                        [${countRefuse}]</button>
                                                </li>
                                                <li class="nav-item" role="presentation">
                                                    <button style="width: 200px;font-size: 14px;" class="nav-link"
                                                        id="penthouse-tab" data-bs-toggle="tab"
                                                        data-bs-target="#penthouse" type="button" role="tab"
                                                        aria-controls="penthouse" aria-selected="false"
                                                        tabindex="-1">BẢN TIN ƯU TIÊN [${countSvip}]</button>
                                                </li>
                                                <li class="nav-item" role="pending">
                                                    <button style="width: 200px;font-size: 14px;" class="nav-link"
                                                        id="pending-tab" data-bs-toggle="tab" data-bs-target="#pending"
                                                        type="button" role="tab" aria-controls="pending"
                                                        aria-selected="false" tabindex="-1">CHỜ PHÊ DUYỆT
                                                        [${countPending}]</button>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="tab-content" id="myTabContent">
                                            <div class="tab-pane fade show active" id="appartment" role="tabpanel"
                                                aria-labelledby="appartment-tab">
                                                <div class="service-items">
                                                    <c:if test="${empty news}">
                                                        <div class="notication-error">
                                                            <span>Không có bản
                                                                tin
                                                                nào !</span>
                                                        </div>
                                                    </c:if>
                                                    <c:forEach var="post" items="${news}">
                                                        <div class="service-item">
                                                            <div class="service-item-img">
                                                                <a href="/newsletter-detail/${post.newsletterID}"><img
                                                                        src="/uploads/${post.image1}" alt=""></a>
                                                                <c:if test="${post.svip == 1}">
                                                                    <div class="tag">VIP</div>
                                                                </c:if>
                                                            </div>
                                                            <div class="service-item__content">
                                                                <div class="service-context-title"><a
                                                                        href="/newsletter-detail/${post.newsletterID}">${post.title}</a>
                                                                </div>
                                                                <div class="newsletter-context-button">
                                                                    <button>${post.format}</button>
                                                                    <button>${post.newsletterType.name}</button>
                                                                    <button>${post.createTime}</button>
                                                                </div>
                                                                <div class="newsletter-context-button">
                                                                    <c:if test="${post.isActive == 1}">
                                                                        <button class="btn-active"
                                                                            style="color: #005eff; border: 2px #005eff solid;">Đang
                                                                            hoạt
                                                                            động <i
                                                                                class="fa-solid fa-circle fa-beat fa-xs"
                                                                                style="color: #005eff;"></i></button>
                                                                    </c:if>
                                                                    <c:if test="${post.isActive == 0}">
                                                                        <button class="btn-active"
                                                                            style="color: #ff0000; border: 2px #ff0000 solid;">Không
                                                                            hoạt
                                                                            động <i
                                                                                class="fa-solid fa-circle fa-beat fa-xs"
                                                                                style="color: #ff0000;"></i></button>
                                                                    </c:if>
                                                                    <c:if test="${post.isStatus == 0}">
                                                                        <button
                                                                            style="background-color: #005eff;color: white;">Chờ
                                                                            phê duyệt</button>
                                                                    </c:if>
                                                                    <c:if test="${post.isStatus == 1}">
                                                                        <button
                                                                            style="background-color: #198754;color: white;">Đã
                                                                            phê duyệt</button>
                                                                    </c:if>
                                                                    <c:if test="${post.isStatus == 2}">
                                                                        <button
                                                                            style="background-color: #ff0000;color: white;">Bị
                                                                            từ chối</button>
                                                                    </c:if>
                                                                </div>
                                                                <div class="newsletter-context-button">
                                                                    <c:if test="${post.svip == 0}">
                                                                        <a href="" type="button" data-bs-toggle="modal"
                                                                            data-bs-target="#modalSvip"
                                                                            data-title="${post.title}"
                                                                            data-id="${post.newsletterID}"><i
                                                                                class="fa-solid fa-crown fa-beat"
                                                                                style="color: #FFD43B;"></i> Nâng cấp
                                                                            tin</a>
                                                                    </c:if>
                                                                    <a
                                                                        href="/manager-edit-newsletter/${post.newsletterID}"><i
                                                                            class="fa-solid fa-pen"
                                                                            style="color: #ff9500;"></i> Sữa tin</a>
                                                                    <c:if test="${post.isActive == 1}">
                                                                        <a href="" type="button" data-bs-toggle="modal"
                                                                            data-bs-target="#modalActive1"
                                                                            data-title="${post.title}"
                                                                            data-id="${post.newsletterID}"><i
                                                                                class="fa-solid fa-toggle-off"
                                                                                style="color: #ff0000;"></i> Đóng
                                                                            tin</a>
                                                                    </c:if>
                                                                    <c:if test="${post.isActive == 0}">
                                                                        <a href="" type="button" data-bs-toggle="modal"
                                                                            data-bs-target="#modalActive"
                                                                            data-title="${post.title}"
                                                                            data-id="${post.newsletterID}"><i
                                                                                class="fa-solid fa-toggle-on"
                                                                                style="color: #00ff55;"></i> Bật tin</a>
                                                                    </c:if>
                                                                    <a data-bs-toggle="modal"
                                                                        data-bs-target="#basicModal"
                                                                        data-title="${post.title}"
                                                                        data-id="${post.newsletterID}"><i
                                                                            class="fa-solid fa-trash fa-bounce"
                                                                            style="color: #ff0000;"></i> Xóa bản tin</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                    <c:if test="${totalPages > 0}">
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <ul class="pagination">
                                                                    <c:if test="${curentPage > 3}">
                                                                        <li>
                                                                            <a
                                                                                href="/maneger-newsletter?page=1${queryString}"><i
                                                                                    class="fa-solid fa-angles-left"
                                                                                    style="color: #3a3a3a;"></i></a>
                                                                        </li>

                                                                    </c:if>
                                                                    <c:if test="${curentPage > 1}">
                                                                        <li>
                                                                            <a
                                                                                href="/maneger-newsletter?page=${curentPage-1}${queryString}"><i
                                                                                    class="fa-solid fa-angle-left"
                                                                                    style="color: #3a3a3a;"></i></a>
                                                                        </li>
                                                                    </c:if>
                                                                    <c:forEach begin="0" end="${totalPages-1}"
                                                                        varStatus="status">
                                                                        <c:if
                                                                            test="${(status.index + 1) > curentPage-3 && curentPage+3 > (status.index + 1)}">
                                                                            <li><a class="${(status.index + 1) eq curentPage ? 'is_active':''}"
                                                                                    href="/maneger-newsletter?page=${status.index+1}${queryString}">${status.index+1}</a>
                                                                            </li>
                                                                        </c:if>
                                                                    </c:forEach>
                                                                    <c:if test="${(totalPages) > curentPage}">
                                                                        <li><a
                                                                                href="/maneger-newsletter?page=${curentPage+1}${queryString}"><i
                                                                                    class="fa-solid fa-angle-right"
                                                                                    style="color: #3a3a3a;"></i></a>
                                                                        </li>

                                                                    </c:if>
                                                                    <c:if test="${(totalPages-3) > curentPage}">
                                                                        <li><a
                                                                                href="/maneger-newsletter?page=${totalPages}${queryString}"><i
                                                                                    class="fa-solid fa-angles-right"
                                                                                    style="color: #3a3a3a;"></i></a>
                                                                        </li>

                                                                    </c:if>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </div>


                                            </div>

                                            <div class="tab-pane fade" id="villa" role="tabpanel"
                                                aria-labelledby="villa-tab">
                                                <div class="card shadow mb-4">
                                                    <div class="card-header">
                                                        <h6 class="card-title">DANH SÁCH BẢN TIN BỊ TỪ CHỐI</h6>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="card-body">
                                                            <c:if test="${empty refuse}">
                                                                Không có kết quả nào !
                                                            </c:if>
                                                            <c:if test="${not empty refuse}">
                                                                <table class="table table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>ID</th>
                                                                            <th>Tiều đề</th>
                                                                            <th>Loại hình</th>
                                                                            <th>Thời gian</th>
                                                                            <th>Trạng thái</th>
                                                                            <th>Lí do</th>
                                                                            <th>Chức năng</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach var="list" items="${refuse}"
                                                                            varStatus="status">
                                                                            <tr>
                                                                                <td>#${status.index + 1}</td>
                                                                                <td style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis; max-width: 200px;"
                                                                                    class="col-lg-3">${list.title}
                                                                                </td>
                                                                                <td>
                                                                                    ${list.newsletterType.name}
                                                                                </td>
                                                                                <td class="col-lg-2">
                                                                                    ${list.createTime}</td>
                                                                                <td>
                                                                                    <c:if test="${list.isStatus == 0}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-primary btn-sm">Đang
                                                                                            Phê
                                                                                            Duyệt</button>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isStatus == 1}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-success pd-2 btn-sm">Đã
                                                                                            Phê Duyệt</button>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isStatus == 2}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-danger btn-sm">Bị
                                                                                            Từ Chối</button>
                                                                                    </c:if>
                                                                                </td>
                                                                                <td class="col-lg-2"
                                                                                    style="color: #ff0000;">
                                                                                    ${list.description}
                                                                                </td>
                                                                                <td>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        href="/newsletter-detail/${list.newsletterID}"
                                                                                        class="btn mb-2 btn-info btn-sm"
                                                                                        title="Xem Chi Tiết">
                                                                                        <i style="color: rgb(0, 38, 255);"
                                                                                            class="fas fa-eye"></i>
                                                                                    </a>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        href="/manager-edit-newsletter/${list.newsletterID}"
                                                                                        type="button"
                                                                                        class="btn mb-2 btn-secondary btn-sm"
                                                                                        title="Đăng Lại"><i
                                                                                            class="fa-solid fa-repeat fa-flip"
                                                                                            style="color: #005eff;"></i></a>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        data-bs-toggle="modal"
                                                                                        data-bs-target="#basicModal"
                                                                                        data-title="${list.title}"
                                                                                        data-id="${list.newsletterID}"
                                                                                        class="btn mb-2 btn-danger btn-sm"
                                                                                        title="Xóa bản tin"><i
                                                                                            class="fa-solid fa-trash fa-bounce"
                                                                                            style="color: #ff0000;"></i><span></span></a>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="penthouse" role="tabpanel"
                                                aria-labelledby="penthouse-tab">
                                                <div class="card shadow mb-4">
                                                    <div class="card-header">
                                                        <h6 class="card-title">DANH SÁCH BẢN TIN ƯU TIÊN</h6>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="card-body">
                                                            <c:if test="${empty svip}">
                                                                Không có kết quả nào !
                                                            </c:if>
                                                            <c:if test="${not empty svip}">
                                                                <table class="table table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>ID</th>
                                                                            <th>Tiều đề</th>
                                                                            <th>Loại hình</th>
                                                                            <th>Thời gian</th>
                                                                            <th>Trạng thái</th>
                                                                            <th>Hoạt Động</th>
                                                                            <th>Chức năng</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach var="list" items="${svip}"
                                                                            varStatus="status">
                                                                            <tr>
                                                                                <td>#${status.index + 1}</td>
                                                                                <td style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis; max-width: 200px;"
                                                                                    class="col-lg-3">${list.title}
                                                                                </td>
                                                                                <td>
                                                                                    ${list.newsletterType.name}
                                                                                </td>
                                                                                <td class="col-lg-2">
                                                                                    ${list.createTime}</td>
                                                                                <td>
                                                                                    <c:if test="${list.isStatus == 0}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-primary btn-sm">Đang
                                                                                            Phê
                                                                                            Duyệt</button>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isStatus == 1}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-success pd-2 btn-sm">Đã
                                                                                            Phê Duyệt</button>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isStatus == 2}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-danger btn-sm">Bị
                                                                                            Từ Chối</button>
                                                                                    </c:if>
                                                                                </td>
                                                                                <td>
                                                                                    <c:if test="${list.isActive == 1}">
                                                                                        <div
                                                                                            style="width: 100px;text-align: center;">
                                                                                            <i class="fa-solid fa-circle-check fa-beat"
                                                                                                style="color: #00ff55;"></i>
                                                                                        </div>

                                                                                    </c:if>
                                                                                    <c:if test="${list.isActive == 0}">
                                                                                        <div
                                                                                            style="width: 100px;text-align: center;">
                                                                                            <i class="fa-solid fa-circle-xmark fa-beat"
                                                                                                style="color: #ff0000;"></i>
                                                                                        </div>
                                                                                    </c:if>
                                                                                </td>
                                                                                <td>

                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        href="/newsletter-detail/${list.newsletterID}"
                                                                                        class="btn mb-2 btn-info btn-sm"
                                                                                        title="Xem Chi Tiết">
                                                                                        <i style="color: rgb(0, 38, 255);"
                                                                                            class="fas fa-eye"></i>
                                                                                    </a>
                                                                                    <c:if test="${list.isActive == 1}">
                                                                                        <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                            href="" type="button"
                                                                                            data-bs-toggle="modal"
                                                                                            data-bs-target="#modalActive1"
                                                                                            data-title="${list.title}"
                                                                                            data-id="${list.newsletterID}"
                                                                                            class="btn mb-2 btn-sm"
                                                                                            title="Đăng Lại"><i
                                                                                                class="fa-solid fa-toggle-on"
                                                                                                style="color: #00ff55;"></i></a>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isActive == 0}">
                                                                                        <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                            href="" type="button"
                                                                                            data-bs-toggle="modal"
                                                                                            data-bs-target="#modalActive"
                                                                                            data-title="${list.title}"
                                                                                            data-id="${list.newsletterID}"
                                                                                            class="btn mb-2 btn-sm"
                                                                                            title="Đăng Lại"><i
                                                                                                class="fa-solid fa-toggle-off"
                                                                                                style="color: #ff0000;"></i></a>
                                                                                    </c:if>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        href="/manager-edit-newsletter/${list.newsletterID}"
                                                                                        type="button"
                                                                                        class="btn mb-2 btn-secondary btn-sm"
                                                                                        title="Đăng Lại"><i
                                                                                            class="fa-solid fa-pen"
                                                                                            style="color: #ff9500;"></i></a>

                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        data-bs-toggle="modal"
                                                                                        data-bs-target="#basicModal"
                                                                                        data-title="${list.title}"
                                                                                        data-id="${list.newsletterID}"
                                                                                        class="btn mb-2 btn-danger btn-sm"
                                                                                        title="Xóa bản tin"><i
                                                                                            class="fa-solid fa-trash fa-bounce"
                                                                                            style="color: #ff0000;"></i><span></span></a>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="pending" role="pending"
                                                aria-labelledby="pending-tab">
                                                <div class="card shadow mb-4">
                                                    <div class="card-header">
                                                        <h6 class="card-title">DANH SÁCH BẢN TIN ƯU TIÊN</h6>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="card-body">
                                                            <c:if test="${empty pending}">
                                                                Không có kết quả nào !
                                                            </c:if>
                                                            <c:if test="${not empty pending}">
                                                                <table class="table table-hover">
                                                                    <thead>
                                                                        <tr>
                                                                            <th>ID</th>
                                                                            <th>Tiều đề</th>
                                                                            <th>Loại hình</th>
                                                                            <th>Thời gian</th>
                                                                            <th>Trạng thái</th>
                                                                            <th>Chức năng</th>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <c:forEach var="list" items="${pending}"
                                                                            varStatus="status">
                                                                            <tr>
                                                                                <td>#${status.index + 1}</td>
                                                                                <td style="white-space: nowrap; overflow: hidden;text-overflow: ellipsis; max-width: 200px;"
                                                                                    class="col-lg-3">${list.title}
                                                                                </td>
                                                                                <td>
                                                                                    ${list.newsletterType.name}
                                                                                </td>
                                                                                <td class="col-lg-2">
                                                                                    ${list.createTime}</td>
                                                                                <td>
                                                                                    <c:if test="${list.isStatus == 0}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-primary btn-sm">Đang
                                                                                            Phê
                                                                                            Duyệt</button>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isStatus == 1}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-success pd-2 btn-sm">Đã
                                                                                            Phê Duyệt</button>
                                                                                    </c:if>
                                                                                    <c:if test="${list.isStatus == 2}">
                                                                                        <button style="width: 122px;"
                                                                                            type="button"
                                                                                            class="btn mb-2 btn-danger btn-sm">Bị
                                                                                            Từ Chối</button>
                                                                                    </c:if>
                                                                                </td>

                                                                                <td>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        href="/newsletter-detail/${list.newsletterID}"
                                                                                        class="btn mb-2 btn-info btn-sm"
                                                                                        title="Xem Chi Tiết">
                                                                                        <i style="color: rgb(0, 38, 255);"
                                                                                            class="fas fa-eye"></i>
                                                                                    </a>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        href="/manager-edit-newsletter/${list.newsletterID}"
                                                                                        type="button"
                                                                                        class="btn mb-2 btn-secondary btn-sm"
                                                                                        title="Đăng Lại"><i
                                                                                            class="fa-solid fa-pen"
                                                                                            style="color: #ff9500;"></i></a>
                                                                                    <a style="background-color: white;box-shadow: 0 2px 5px grey"
                                                                                        data-bs-toggle="modal"
                                                                                        data-bs-target="#basicModal"
                                                                                        data-title="${list.title}"
                                                                                        data-id="${list.newsletterID}"
                                                                                        class="btn mb-2 btn-danger btn-sm"
                                                                                        title="Xóa bản tin"><i
                                                                                            class="fa-solid fa-trash fa-bounce"
                                                                                            style="color: #ff0000;"></i><span></span></a>
                                                                                </td>
                                                                            </tr>
                                                                        </c:forEach>
                                                                    </tbody>
                                                                </table>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="basicModal" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 style="color: #ff0000;" class="modal-title">Xóa Bản Tin</h5>
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
                                <h5 class="modal-title">Bật Trạng Thái Hoạt Động Bản Tin</h5>
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
                                <h5 class="modal-title">TẮT TRẠNG THÁI HOẠT ĐỘNG BẢN TIN</h5>
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
                <div class="modal fade" id="modalSvip" tabindex="-1">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">NÂNG CẤP TIN [SVIP]</h5>
                            </div>
                            <div class="modal-body">
                                <div class="body-items">
                                    <span style="font-weight: 600;">Bản tin: </span><span
                                        id="modal-body-content"></span><br>
                                </div>
                                <span style="font-weight: 600;">Phương thức thanh toán: </span><br>
                                <input type="radio" checked>
                                <span>Thanh toán bằng tài khoản cá
                                    nhân</span><br>
                                <div class="body-items">
                                    <span style="font-weight: 600;">Số tiền thanh toán: </span><span
                                        style="color: #ff0000;font-weight: 600;">99.000 VNĐ</span>
                                </div>
                                <div><i style="font-weight: initial;">(Tính năng giúp thay đổi vị trí hiển thị bản tin
                                        để tiếp cận được nhiều người
                                        xem hơn.)</i></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="button-items__close" data-bs-dismiss="modal">Đóng</button>
                                <a id="modal-confirm-btn" href="" class="button-items__submit" aria-readonly="true">Xác
                                    nhận</a>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../layout/footer.jsp" />
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const modal = document.getElementById('basicModal');
                        const modalBodyContent = modal.querySelector('#modal-body-content');
                        const confirmButton = modal.querySelector('#modal-confirm-btn');
                        modal.addEventListener('show.bs.modal', function (event) {
                            const button = event.relatedTarget;
                            const title = button.getAttribute('data-title');
                            const id = button.getAttribute('data-id');
                            modalBodyContent.textContent = 'Bạn chắc chắn muốn xóa bản tin "' + title + '" này không? Không thể khôi phục sau khi thực hiện.';
                            confirmButton.href = '/delete-newsletter/' + id;
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
                            confirmButton.href = '/update-active-newsletter/' + id;
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
                            confirmButton.href = '/update-active-newsletter/' + id;
                        });
                    });
                    document.addEventListener('DOMContentLoaded', function () {
                        const modal = document.getElementById('modalSvip');
                        const modalBodyContent = modal.querySelector('#modal-body-content');
                        const confirmButton = modal.querySelector('#modal-confirm-btn');
                        modal.addEventListener('show.bs.modal', function (event) {
                            const button = event.relatedTarget;
                            const title = button.getAttribute('data-title');
                            const id = button.getAttribute('data-id');
                            modalBodyContent.textContent = title;
                            confirmButton.href = '/update-svip-newsletter/' + id;
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
                <script src="/jquery/jquery.min.js"></script>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/isotope.min.js"></script>
                <script src="/js/owl-carousel.js"></script>
                <script src="/js/counter.js"></script>
                <script src="/js/custom.js"></script>
                <script
                    src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>

            </body>

            </html>
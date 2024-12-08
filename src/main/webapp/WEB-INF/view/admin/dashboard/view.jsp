<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <meta content="width=device-width, initial-scale=1.0" name="viewport">

                    <title>Trang Quản Trị - NhaTro247</title>
                    <meta content="" name="description">
                    <meta content="" name="keywords">

                    <link href="/images/icon.png" rel="icon">
                    <link href="/admin/img/apple-touch-icon.png" rel="apple-touch-icon">
                    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"
                        rel="stylesheet">

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
                        .circle {
                            display: inline-flex;
                            border-radius: 50%;
                            align-items: center !important;
                            text-align: center;
                        }

                        .circle-sm {
                            width: 32px;
                            height: 32px;
                        }

                        .bg-danger {
                            background-color: #dc3545 !important;
                        }

                        .list-group-item {
                            margin: 14px;
                        }
                    </style>
                </head>

                <body>
                    <jsp:include page="../layout/header.jsp" />
                    <main id="main" class="main">

                        <div class="pagetitle">
                            <h1>Dashboard</h1>
                            <nav>
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item active">Dashboard</li>
                                </ol>
                            </nav>
                        </div><!-- End Page Title -->

                        <section class="section dashboard">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="row">
                                        <div class="col-xxl-4 col-md-6">
                                            <div class="card info-card revenue-card">
                                                <div class="card-body">
                                                    <h5 class="card-title">Tổng Doanh Thu <span>| Tháng ${month}</span>
                                                    </h5>
                                                    <div class="d-flex align-items-center">
                                                        <div
                                                            class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                            <i class="fa-solid fa-coins" style="color: #2eca6a;"></i>
                                                        </div>
                                                        <div class="ps-3">
                                                            <div class="d-flex align-items-end">
                                                                <h6>
                                                                    <fmt:formatNumber value="${totalBillMonth}" />
                                                                </h6>
                                                                <span style="color: #012970; font-weight: 500;"
                                                                    class="pt-2 ps-1"> VNĐ</span>
                                                            </div>
                                                            <c:if test="${percentageChange < 0}">
                                                                <span
                                                                    class="text-danger small pt-1 fw-bold">${percentageChange}%</span>
                                                                <span class="text-muted small pt-2 ps-1"> [
                                                                    <fmt:formatNumber value="${totalBillLastMonth}" />
                                                                    VNĐ]
                                                                    THÁNG ${lastmonth}
                                                                </span>
                                                            </c:if>
                                                            <c:if test="${percentageChange >= 0}">
                                                                <span
                                                                    class="text-success small pt-1 fw-bold">${percentageChange}%</span>
                                                                <span class="text-muted small pt-2 ps-1">[1.000.000 VNĐ]
                                                                    Tháng 10</span>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xxl-4 col-md-6">
                                            <div class="card info-card sales-card">
                                                <div class="card-body">
                                                    <h5 class="card-title">Bản Tin <span>| Tháng ${month}</span></h5>
                                                    <div class="d-flex align-items-center">
                                                        <div
                                                            class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                            <i class="fa-solid fa-bookmark" style="color: #005eff;"></i>
                                                        </div>
                                                        <div class="ps-3">
                                                            <div class="d-flex align-items-end">
                                                                <h6>${newsmonth}</h6>
                                                                <span style="color: #012970; font-weight: 500;"
                                                                    class="pt-2 ps-1"> BẢN TIN</span>
                                                            </div>
                                                            <c:if test="${percentageNews < 0}">
                                                                <span
                                                                    class="text-danger small pt-1 fw-bold">${percentageNews}
                                                                    %</span>
                                                            </c:if>
                                                            <c:if test="${percentageNews >= 0}">
                                                                <span
                                                                    class="text-success small pt-1 fw-bold">${percentageNews}
                                                                    %</span>
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-xxl-4 col-xl-12">
                                            <div class="card info-card customers-card">
                                                <div class="card-body">
                                                    <h5 class="card-title">Tài Khoản <span>| USER</span></h5>
                                                    <div class="d-flex align-items-center">
                                                        <div
                                                            class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                            <i class="bi bi-people"></i>
                                                        </div>
                                                        <div class="ps-3">
                                                            <div class="d-flex align-items-end">
                                                                <h6>${countAcc}</h6>
                                                                <span style="color: #012970; font-weight: 500;"
                                                                    class="pt-2 ps-1"> TÀI KHOẢN</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="filter">
                                                    <a class="icon" href="#" data-bs-toggle="dropdown"><i
                                                            class="bi bi-three-dots"></i></a>
                                                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                                        <li class="dropdown-header text-start">
                                                            <h6>Filter</h6>
                                                        </li>
                                                        <li><a class="dropdown-item" href="#">Today</a></li>
                                                        <li><a class="dropdown-item" href="#">This Month</a></li>
                                                        <li><a class="dropdown-item" href="#">This Year</a></li>
                                                    </ul>
                                                </div>
                                                <div class="card-body">
                                                    <div class="card-header">
                                                        <strong>THỐNG KÊ KIỂM DUYỆT BẢN TIN</strong>
                                                    </div>
                                                    <div id="reportsChart"></div>
                                                    <script>
                                                        document.addEventListener("DOMContentLoaded", () => {
                                                            // Fetch dữ liệu từ API backend
                                                            fetch("/api/dashboard/chart-data")
                                                                .then(response => response.json())
                                                                .then(data => {
                                                                    // Dữ liệu nhận được từ backend
                                                                    const chartData = processChartData(data);

                                                                    // Khởi tạo biểu đồ với dữ liệu đã xử lý
                                                                    new ApexCharts(document.querySelector("#reportsChart"), {
                                                                        series: [{
                                                                            name: 'Chờ Phê Duyệt',
                                                                            data: chartData['0']
                                                                        }, {
                                                                            name: 'Đã Duyệt',
                                                                            data: chartData['1']
                                                                        }, {
                                                                            name: 'Từ Chối',
                                                                            data: chartData['2']
                                                                        }],
                                                                        chart: {
                                                                            height: 350,
                                                                            type: 'area',
                                                                            toolbar: {
                                                                                show: false
                                                                            }
                                                                        },
                                                                        markers: {
                                                                            size: 4
                                                                        },
                                                                        colors: ['#4154f1', '#2eca6a', '#f00404'],
                                                                        fill: {
                                                                            type: "gradient",
                                                                            gradient: {
                                                                                shadeIntensity: 1,
                                                                                opacityFrom: 0.3,
                                                                                opacityTo: 0.4,
                                                                                stops: [0, 90, 100]
                                                                            }
                                                                        },
                                                                        dataLabels: {
                                                                            enabled: false
                                                                        },
                                                                        stroke: {
                                                                            curve: 'smooth',
                                                                            width: 2
                                                                        },
                                                                        xaxis: {
                                                                            type: 'category',
                                                                            categories: chartData.categories  // Các ngày từ dữ liệu
                                                                        },
                                                                        tooltip: {
                                                                            x: {
                                                                                format: 'dd/MM/yy'  // Định dạng ngày cho tooltip
                                                                            }
                                                                        }
                                                                    }).render();
                                                                })
                                                                .catch(error => console.error("Error fetching chart data:", error));

                                                            // Hàm xử lý dữ liệu từ API
                                                            function processChartData(data) {
                                                                // Sắp xếp dữ liệu theo ngày từ cũ nhất đến mới nhất
                                                                const sortedData = data.sort((a, b) => new Date(a.date) - new Date(b.date));

                                                                const categories = [...new Set(sortedData.map(item => item.date))];  // Lấy các ngày duy nhất
                                                                const seriesData = {
                                                                    '0': [],
                                                                    '1': [],
                                                                    '2': []
                                                                };

                                                                sortedData.forEach(item => {
                                                                    const date = item.date;  // Lấy ngày từ dữ liệu
                                                                    const statusID = item.statusID;  // Lấy statusID (0: Chờ Phê Duyệt, 1: Đã Duyệt, 2: Từ Chối)
                                                                    const count = item.count;  // Lấy số lượng bản tin

                                                                    // Thêm dữ liệu vào series tương ứng
                                                                    seriesData[statusID].push({
                                                                        x: date,
                                                                        y: count
                                                                    });
                                                                });

                                                                return {
                                                                    categories: categories,
                                                                    '0': seriesData['0'],
                                                                    '1': seriesData['1'],
                                                                    '2': seriesData['2']
                                                                };
                                                            }
                                                        });
                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card shadow mb-4">
                                        <div class="card-header">
                                            <strong>BÁO CÁO BẢN TIN</strong>
                                        </div>
                                        <div class="card-body px-4">
                                            <div class="row border-bottom  mt-3">
                                                <c:forEach var="report" items="${dbReport}">
                                                    <div class="col-4 text-center mb-3">
                                                        <p class="mb-1 small text-muted">
                                                            <c:if test="${report.status == 0}">Chờ Xác Thực <i
                                                                    class="fa-solid fa-circle-check"
                                                                    style="color: #4000ff;"></i>
                                                            </c:if>
                                                            <c:if test="${report.status == 1}">Đã Xác Thực <i
                                                                    class="fa-solid fa-circle-check"
                                                                    style="color: #00ff04;"></i>
                                                            </c:if>
                                                        </p>
                                                        <span class="h3">${report.count}</span>
                                                        <p class="mb-1 small text-muted">Báo Cáo</p><br>
                                                    </div>
                                                </c:forEach>

                                                <div class="col-4 text-center mb-3">
                                                    <p class="mb-1 small text-muted">Số Báo Cáo</p>
                                                    <span class="h3">${countReport}</span>
                                                    <p class="mb-1 small text-muted">Báo Cáo</p><br>
                                                </div>
                                            </div>
                                            <table class="table table-borderless mt-3 mb-1 mx-n1 table-sm">
                                                <thead>
                                                    <tr>
                                                        <th class="w-50">
                                                            <h5 style="padding: 0;" class="card-title">LIÊN HỆ</h5>
                                                        </th>
                                                        <th class="text-right"></th>
                                                        <th class="text-right"></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="feedback" items="${dbFeedBack}">
                                                        <tr>
                                                            <td>
                                                                <c:if test="${feedback.status == 0}">
                                                                    <p class="mb-1 small text-muted">Đang Chờ <i
                                                                            class="fa-solid fa-circle-check"
                                                                            style="color: #4000ff;"></i></p>
                                                                </c:if>
                                                                <c:if test="${feedback.status == 1}">
                                                                    <p class="mb-1 small text-muted">Đã Xác Nhận <i
                                                                            class="fa-solid fa-circle-check"
                                                                            style="color: #00ff04;"></i></p>
                                                                </c:if>
                                                            </td>
                                                            <td class="text-right"></td>
                                                            <td class="text-end">
                                                                <div
                                                                    style="display: flex;align-items: baseline; justify-content: flex-end;">
                                                                    <span class="h4">${feedback.count}
                                                                    </span>
                                                                    <p class="mb-1 small text-muted">Liên Hệ</p>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card shadow mb-4">
                                        <div class="card-header">
                                            <strong>TÀI KHOẢN TRONG HỆ THỐNG</strong>
                                        </div>
                                        <div class="card-body">
                                            <div class="list-group list-group-flush my-n3">
                                                <div class="list-group-item">
                                                    <div class="row align-items-center">
                                                        <div class="col-1 text-center">
                                                            <span
                                                                class="circle circle-sm bg-danger justify-content-center">
                                                                <i class="fa-solid fa-users-viewfinder fa-sm"
                                                                    style="color: #ffffff;"></i>
                                                            </span>
                                                        </div>
                                                        <div class="col">
                                                            <span class="h4">${countTotalAcc}</span>
                                                            <div class="my-0 text-muted small">Tổng Tài Khoản</div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <c:forEach var="acc" items="${dbAccount}">
                                                    <c:if test="${acc.roleID == 1}">
                                                        <div class="list-group-item">
                                                            <div class="row align-items-center">
                                                                <div class="col-1 text-center">
                                                                    <span
                                                                        class="circle circle-sm bg-secondary justify-content-center">
                                                                        <i class="fa-solid fa-user fa-sm"
                                                                            style="color: #ffffff;"></i>
                                                                    </span>
                                                                </div>
                                                                <div class="col">
                                                                    <span class="h4">${acc.count}</span>
                                                                    <div class="my-0 text-muted small">Tài Khoản Người
                                                                        Dùng
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${acc.roleID == 2}">
                                                        <div class="list-group-item">
                                                            <div class="row align-items-center">
                                                                <div class="col-1 text-center">
                                                                    <span
                                                                        class="circle circle-sm bg-warning justify-content-center">
                                                                        <i class="fa-solid fa-user-shield fa-sm"
                                                                            style="color: #ffffff;"></i>
                                                                    </span>
                                                                </div>
                                                                <div class="col">
                                                                    <span class="h4">${acc.count}</span>
                                                                    <div class="my-0 text-muted small">Tài Khoản Quản
                                                                        Trị Viên
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:if>
                                                </c:forEach>


                                            </div> <!-- / .list-group -->
                                        </div> <!-- / .card-body -->
                                    </div> <!-- .card -->
                                </div> <!-- .col -->
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
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

                            <!-- Left side columns -->
                            <div class="col-lg-12">
                                <div class="row">

                                    <!-- Sales Card -->
                                    <div class="col-xxl-4 col-md-6">
                                        <div class="card info-card sales-card">

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
                                                <h5 class="card-title">Sales <span>| Today</span></h5>

                                                <div class="d-flex align-items-center">
                                                    <div
                                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                        <i class="bi bi-cart"></i>
                                                    </div>
                                                    <div class="ps-3">
                                                        <h6>145</h6>
                                                        <span class="text-success small pt-1 fw-bold">12%</span> <span
                                                            class="text-muted small pt-2 ps-1">increase</span>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div><!-- End Sales Card -->

                                    <!-- Revenue Card -->
                                    <div class="col-xxl-4 col-md-6">
                                        <div class="card info-card revenue-card">

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
                                                <h5 class="card-title">Revenue <span>| This Month</span></h5>

                                                <div class="d-flex align-items-center">
                                                    <div
                                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                        <i class="bi bi-currency-dollar"></i>
                                                    </div>
                                                    <div class="ps-3">
                                                        <h6>$3,264</h6>
                                                        <span class="text-success small pt-1 fw-bold">8%</span> <span
                                                            class="text-muted small pt-2 ps-1">increase</span>

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div><!-- End Revenue Card -->

                                    <!-- Customers Card -->
                                    <div class="col-xxl-4 col-xl-12">

                                        <div class="card info-card customers-card">

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
                                                <h5 class="card-title">Customers <span>| This Year</span></h5>

                                                <div class="d-flex align-items-center">
                                                    <div
                                                        class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                                        <i class="bi bi-people"></i>
                                                    </div>
                                                    <div class="ps-3">
                                                        <h6>1244</h6>
                                                        <span class="text-danger small pt-1 fw-bold">12%</span> <span
                                                            class="text-muted small pt-2 ps-1">decrease</span>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>

                                    </div><!-- End Customers Card -->

                                    <!-- Reports -->
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
                                                <h5 class="card-title">Thống Kê Kiểm Duyệt Bản Tin</h5>

                                                <!-- Line Chart -->
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
                            </div><!-- End Left side columns -->

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
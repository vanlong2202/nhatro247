<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <aside id="sidebar" class="sidebar">

                <ul class="sidebar-nav" id="sidebar-nav">

                    <li class="nav-item">
                        <a class="nav-link " href="index.html">
                            <i class="bi bi-grid"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" href="/admin/account">
                            <i class="bi bi-person"></i>
                            <span>Quản lí thông tin người dùng</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse"
                            href="">
                            <i class="bi bi-menu-button-wide"></i><span>Quản lí bản tin</span><i
                                class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="/admin/service-pending">
                                    <i class="bi bi-circle"></i><span>Bản tin chờ duyệt</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/service-processed">
                                    <i class="bi bi-circle"></i><span>Danh sách đã xử lí</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/service-active">
                                    <i class="bi bi-circle"></i><span>Trạng thái bản tin</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/service-refuse">
                                    <i class="bi bi-circle"></i><span>Bản tin từ chối</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/service-svip">
                                    <i class="bi bi-circle"></i><span>Danh sách ưu tiên</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-buttons.html">
                                    <i class="bi bi-circle"></i><span>Bản tin ưu tiên</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-cards.html">
                                    <i class="bi bi-circle"></i><span>Danh sách ưu tiên</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-carousel.html">
                                    <i class="bi bi-circle"></i><span>Carousel</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-list-group.html">
                                    <i class="bi bi-circle"></i><span>List group</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-modal.html">
                                    <i class="bi bi-circle"></i><span>Modal</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-tabs.html">
                                    <i class="bi bi-circle"></i><span>Tabs</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-pagination.html">
                                    <i class="bi bi-circle"></i><span>Pagination</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-progress.html">
                                    <i class="bi bi-circle"></i><span>Progress</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-spinners.html">
                                    <i class="bi bi-circle"></i><span>Spinners</span>
                                </a>
                            </li>
                            <li>
                                <a href="components-tooltips.html">
                                    <i class="bi bi-circle"></i><span>Tooltips</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Components Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-card-list"></i><span>Quản lí báo cáo bản tin</span><i
                                class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="/admin/report-comfirm">
                                    <i class="bi bi-circle"></i><span>Báo cáo cần xác thực</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/report-list">
                                    <i class="bi bi-circle"></i><span>Báo cáo đã xác thực</span>
                                </a>
                            </li>
                            <li>
                                <a href="forms-editors.html">
                                    <i class="bi bi-circle"></i><span>Form Editors</span>
                                </a>
                            </li>
                            <li>
                                <a href="forms-validation.html">
                                    <i class="bi bi-circle"></i><span>Form Validation</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Forms Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-layout-text-window-reverse"></i><span>Quản lí liên hệ</span><i
                                class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="/admin/contact-submit">
                                    <i class="bi bi-circle"></i><span>Liên hệ đã nhận</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/contact-view">
                                    <i class="bi bi-circle"></i><span>Liên hệ đã xác nhận</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Tables Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="charts-chartjs.html">
                                    <i class="bi bi-circle"></i><span>Chart.js</span>
                                </a>
                            </li>
                            <li>
                                <a href="charts-apexcharts.html">
                                    <i class="bi bi-circle"></i><span>ApexCharts</span>
                                </a>
                            </li>
                            <li>
                                <a href="charts-echarts.html">
                                    <i class="bi bi-circle"></i><span>ECharts</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Charts Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="icons-bootstrap.html">
                                    <i class="bi bi-circle"></i><span>Bootstrap Icons</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons-remix.html">
                                    <i class="bi bi-circle"></i><span>Remix Icons</span>
                                </a>
                            </li>
                            <li>
                                <a href="icons-boxicons.html">
                                    <i class="bi bi-circle"></i><span>Boxicons</span>
                                </a>
                            </li>
                        </ul>
                    </li><!-- End Icons Nav -->

                    <li class="nav-heading">Pages</li>

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>Profile</span>
                        </a>
                    </li><!-- End Profile Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>F.A.Q</span>
                        </a>
                    </li><!-- End F.A.Q Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="pages-contact.html">
                            <i class="bi bi-envelope"></i>
                            <span>Contact</span>
                        </a>
                    </li><!-- End Contact Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="pages-register.html">
                            <i class="bi bi-card-list"></i>
                            <span>Register</span>
                        </a>
                    </li><!-- End Register Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="pages-login.html">
                            <i class="bi bi-box-arrow-in-right"></i>
                            <span>Login</span>
                        </a>
                    </li><!-- End Login Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="pages-error-404.html">
                            <i class="bi bi-dash-circle"></i>
                            <span>Error 404</span>
                        </a>
                    </li><!-- End Error 404 Page Nav -->

                    <li class="nav-item">
                        <a class="nav-link collapsed" href="pages-blank.html">
                            <i class="bi bi-file-earmark"></i>
                            <span>Blank</span>
                        </a>
                    </li><!-- End Blank Page Nav -->

                </ul>

            </aside>
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
                        </ul>
                    </li>

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
                        </ul>
                    </li>
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
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-bar-chart"></i><span>Quản Lí Bài Viết</span><i
                                class="bi bi-chevron-down ms-auto"></i>
                        </a>
                        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                            <li>
                                <a href="/admin/addPost">
                                    <i class="bi bi-circle"></i><span>Thêm bài viết mới</span>
                                </a>
                            </li>
                            <li>
                                <a href="/admin/post">
                                    <i class="bi bi-circle"></i><span>Danh sách bài viết</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                            <i class="bi bi-gem"></i><span>Quản Lí Nạp Tiền</span><i
                                class="bi bi-chevron-down ms-auto"></i>
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



                </ul>

            </aside>
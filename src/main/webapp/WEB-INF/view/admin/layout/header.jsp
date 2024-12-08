<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <header id="header" class="header fixed-top d-flex align-items-center">

                <div class="d-flex align-items-center justify-content-between">
                    <a href="/" class="logo d-flex align-items-center">
                        <img src="/images/logo-tronhanh247.png" alt="">
                    </a>
                    <i class="bi bi-list toggle-sidebar-btn"></i>
                </div>

                <nav class="header-nav ms-auto">
                    <ul class="d-flex align-items-center">
                        <li class="nav-item dropdown pe-3">
                            <c:if test="${not empty pageContext.request.userPrincipal}">
                                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
                                    data-bs-toggle="dropdown">
                                    <span class="d-none d-md-block dropdown-toggle ps-2">Xin chào,
                                        <c:out value="${sessionScope.fullname}" />
                                    </span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                                    <li class="dropdown-header">
                                        <h6>${sessionScope.fullname} [${sessionScope.username}]</h6>
                                        <span>${sessionScope.email}</span>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li>
                                        <a class="dropdown-item d-flex align-items-center" href="/profile">
                                            <i class="bi bi-person"></i>
                                            <span>Thông tin cá nhân</span>
                                        </a>
                                    </li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <form method="post" action="/logout" id="myForm">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <li>
                                            <button class="dropdown-item d-flex align-items-center" href="">
                                                <i class="bi bi-box-arrow-right"></i>
                                                <span>Đăng Xuất</span>
                                            </button>
                                        </li>
                                    </form>
                            </c:if>
                    </ul>
                    </li>
                    </ul>
                </nav>
            </header>
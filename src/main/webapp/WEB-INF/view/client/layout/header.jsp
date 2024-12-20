<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <style>
                ul.dropdown li {
                    display: block !important;
                }

                .dropdown li:last-child {
                    background-color: #ffffff !important;
                }

                ul.dropdown {
                    background: #ffffff !important;
                    color: #000000;
                    position: absolute !important;
                    z-index: 0 !important;
                    display: none !important;
                }

                ul.dropdown:hover {
                    color: #ffffff;
                }

                .header-area .main-nav .dropdown li:last-child {
                    text-align: center;
                    margin: 0;
                    padding: 0;
                }

                .header-area .main-nav .dropdown li:last-child a {
                    background-color: #ffffff;
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    font-weight: 600;
                    border-radius: 0;
                }

                .header-area .main-nav .dropdown li:last-child:hover a {
                    background-color: #eeeeee;
                    border-radius: 0;
                }

                .header-area .main-nav .dropdown li:last-child:hover {
                    background-color: #eeeeee;
                    border-radius: 4px;
                    border-radius: 0;
                }

                .header-area .main-nav .dropdown li:hover {
                    background-color: #eeeeee;
                }

                li:hover ul.dropdown {
                    display: block !important;
                }
            </style>
            <header class="header-area header-sticky">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <nav class="main-nav">

                                <a href="" class="logo">
                                    <img style="height: 75px;width: auto;" src="/images/logo-tronhanh247.png" alt="">
                                </a>

                                <ul class="nav">
                                    <c:forEach var="mn" items="${menu}">
                                        <c:set var="result" value="/WEB-INF/view/client${mn.acctionName}.jsp" />
                                        <li><a class="<c:if test='${pageContext.request.requestURI == result}'>active</c:if>"
                                                href="${mn.controllerName}">${mn.menuName}
                                            </a>
                                        </li>
                                    </c:forEach>

                                    <c:if test="${not empty pageContext.request.userPrincipal}">
                                        <c:if test="${sessionScope.role==2}">
                                            <li><a href="/admin">Admin
                                                </a>
                                            </li>
                                        </c:if>
                                        <li>
                                            <a
                                                class="${pageContext.request.requestURI == '/WEB-INF/view/client/profile/profile.jsp' || 
                                            pageContext.request.requestURI == '/WEB-INF/view/client/profile/manager.jsp' || 
                                            pageContext.request.requestURI == '/WEB-INF/view/client/profile/follow.jsp' || 
                                            pageContext.request.requestURI == '/WEB-INF/view/client/profile/deposit.jsp' ? 'active' : ''}"><i
                                                    class="
                                                fa-solid fa-user"></i>
                                                Xin chào,
                                                <c:out value="${sessionScope.username}" /> ▾
                                            </a>
                                            <ul class="dropdown">
                                                <li><a href="/profile">Thông Tin Cá Nhân</a></li>
                                                <li><a href="/maneger-newsletter">Quản Lí Bản Tin</a></li>
                                                <li><a href="/newsletter-save">Danh Sách Yêu Thích</a></li>
                                                <li><a href="/deposit">Nạp Tiền Tài Khoản</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <form method="post" action="/logout" id="myForm">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                            <li><a id="submitLink" href=""><i class="fa-solid fa-right-to-bracket"></i>
                                                    Đăng Xuất</a>
                                            </li>
                                        </form>

                                    </c:if>
                                    <c:if test="${empty pageContext.request.userPrincipal}">
                                        <li><a href="/login"><i class="fa-solid fa-right-to-bracket"></i> Đăng Nhập</a>
                                        </li>
                                    </c:if>

                                </ul>
                                <a class='menu-trigger'>
                                    <span>Menu</span>
                                </a>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
            <script>
                document.getElementById("submitLink").addEventListener("click", function (event) {
                    event.preventDefault();  // Ngăn chặn liên kết tải lại trang
                    document.getElementById("myForm").submit();
                });
            </script>
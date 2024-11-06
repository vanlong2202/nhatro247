<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>

            <header class="header-area header-sticky">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <nav class="main-nav">
                                <!-- ***** Logo Start ***** -->
                                <a href="index.html" class="logo">
                                    <!-- <h1>TroNhanh247</h1> -->
                                    <img style="height: 100px;" src="/images/logo.png" alt="">
                                </a>
                                <!-- ***** Logo End ***** -->
                                <!-- ***** Menu Start ***** -->
                                <ul class="nav">
                                    <c:forEach var="mn" items="${menu}">
                                        <li><a href="${mn.acctionName}">${mn.menuName}</a></li>
                                    </c:forEach>
                                    <c:if test="${not empty pageContext.request.userPrincipal}">

                                        <li>
                                            <a href="/profile"><i class="fa-solid fa-user"></i>
                                                <c:out value="${sessionScope.username}" />
                                            </a>
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
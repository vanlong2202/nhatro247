<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Anton+SC&family=Montserrat:ital,wght@0,100..900;1,100..900&family=Playfair+Display:ital,wght@0,400..900;1,400..900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap"
                    rel="stylesheet">
                <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
                <link href="/admin/img/favicon.png" rel="icon">
                <link href="/admin/img/apple-touch-icon.png" rel="apple-touch-icon">
                <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
                <link href="https://fonts.gstatic.com" rel="preconnect">
                <link
                    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
                    rel="stylesheet">

                <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css" rel="stylesheet">
                <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-rbsA2VBKQ24qUp3IwRaaE5oPQbPbfsjWoXDmZTSfdvBdkzZ9+gFW3U3PaMx6j9mG"
                    crossorigin="anonymous">

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-pBwY6qnK8zjF4w9SY1PSoVfBjfQmPS99f1e0Uhvf7EZB08KcW5GA7D/x9LZ/s6BY"
                    crossorigin="anonymous"></script>

                <title>Đăng kí/Đăng nhập</title>
                <style>
                    @import url(https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Noto+Sans:wght@400;700&display=swap);

                    * {
                        box-sizing: border-box;
                    }

                    body {
                        background: #f6f5f7;
                        display: flex;
                        justify-content: center;
                        align-items: center;
                        flex-direction: column;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        height: 100vh;
                        margin: -20px 0 50px;
                    }

                    h1 {
                        font-weight: 600;
                        margin: 0;
                    }

                    h2 {
                        text-align: center;
                    }

                    p {
                        font-size: 14px;
                        font-weight: 100;
                        line-height: 20px;
                        letter-spacing: 0.5px;
                        margin: 20px 0 30px;
                    }

                    span {
                        font-size: 12px;
                    }

                    a {
                        color: #333;
                        font-size: 14px;
                        text-decoration: none;
                        margin: 15px 0;
                    }

                    button {
                        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                        border-radius: 20px;
                        border: 1px solid #00b7ff;
                        background-color: #0045a8;
                        color: #FFFFFF;
                        font-size: 12px;
                        font-weight: 500;
                        padding: 10px 45px;
                        letter-spacing: 1px;
                        transition: transform 80ms ease-in;
                    }

                    button:active {
                        transform: scale(0.95);
                    }

                    button:focus {
                        outline: none;
                    }

                    button.ghost {
                        background-color: transparent;
                        border-color: #FFFFFF;
                    }

                    form {
                        background-color: #FFFFFF;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        flex-direction: column;
                        padding: 0 50px;
                        height: 100%;
                        text-align: center;
                    }

                    input {
                        background-color: #f4f4f4;
                        border: none;
                        padding: 12px 15px;
                        margin: 8px 0;
                        width: 100%;
                        font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
                        font-size: 14px;
                        font-weight: 500;
                        border-radius: 8px;
                    }

                    .container {
                        background-color: #fff;
                        border-radius: 10px;
                        box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25),
                            0 10px 10px rgba(0, 0, 0, 0.22);
                        position: relative;
                        overflow: hidden;
                        width: 768px;
                        max-width: 100%;
                        min-height: 480px;
                    }

                    .form-container {
                        position: absolute;
                        top: 0;
                        height: 100%;
                        transition: all 0.6s ease-in-out;
                    }

                    .sign-in-container {
                        left: 0;
                        width: 50%;
                        z-index: 2;
                    }

                    .container.right-panel-active .sign-in-container {
                        transform: translateX(100%);
                    }

                    .sign-up-container {
                        left: 0;
                        width: 50%;
                        opacity: 0;
                        z-index: 1;
                    }

                    .container.right-panel-active .sign-up-container {
                        transform: translateX(100%);
                        opacity: 1;
                        z-index: 5;
                        animation: show 0.6s;
                    }

                    @keyframes show {

                        0%,
                        49.99% {
                            opacity: 0;
                            z-index: 1;
                        }

                        50%,
                        100% {
                            opacity: 1;
                            z-index: 5;
                        }
                    }

                    .overlay-container {
                        position: absolute;
                        top: 0;
                        left: 50%;
                        width: 50%;
                        height: 100%;
                        overflow: hidden;
                        transition: transform 0.6s ease-in-out;
                        z-index: 100;
                    }

                    .container.right-panel-active .overlay-container {
                        transform: translateX(-100%);
                    }

                    .overlay {
                        background: #FF416C;
                        background: -webkit-linear-gradient(to right, #00b7ff, #0045a8);
                        background: linear-gradient(to right, #0045a8, #00b7ff);
                        background-repeat: no-repeat;
                        background-size: cover;
                        background-position: 0 0;
                        color: #FFFFFF;
                        position: relative;
                        left: -100%;
                        height: 100%;
                        width: 200%;
                        transform: translateX(0);
                        transition: transform 0.6s ease-in-out;
                    }

                    .container.right-panel-active .overlay {
                        transform: translateX(50%);
                    }

                    .overlay-panel {
                        position: absolute;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        flex-direction: column;
                        padding: 0 40px;
                        text-align: center;
                        top: 0;
                        height: 100%;
                        width: 50%;
                        transform: translateX(0);
                        transition: transform 0.6s ease-in-out;
                    }

                    .overlay-left {
                        transform: translateX(-20%);
                    }

                    .container.right-panel-active .overlay-left {
                        transform: translateX(0);
                    }

                    .overlay-right {
                        right: 0;
                        transform: translateX(0);
                    }

                    .container.right-panel-active .overlay-right {
                        transform: translateX(20%);
                    }

                    .social-container {
                        margin: 20px 0;
                    }

                    .social-container a {
                        border: 1px solid #DDDDDD;
                        border-radius: 50%;
                        display: inline-flex;
                        justify-content: center;
                        align-items: center;
                        margin: 0 5px;
                        height: 40px;
                        width: 40px;
                    }

                    span {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-size: 18px;
                        font-weight: 600;
                    }

                    footer {
                        background-color: #222;
                        color: #fff;
                        font-size: 14px;
                        bottom: 0;
                        position: fixed;
                        left: 0;
                        right: 0;
                        text-align: center;
                        z-index: 999;
                    }

                    footer p {
                        margin: 10px 0;
                    }

                    footer i {
                        color: red;
                    }

                    footer a {
                        color: #3c97bf;
                        text-decoration: none;
                    }

                    .logo-login {
                        width: 200px;
                        height: auto;
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

                    .alert {
                        padding: 15px 20px;
                        border-radius: 4px;
                    }

                    .alert.show {
                        opacity: 1;
                        transform: translateX(0);
                    }
                </style>
            </head>

            <body>
                <c:if test="${not empty success}">
                    <div style="background-color: rgb(0, 193, 16);" class="alert" role="alert">
                        ${success}
                    </div>
                </c:if>
                <c:if test="${not empty error}">
                    <div style="background-color: red;" class="alert" role="alert">
                        ${error}
                    </div>
                </c:if>
                <div class="container" id="container">
                    <div class="form-container sign-up-container">
                        <form:form action="/register" method="post" modelAttribute="account">
                            <span>Đăng kí tài khoản mới</span>
                            <form:input path="username" type="text" placeholder="Nhập tên đăng nhập"
                                required="required" />
                            <form:input path="email" type="email" placeholder="Nhập địa chỉ Email"
                                required="required" />
                            <form:input path="password" type="password" placeholder="Nhập mật khẩu"
                                required="required" />
                            <button type="submit">ĐĂNG KÍ</button>
                        </form:form>
                    </div>
                    <div class="form-container sign-in-container">
                        <form action="/login" method="post">
                            <img class="logo-login" src="/images/logo.png" alt="">
                            <input name="username" id="username" type="text" placeholder="Tên đăng nhập" />
                            <input name="password" id="password" type="password" placeholder="Mật khẩu" />
                            <c:if test="${param.error != null}">
                                <div class="mb-2"
                                    style="margin-bottom: 10px;color: red; font-size: 14px; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;font-weight: 500;">
                                    Thông tin đăng nhập không chính xác !
                                </div>
                            </c:if>
                            <div>
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            </div>
                            <button>ĐĂNG NHẬP</button>
                        </form>
                    </div>
                    <div class="overlay-container">
                        <div class="overlay">
                            <div class="overlay-panel overlay-left">
                                <span>Nếu đã có tài khoản ?</span>
                                <p>Tiến hành quay lại đăng nhập hệ thống !</p>
                                <button class="ghost" id="signIn">ĐĂNG NHẬP</button>
                            </div>
                            <div class="overlay-panel overlay-right">
                                <span>Chào mừng bạn đến với TroNhanh247</span>
                                <p>Đăng kí tài khoản để sử dụng các dịch vụ cùng chúng tôi !</p>
                                <button class="ghost" id="signUp">ĐĂNG KÍ</button>
                            </div>
                        </div>
                    </div>
                </div>
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
                <script>
                    const signUpButton = document.getElementById('signUp');
                    const signInButton = document.getElementById('signIn');
                    const container = document.getElementById('container');

                    if (localStorage.getItem("isSignUpActive") === "true") {
                        setTimeout(() => {
                            container.classList.add("right-panel-active");
                        }, 50);
                    }
                    signUpButton.addEventListener('click', () => {
                        container.classList.add("right-panel-active");
                        localStorage.setItem("isSignUpActive", "true");
                    });

                    signInButton.addEventListener('click', () => {
                        container.classList.remove("right-panel-active");
                        localStorage.setItem("isSignUpActive", "false");
                    });
                </script>

            </body>

            </html>
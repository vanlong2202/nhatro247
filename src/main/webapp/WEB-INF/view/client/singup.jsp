<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Đăng ký tài khoản</title>
    </head>

    <body>
        <h1>Đăng ký tài khoản mới</h1>
        <form:form action="/register" method="post" modelAttribute="account">
            <label for="username">Tên người dùng:</label>
            <form:input path="username" id="username" />
            <br><br>
            <label for="password">Mật khẩu:</label>
            <form:password path="password" id="password" />
            <br><br>
            <input type="submit" value="Đăng ký" />
        </form:form>
    </body>

    </html>
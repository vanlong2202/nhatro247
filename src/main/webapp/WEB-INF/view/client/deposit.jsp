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
                <title>Tìm Kiếm Chỗ Ở Online</title>
                <link href="/css/bootstrap.min.css" rel="stylesheet">
                <link rel="stylesheet" href="/css/fontawesome.css">
                <link rel="stylesheet" href="/css/templatemo-villa-agency.css">
                <link rel="stylesheet" href="/css/owl.css">
                <link rel="stylesheet" href="/css/animate.css">
                <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />
                <style>
                    .section {
                        margin-top: 0;
                    }

                    .deposit-list {
                        display: flex;
                        flex-wrap: wrap;
                        gap: 25px;
                        width: 60%;
                        padding: 50px;
                    }

                    .radio-deposit {
                        width: 30%;
                        height: 50px;
                        padding: 5px;
                        display: flex;
                        align-items: center;
                        background-color: white;
                        color: white;
                        border: 1px #f4f4f4 solid;
                        border-radius: 4px;
                        padding: 5px 10px 5px 10px;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);

                    }

                    .radio-deposit p {
                        margin-left: 20px;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 500;
                        font-size: 16px;
                    }

                    .deposit {
                        display: flex;
                    }

                    .deposit-info {
                        width: 40%;
                        padding: 50px;
                    }

                    input[type="radio"]:checked {
                        background-color: #555555;
                        border: 2px solid #555555;
                    }

                    .deposit-info-detail {
                        width: 100%;
                        padding: 20px;
                        height: auto;
                        background-color: white;
                        border-radius: 5px;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                    }

                    .deposit-info-detail span {
                        font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
                        font-weight: bold;
                        font-size: 18px;
                    }

                    span.info-span {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-size: 22px;
                        color: #0045a8;
                        font-weight: bold;
                    }

                    .info-deposit-item {
                        display: flex;
                        padding-top: 20px;
                        justify-content: space-between;
                        border-bottom: 2px #f4f4f4 solid;
                    }

                    .input-amout {
                        width: 100%;
                    }

                    .input-amout input {
                        width: 66%;
                        border: none;
                        height: 40px;
                        border-radius: 4px;
                        padding-left: 10px;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 500;
                        font-size: 16px;
                    }

                    input:active {
                        border: 2px #0045a8 solid;
                    }

                    .input-amout button {
                        width: 30%;
                        height: 40px;
                        border: none;
                        margin-left: 5px;
                        background-color: #0045a8;
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        font-weight: 500;
                        font-size: 16px;
                        color: white;
                        border-radius: 4px;
                        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
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
                <jsp:include page="../client/layout/header.jsp" />
                <div class="page-heading header-text">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <span class="breadcrumb"><a href="#">Home</a> / PROFILE</span>
                                <h3>Trang Cá Nhân</h3>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="section best-deal">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-4">
                                <div class="section-heading">
                                    <h6>| DEPOSIT</h6>
                                    <h2>NẠP TIỀN TÀI KHOẢN</h2>
                                </div>
                            </div>
                            <div class="deposit">
                                <div class="deposit-list">
                                    <div class="input-amout">
                                        <form action="/submitOrder" method="get">
                                            <input name="amount" id="mount" type="text">
                                            <input name="orderInfo" id="orderInfo" type="text"
                                                value="naptien ${sessionScope.username}" style="display: none;">
                                            <button type="submit">Nạp Tiền</button>
                                        </form>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="10000"></div>
                                        <div>
                                            <p>10.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="20000"></div>
                                        <div>
                                            <p>20.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="50000"></div>
                                        <div>
                                            <p>50.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="100000"></div>
                                        <div>
                                            <p>100.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="150000"></div>
                                        <div>
                                            <p>150.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="200000"></div>
                                        <div>
                                            <p>200.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="250000"></div>
                                        <div>
                                            <p>250.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="500000"></div>
                                        <div>
                                            <p>500.000 VNĐ</p>
                                        </div>
                                    </div>
                                    <div class="radio-deposit">
                                        <div><input class="form-check-input" type="radio" id="totalamount"
                                                name="totalamount" value="1000000"></div>
                                        <div>
                                            <p>1.000.000 VNĐ</p>
                                        </div>
                                    </div>

                                </div>
                                <div class="deposit-info">
                                    <div class="deposit-info-detail">
                                        <span class="info-span">CHI TIẾT GIAO DỊCH</span>
                                        <div class="info-deposit-item">
                                            <p>Số Tiền Thanh Toán:</p>
                                            <span id="paymentAmout">0 VNĐ</span>
                                        </div>
                                        <div class="info-deposit-item">
                                            <p>Nội Dung Chuyển Khoản:</p>
                                            <span>naptien ${sessionScope.username}</span>
                                        </div>
                                        <div class="info-deposit-item">
                                            <p>Nạp Vào Tài Khoản:</p>
                                            <span>${sessionScope.fullname}</span>
                                        </div>
                                        <div class="info-deposit-item">
                                            <p>Cổng Thanh Toán:</p>
                                            <span>VNPay QRCode</span>
                                        </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                    <div class="contact-page section">
                        <div class="container">
                            <div class="section-heading">
                                <h6>| Lịch sử giao dịch</h6>
                            </div>
                            <div class="card shadow mb-4">
                                <div class="card-header">
                                    <h6 class="card-title">DANH SÁCH LỊCH SỬ GIAO DỊCH</h6>
                                </div>
                                <div class="col-md-12">
                                    <div class="card-body">
                                        <c:if test="${empty bills}">
                                            Không có kết quả nào !
                                        </c:if>
                                        <c:if test="${not empty bills}">
                                            <table class="table table-hover">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Mã giao dịch</th>
                                                        <th>Thời gian</th>
                                                        <th>Số tiền</th>
                                                        <th>Nôi dung thanh toán</th>
                                                        <th>Thời gian xác thực</th>
                                                        <th>Hình thức</th>
                                                        <th>Trạng thái</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="bill" items="${bills}" varStatus="status">
                                                        <tr>
                                                            <td>#${status.index + 1}</td>
                                                            <td>${bill.transactionCode}</td>
                                                            <td>${bill.createTime}</td>
                                                            <td>
                                                                <c:if test="${bill.billType.billTypeID == 1}">
                                                                    <span style="color: green; font-weight: 500;">
                                                                        +
                                                                        <fmt:formatNumber value="${bill.amount}" /> VNĐ
                                                                    </span>
                                                                </c:if>
                                                                <c:if test="${bill.billType.billTypeID == 2}">
                                                                    <span style="color: red; font-weight: 600;">
                                                                        -
                                                                        <fmt:formatNumber value="${bill.amount}" /> VNĐ
                                                                    </span>
                                                                </c:if>

                                                            </td>
                                                            <td>
                                                                ${bill.transferContent}
                                                            </td>
                                                            <td>
                                                                ${bill.confirmTime}
                                                            </td>
                                                            <td>
                                                                <c:if test="${bill.billType.billTypeID == 1}">
                                                                    <button style="width: 122px;" type="button"
                                                                        class="btn mb-2 btn-success btn-sm">${bill.billType.name}</button>
                                                                </c:if>
                                                                <c:if test="${bill.billType.billTypeID == 2}">
                                                                    <button style="width: 122px;" type="button"
                                                                        class="btn mb-2 btn-danger btn-sm">${bill.billType.name}</button>
                                                                </c:if>
                                                                <c:if test="${bill.billType.billTypeID == 3}">
                                                                    <button style="width: 122px;" type="button"
                                                                        class="btn mb-2 btn-danger btn-sm">${bill.billType.name}</button>
                                                                </c:if>
                                                            </td>
                                                            <td>
                                                                <c:if test="${bill.isStatus == 0}">
                                                                    <button style="width: 122px;" type="button"
                                                                        class="btn mb-2 btn-primary btn-sm">Đang
                                                                        Phê
                                                                        Duyệt</button>
                                                                </c:if>
                                                                <c:if test="${bill.isStatus == 1}">
                                                                    <button style="width: 122px;" type="button"
                                                                        class="btn mb-2 btn-success btn-sm">Hoàn
                                                                        thành</button>
                                                                </c:if>
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
                        <div class="col-lg-12">
                            <div id="map">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.1102349383827!2d105.69317477473831!3d18.659048664930566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3139cddf0bf20f23%3A0x86154b56a284fa6d!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBWaW5o!5e0!3m2!1svi!2s!4v1701333714488!5m2!1svi!2s"
                                    width="100%" height="500px" frameborder="0"
                                    style="border:0; border-radius: 10px; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);"
                                    allowfullscreen=""></iframe>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="../client/layout/footer.jsp" />
                <script>
                    document.addEventListener('DOMContentLoaded', () => {
                        const radioButtons = document.querySelectorAll('input[name="totalamount"]');
                        const amountInput = document.getElementById('mount');
                        const spanAmount = document.getElementById('paymentAmout');

                        radioButtons.forEach(radio => {
                            radio.addEventListener('change', (event) => {
                                const value = parseInt(event.target.value);
                                amountInput.value = value.toLocaleString('vi-VN') + ' VNĐ';
                                spanAmount.textContent = value.toLocaleString('vi-VN') + ' VNĐ';
                            });
                        });

                        amountInput.addEventListener('input', () => {
                            const value = parseInt(amountInput.value.replace(/\D/g, '')) || 0;
                            spanAmount.textContent = value.toLocaleString('vi-VN') + ' VNĐ';
                        });

                        amountInput.addEventListener('focus', () => {
                            const rawValue = amountInput.value.replace(/\D/g, '');
                            amountInput.value = rawValue;
                        });

                        amountInput.addEventListener('blur', () => {
                            const value = parseInt(amountInput.value.replace(/\D/g, '')) || 0;
                            amountInput.value = value.toLocaleString('vi-VN') + ' VNĐ';
                        });
                    });
                    document.addEventListener('DOMContentLoaded', () => {
                        const amountInput = document.getElementById('mount');
                        const form = amountInput.closest('form');

                        amountInput.addEventListener('focus', () => {
                            const rawValue = amountInput.value.replace(/\D/g, '');
                            amountInput.value = rawValue;
                        });

                        amountInput.addEventListener('blur', () => {
                            const value = parseInt(amountInput.value.replace(/\D/g, '')) || 0;
                            amountInput.value = value.toLocaleString('vi-VN') + ' VNĐ';
                        });


                        form.addEventListener('submit', (event) => {
                            const rawValue = amountInput.value.replace(/\D/g, '');
                            amountInput.value = rawValue;
                        });
                    });


                </script>

                <script src="/jquery/jquery.min.js"></script>
                <script src="/js/bootstrap.min.js"></script>
                <script src="/js/isotope.min.js"></script>
                <script src="/js/owl-carousel.js"></script>
                <script src="/js/counter.js"></script>
                <script src="/js/custom.js"></script>

            </body>

            </html>
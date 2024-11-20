<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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

                    </style>
                </head>

                <body>
                    <!-- <div id="js-preloader" class="js-preloader">
                        <div class="preloader-inner">
                            <span class="dot"></span>
                            <div class="dots">
                                <span></span>
                                <span></span>
                                <span></span>
                            </div>
                        </div>
                    </div> -->
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
                    <div class="main-banner">
                        <div class="owl-carousel owl-banner">
                            <div class="item item-1">
                                <div class="header-text">
                                    <span class="category">Hà Nội, Việt Nam <em>2024</em></span>
                                    <h2>TÌM NHANH, KIẾM DỄ TRỌ MỚI TOÀN QUỐC</h2>
                                </div>
                            </div>
                            <div class="item item-2">
                                <div class="header-text">
                                    <span class="category">TP-Hồ Chí Minh, Việt Nam <em>2024</em></span>
                                    <h2>Be Quick!<br>Get the best villa in town</h2>
                                </div>
                            </div>
                            <div class="item item-3">
                                <div class="header-text">
                                    <span class="category">Miami, <em>South Florida</em></span>
                                    <h2>Act Now!<br>Get the highest level penthouse</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- jdj -->




                    <div class="contact section">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 offset-lg-4">
                                    <div class="section-heading text-center">
                                        <h6>| LIÊN HỆ VỚI CHÚNG TÔI</h6>
                                        <h2>Gửi Phản Hồi - Đánh Giá Dịch Vụ Tại Đây</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="container">
                        <div class="newsletter-container">
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                            <div class="newsletter-items">
                                <div class="newsletter-item-img">
                                    <a><img src="/uploads/ha_noi.jpg" alt=""></a>
                                    <div class="tag">VIP</div>
                                </div>
                                <div class="newsletter-item-context">
                                    <div class="newsletter-context-title"><a>Nhà trọ số 124 Phó Cơ Điều, Phường 4, Quận
                                            11, Thành phố Hồ Chí Minh, Thành phố Hồ Chí Minh,Thành phố Hồ Chí Minh</a>
                                    </div>

                                    <div class="newsletter-context-price"><i class="fa-solid fa-money-bill-wave"
                                            style="color: #00c721;"></i> <span>3.000.000
                                            VNĐ/Tháng</span></div>
                                    <div class="newsletter-context-button">
                                        <button>Phong tro</button>
                                        <button>Phong tro</button>
                                    </div>
                                    <div class="newsletter-context-address"><span> <i
                                                class="fa-solid fa-location-dot fa-beat" style="color: #ff0000;"></i>
                                            Thôn 5, xã Quỳnh Hoa, huyện Quỳnh Lưu, tỉnh Nghệ AN</span></div>
                                </div>

                            </div>
                        </div>
                    </div>
                    <jsp:include page="../client/layout/footer.jsp" />
                    <script
                        src="https://cdn.tiny.cloud/1/1kalr2fw781xdi3fnqg9j82j2s13bamzismcjdi9x3t26imz/tinymce/6/tinymce.min.js"
                        referrerpolicy="origin"></script>
                    <script>
                        tinymce.init({
                            selector: '#detail', // Chỉ định textarea cần tích hợp
                            plugins: 'advlist autolink lists link image charmap print preview anchor',
                            toolbar: 'undo redo | formatselect | bold italic backcolor | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat',
                            height: 300 // Chiều cao của textarea
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
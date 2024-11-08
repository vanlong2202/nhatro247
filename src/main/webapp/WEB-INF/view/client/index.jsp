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
                    <style>
                        #room-list {
                            position: absolute;
                            width: 65%;
                            background-color: #fff;
                            border: 1px solid #ccc;
                            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.1);
                            z-index: 1000;
                            display: none;
                            margin-top: 40px;
                            /* Điều chỉnh vị trí của danh sách tìm kiếm */
                        }

                        #room-list ul {
                            list-style: none;
                            padding: 0;
                        }

                        #room-list li {
                            padding: 10px;
                            border-bottom: 1px solid #eee;
                            cursor: pointer;
                        }

                        .search-results:focus-within #room-list {
                            display: block;
                        }

                        .search-results:focus-within #room-list.show-results {
                            display: none;
                        }
                    </style>
                    <div class="properties section">

                        <div class="container">
                            <div class="row">
                                <div class="col-lg-4 offset-lg-4">
                                    <div class="section-heading text-center">
                                        <h6>| Bài Viết</h6>
                                        <h2>LỰA CHỌN NỔI BẬT</h2>
                                    </div>
                                </div>
                                <div class="search-bar">
                                    <div class="card shadow mb-4">
                                        <div class="card-body" style="background-color: #dedede;">
                                            <div class="row">
                                                <div class="container mt-5">
                                                    <div class="col-md-12 mb-2 mt-3 d-flex justify-content-center">
                                                        <div class="form-group col-md-8 mb-12 d-flex search-results">
                                                            <form id="search-form" class="col-md-12 mb-12">
                                                                <input type="text" class="form-control" name="timkiem"
                                                                    id="timkiem" placeholder="Tìm Kiếm Nhanh">
                                                            </form>

                                                            <div id="room-list" class="card shadow mb-4 col-md-8 ">
                                                                <!-- hiện thị kết quả ajax -->


                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <form method="get" action="bantin.php">
                                                    <div class="col-md-12 mb-2 d-flex justify-content-center">
                                                        <div class="col-md-2 mb-2">
                                                            <select class="form-control" name="Tin_diachi"
                                                                id="Tin_diachi" required>
                                                                <option selected disabled value="0">Chọn địa điểm
                                                                </option>
                                                                <option value="Hồ Chí Minh">Hồ Chí Minh</option>
                                                                <option value="Hà Nội">Hà Nội</option>
                                                                <option value="Đà Nẵng">Đà Nẵng</option>
                                                                <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                                                <option value="Bình Dương">Bình Dương</option>
                                                                <option value="An Giang">An Giang</option>
                                                                <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu
                                                                </option>
                                                                <option value="Bắc Giang">Bắc Giang</option>
                                                                <option value="Bắc Kạn">Bắc Kạn</option>
                                                                <option value="Bạc Liêu">Bạc Liêu</option>
                                                                <option value="Bắc Ninh">Bắc Ninh</option>
                                                                <option value="Bến Tre">Bến Tre</option>
                                                                <option value="Bình Phước">Bình Phước</option>
                                                                <option value="Bình Thuận">Bình Thuận</option>
                                                                <option value="Bình Định">Bình Định</option>
                                                                <option value="Cà Mau">Cà Mau</option>
                                                                <option value="Cần Thơ">Cần Thơ</option>
                                                                <option value="Cao Bằng">Cao Bằng</option>
                                                                <option value="Gia Lai">Gia Lai</option>
                                                                <option value="Hà Giang">Hà Giang</option>
                                                                <option value="Hà Nam">Hà Nam</option>
                                                                <option value="Hà Tĩnh">Hà Tĩnh</option>
                                                                <option value="hHải Dương">Hải Dương</option>
                                                                <option value="Hải Phòng">Hải Phòng</option>
                                                                <option value="hHậu Giang">Hậu Giang</option>
                                                                <option value="Hòa Bình">Hòa Bình</option>
                                                                <option value="Hưng Yên">Hưng Yên</option>
                                                                <option value="Khánh Hòa">Khánh Hòa</option>
                                                                <option value="Kiên Giang">Kiên Giang</option>
                                                                <option value="Kon Tum">Kon Tum</option>
                                                                <option value="Lai Châu">Lai Châu</option>
                                                                <option value="Lâm Đồng">Lâm Đồng</option>
                                                                <option value="Lạng Sơn">Lạng Sơn</option>
                                                                <option value="Lào Cai">Lào Cai</option>
                                                                <option value="Long An">Long An</option>
                                                                <option value="Nam Định">Nam Định</option>
                                                                <option value="Nghệ An">Nghệ An</option>
                                                                <option value="Ninh Bình">Ninh Bình</option>
                                                                <option value="Ninh Thuận">Ninh Thuận</option>
                                                                <option value="Phú Thọ">Phú Thọ</option>
                                                                <option value="Phú Yên">Phú Yên</option>
                                                                <option value="Quảng Bình">Quảng Bình</option>
                                                                <option value="Quảng Nam">Quảng Nam</option>
                                                                <option value="Quảng Ngãi">Quảng Ngãi</option>
                                                                <option value="Quảng Ninh">Quảng Ninh</option>
                                                                <option value="Quảng Trị">Quảng Trị</option>
                                                                <option value="Sóc Trăng">Sóc Trăng</option>
                                                                <option value="Sơn La">Sơn La</option>
                                                                <option value="Tây Ninh">Tây Ninh</option>
                                                                <option value="Thái Bình">Thái Bình</option>
                                                                <option value="Thái Nguyên">Thái Nguyên</option>
                                                                <option value="Thanh Hóa">Thanh Hóa</option>
                                                                <option value="Tiền Giang">Tiền Giang</option>
                                                                <option value="Trà Vinh">Trà Vinh</option>
                                                                <option value="Tuyên Quang">Tuyên Quang</option>
                                                                <option value="Vĩnh Long">Vĩnh Long</option>
                                                                <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                                                                <option value="Yên Bái">Yên Bái</option>
                                                                <option value="Đắk Lắk">Đắk Lắk</option>
                                                                <option value="Đắk Nông">Đắk Nông</option>
                                                                <option value="Điện Biên">Điện Biên</option>
                                                                <option value="ồng Nai">Đồng Nai</option>
                                                                <option value="Đồng Tháp">Đồng Tháp</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2 mb-1">
                                                            <select class="form-control" name="Tin_hinhthuc"
                                                                id="Tin_hinhthuc" required>
                                                                <option selected disabled value="0">Chọn loại hình
                                                                </option>
                                                                <option value="Phòng Trọ">Phòng Trọ</option>
                                                                <option value="Ký túc xá (dorm)">Ký túc xá (dorm)
                                                                </option>
                                                                <option value="Chung cư mini">Chung cư mini</option>
                                                                <option value="Cư xá">Cư xá</option>
                                                                <option value="Homestay">Homestay</option>
                                                                <option value="Trọ nhà nguyên căn">Trọ nhà nguyên căn
                                                                </option>
                                                                <option value="Trọ trong nhà chung chủ">Trọ trong nhà
                                                                    chung
                                                                    chủ</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2 mb-2">
                                                            <select class="form-control" name="Tin_gia" id="Tin_gia"
                                                                required>
                                                                <option selected disabled value="0">Chọn giá</i>
                                                                </option>
                                                                <option value="1">Dưới 1.000.000 VND</option>
                                                                <option value="2">1.000.000 VND - 2.000.000 VND</option>
                                                                <option value="3">2.000.000 VND - 3.000.000 VND</option>
                                                                <option value="4">3.000.000 VND - 5.000.000 VND</option>
                                                                <option value="5">Trên 5.000.000 VND</option>
                                                            </select>
                                                        </div>
                                                        <div class="col-md-2 mb-1">
                                                            <button type="submit"
                                                                class="form-control btn btn-primary">Tìm
                                                                Kiếm</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <!-- Danh sách sản phẩm
                    <?php
                    include_once(__DIR__ . '/model/config.php');
              
                    $search_query = "SELECT * FROM tbltindv WHERE Tin_svip = 1 AND Tin_trangthai = 1 AND Tttindv_id = 2 ORDER BY Tin_time DESC LIMIT 6";
              
                    if ($_SERVER["REQUEST_METHOD"] == "GET") {
                      $location = isset($_GET["Tin_diachi"]) ? $_GET["Tin_diachi"] : "0";
                      $type = isset($_GET["Tin_hinhthuc"]) ? $_GET["Tin_hinhthuc"] : "0";
                      $price = isset($_GET["Tin_gia"]) ? $_GET["Tin_gia"] : "0";
              
                      if ($location != "0") {
                        $search_query .= " AND Tin_diachi = '$location'";
                      }
              
                      if ($type != "0") {
                        $search_query .= " AND Tin_hinhthuc = '$type'";
                      }
              
                      if ($price != "0") {
                        if($price == 1){
                          $search_query .= " AND Tin_gia < 1000000";
                        }
                        if($price == 2){
                            $search_query .= " AND Tin_gia >= 1000000 AND Tin_gia <= 2000000";
                        }
                        if($price == 3){
                            $search_query .= " AND Tin_gia >= 2000000 AND Tin_gia <= 3000000";
                        }
                        if($price == 4){
                            $search_query .= " AND Tin_gia >= 3000000 AND Tin_gia <= 5000000";
                        }
                        if($price == 5){
                            $search_query .= " AND Tin_gia > 5000000";
                        }
                      }
                    }
              
                    $result = mysqli_query($conn, $search_query);
              
                    if (!$result) {
                      die('Query failed: ' . mysqli_error($conn));
                    }
              
                    $dataroms = [];
                    $TT = 1;
              
                    while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                      $dataroms[] = [
                        'TT' => $TT,
                        'TinID' => $row['TinID'],
                        'Tin_title' => $row['Tin_title'],
                        'Tin_gia' => $row['Tin_gia'],
                        'Tin_phong' => $row['Tin_phong'],
                        'Tin_dientich' => $row['Tin_dientich'],
                        'Tin_toida' => $row['Tin_toida'],
                        'Tin_phongtrong' => $row['Tin_phongtrong'],
                        'Tin_diachi' => $row['Tin_diachi'],
                        'Tin_diachichitiet' => $row['Tin_diachichitiet'],
                        'Tin_tuquan' => $row['Tin_tuquan'],
                        'Tin_image1' => $row['Tin_image1'],
                        'Tin_time' => $row['Tin_time'],
                      ];
                      $TT++;
                    }
                    ?>
              
                    <div class="row">
                      <?php foreach ($dataroms as $room) : ?>
                        <div class="col-lg-4 col-md-6">
                          <div class="item">
                            <a href="chitietbantin.php?id=<?php echo $room['TinID']; ?>"><img style="height: 260px; width: 350px;" src="<?php echo $room['Tin_image1']; ?>" alt=""></a>
                            <span class="category"><?php echo $room['Tin_diachi']; ?></span>
                            <h6><?php echo number_format($room['Tin_gia']); ?> VNĐ</h6>
                            <h4><a href="chitietbantin.php?id=<?php echo $room['TinID']; ?>"><?php echo $room['Tin_title']; ?></a></h4>
                            <p><?php echo $room['Tin_diachichitiet']; ?></p>
                            <ul>
                              <li><span><?php echo $room['Tin_time']; ?></span></li>
                            </ul>
                            <div class="main-button">
                              <a href="chitietbantin.php?id=<?php echo $room['TinID']; ?>">THÔNG TIN CHI TIẾT</a>
                            </div>
                          </div>
                        </div>
                      <?php endforeach; ?>
                    </div>
                  </div>
                </div>
              </div>
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
              <script>
                $(document).ready(function() {
                  // Bắt sự kiện khi người dùng nhập vào ô tìm kiếm
                  $("#timkiem").on("input", function() {
                    // Lấy dữ liệu từ form tìm kiếm
                    var formData = $("#search-form").serialize();
              
                    // Thực hiện yêu cầu Ajax
                    $.ajax({
                      type: "GET",
                      url: "ajax_search.php", // Tên tệp xử lý tìm kiếm Ajax của bạn
                      data: formData,
                      success: function(response) {
                        // Cập nhật nội dung của #room-list với kết quả tìm kiếm
                        $("#room-list").html(response);
                      },
                      error: function(error) {
                        console.log("Lỗi Ajax: " + error);
                      }
                    });
                  });
                });
              </script> -->
                                <div class="featured section">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="left-image">
                                                    <img src="assets/images/featured.jpg" alt="">
                                                    <a href="property-details.html"><img
                                                            src="assets/images/featured-icon.png" alt=""
                                                            style="max-width: 60px; padding: 0px;"></a>
                                                </div>
                                            </div>
                                            <div class="col-lg-5">
                                                <div class="section-heading">
                                                    <h6>| Featured</h6>
                                                    <h2>Best Appartment &amp; Sea view</h2>
                                                </div>
                                                <div class="accordion" id="accordionExample">
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingOne">
                                                            <button class="accordion-button" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseOne"
                                                                aria-expanded="true" aria-controls="collapseOne">
                                                                Best useful links ?
                                                            </button>
                                                        </h2>
                                                        <div id="collapseOne" class="accordion-collapse collapse show"
                                                            aria-labelledby="headingOne"
                                                            data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                Get <strong>the best villa</strong> website template in
                                                                HTML
                                                                CSS and
                                                                Bootstrap for
                                                                your business. TemplateMo provides you the <a
                                                                    href="https://www.google.com/search?q=best+free+css+templates"
                                                                    target="_blank">best free CSS templates</a> in the
                                                                world. Please
                                                                tell your
                                                                friends about it.</div>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingTwo">
                                                            <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                                                aria-expanded="false" aria-controls="collapseTwo">
                                                                How does this work ?
                                                            </button>
                                                        </h2>
                                                        <div id="collapseTwo" class="accordion-collapse collapse"
                                                            aria-labelledby="headingTwo"
                                                            data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                Dolor <strong>almesit amet</strong>, consectetur
                                                                adipiscing
                                                                elit, sed
                                                                doesn't
                                                                eiusmod tempor incididunt ut labore consectetur
                                                                <code>adipiscing</code>
                                                                elit, sed do
                                                                eiusmod tempor incididunt ut labore et dolore magna
                                                                aliqua.
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="accordion-item">
                                                        <h2 class="accordion-header" id="headingThree">
                                                            <button class="accordion-button collapsed" type="button"
                                                                data-bs-toggle="collapse"
                                                                data-bs-target="#collapseThree" aria-expanded="false"
                                                                aria-controls="collapseThree">
                                                                Why is Villa Agency the best ?
                                                            </button>
                                                        </h2>
                                                        <div id="collapseThree" class="accordion-collapse collapse"
                                                            aria-labelledby="headingThree"
                                                            data-bs-parent="#accordionExample">
                                                            <div class="accordion-body">
                                                                Dolor <strong>almesit amet</strong>, consectetur
                                                                adipiscing
                                                                elit, sed
                                                                doesn't
                                                                eiusmod tempor incididunt ut labore consectetur
                                                                <code>adipiscing</code>
                                                                elit, sed do
                                                                eiusmod tempor incididunt ut labore et dolore magna
                                                                aliqua.
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3">
                                                <div class="info-table">
                                                    <ul>
                                                        <li>
                                                            <img src="assets/images/info-icon-01.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>250 m2<br><span>Total Flat Space</span></h4>
                                                        </li>
                                                        <li>
                                                            <img src="assets/images/info-icon-02.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>Contract<br><span>Contract Ready</span></h4>
                                                        </li>
                                                        <li>
                                                            <img src="assets/images/info-icon-03.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>Payment<br><span>Payment Process</span></h4>
                                                        </li>
                                                        <li>
                                                            <img src="assets/images/info-icon-04.png" alt=""
                                                                style="max-width: 52px;">
                                                            <h4>Safety<br><span>24/7 Under Control</span></h4>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="video section">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4 offset-lg-4">
                                                <div class="section-heading text-center">
                                                    <h6>| Video View</h6>
                                                    <h2>Get Closer View & Different Feeling</h2>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="video-content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-10 offset-lg-1">
                                                <div class="video-frame">
                                                    <img src="assets/images/video-frame.jpg" alt="">
                                                    <a href="https://youtube.com" target="_blank"><i
                                                            class="fa fa-play"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="fun-facts">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <div class="wrapper">
                                                    <div class="row">
                                                        <div class="col-lg-4">
                                                            <div class="counter">
                                                                <h2 class="timer count-title count-number" data-to="34"
                                                                    data-speed="1000"></h2>
                                                                <p class="count-text ">Buildings<br>Finished Now</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="counter">
                                                                <h2 class="timer count-title count-number" data-to="12"
                                                                    data-speed="1000"></h2>
                                                                <p class="count-text ">Years<br>Experience</p>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-4">
                                                            <div class="counter">
                                                                <h2 class="timer count-title count-number" data-to="24"
                                                                    data-speed="1000"></h2>
                                                                <p class="count-text ">Awwards<br>Won 2023</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="section best-deal">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4">
                                                <div class="section-heading">
                                                    <h6>| Best Deal</h6>
                                                    <h2>Find Your Best Deal Right Now!</h2>
                                                </div>
                                            </div>
                                            <div class="col-lg-12">
                                                <div class="tabs-content">
                                                    <div class="row">
                                                        <div class="nav-wrapper ">
                                                            <ul class="nav nav-tabs" role="tablist">
                                                                <li class="nav-item" role="presentation">
                                                                    <button class="nav-link active" id="appartment-tab"
                                                                        data-bs-toggle="tab"
                                                                        data-bs-target="#appartment" type="button"
                                                                        role="tab" aria-controls="appartment"
                                                                        aria-selected="true">Appartment</button>
                                                                </li>
                                                                <li class="nav-item" role="presentation">
                                                                    <button class="nav-link" id="villa-tab"
                                                                        data-bs-toggle="tab" data-bs-target="#villa"
                                                                        type="button" role="tab" aria-controls="villa"
                                                                        aria-selected="false">Villa House</button>
                                                                </li>
                                                                <li class="nav-item" role="presentation">
                                                                    <button class="nav-link" id="penthouse-tab"
                                                                        data-bs-toggle="tab" data-bs-target="#penthouse"
                                                                        type="button" role="tab"
                                                                        aria-controls="penthouse"
                                                                        aria-selected="false">Penthouse</button>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                        <div class="tab-content" id="myTabContent">
                                                            <div class="tab-pane fade show active" id="appartment"
                                                                role="tabpanel" aria-labelledby="appartment-tab">
                                                                <div class="row">
                                                                    <div class="col-lg-3">
                                                                        <div class="info-table">
                                                                            <ul>
                                                                                <li>Total Flat Space <span>185 m2</span>
                                                                                </li>
                                                                                <li>Floor number <span>26th</span></li>
                                                                                <li>Number of rooms <span>4</span></li>
                                                                                <li>Parking Available <span>Yes</span>
                                                                                </li>
                                                                                <li>Payment Process <span>Bank</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <img src="assets/images/deal-01.jpg" alt="">
                                                                    </div>
                                                                    <div class="col-lg-3">
                                                                        <h4>Extra Info About Property</h4>
                                                                        <p>Lorem ipsum dolor sit amet, consectetur
                                                                            adipiscing elit, do
                                                                            eiusmod
                                                                            tempor pack incididunt ut labore et dolore
                                                                            magna
                                                                            aliqua
                                                                            quised ipsum
                                                                            suspendisse.
                                                                            <br><br>When you need free CSS templates,
                                                                            you
                                                                            can simply
                                                                            type TemplateMo
                                                                            in any search engine website. In addition,
                                                                            you
                                                                            can type
                                                                            TemplateMo
                                                                            Portfolio, TemplateMo One Page Layouts, etc.
                                                                        </p>
                                                                        <div class="icon-button">
                                                                            <a href="property-details.html"><i
                                                                                    class="fa fa-calendar"></i> Schedule
                                                                                a visit</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="villa" role="tabpanel"
                                                                aria-labelledby="villa-tab">
                                                                <div class="row">
                                                                    <div class="col-lg-3">
                                                                        <div class="info-table">
                                                                            <ul>
                                                                                <li>Total Flat Space <span>250 m2</span>
                                                                                </li>
                                                                                <li>Floor number <span>26th</span></li>
                                                                                <li>Number of rooms <span>5</span></li>
                                                                                <li>Parking Available <span>Yes</span>
                                                                                </li>
                                                                                <li>Payment Process <span>Bank</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <img src="assets/images/deal-02.jpg" alt="">
                                                                    </div>
                                                                    <div class="col-lg-3">
                                                                        <h4>Detail Info About Villa</h4>
                                                                        <p>Lorem ipsum dolor sit amet, consectetur
                                                                            adipiscing elit, do
                                                                            eiusmod
                                                                            tempor pack incididunt ut labore et dolore
                                                                            magna
                                                                            aliqua
                                                                            quised ipsum
                                                                            suspendisse. <br><br>Swag fanny pack lyft
                                                                            blog
                                                                            twee. JOMO
                                                                            ethical copper
                                                                            mug, succulents typewriter shaman DIY kitsch
                                                                            twee taiyaki
                                                                            fixie hella
                                                                            venmo after messenger poutine next level
                                                                            humblebrag swag
                                                                            franzen.</p>
                                                                        <div class="icon-button">
                                                                            <a href="property-details.html"><i
                                                                                    class="fa fa-calendar"></i> Schedule
                                                                                a visit</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane fade" id="penthouse" role="tabpanel"
                                                                aria-labelledby="penthouse-tab">
                                                                <div class="row">
                                                                    <div class="col-lg-3">
                                                                        <div class="info-table">
                                                                            <ul>
                                                                                <li>Total Flat Space <span>320 m2</span>
                                                                                </li>
                                                                                <li>Floor number <span>34th</span></li>
                                                                                <li>Number of rooms <span>6</span></li>
                                                                                <li>Parking Available <span>Yes</span>
                                                                                </li>
                                                                                <li>Payment Process <span>Bank</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-6">
                                                                        <img src="assets/images/deal-03.jpg" alt="">
                                                                    </div>
                                                                    <div class="col-lg-3">
                                                                        <h4>Extra Info About Penthouse</h4>
                                                                        <p>Lorem ipsum dolor sit amet, consectetur
                                                                            adipiscing elit, do
                                                                            eiusmod
                                                                            tempor pack incididunt ut labore et dolore
                                                                            magna
                                                                            aliqua
                                                                            quised ipsum
                                                                            suspendisse. <br><br>Swag fanny pack lyft
                                                                            blog
                                                                            twee. JOMO
                                                                            ethical copper
                                                                            mug, succulents typewriter shaman DIY kitsch
                                                                            twee taiyaki
                                                                            fixie hella
                                                                            venmo after messenger poutine next level
                                                                            humblebrag swag
                                                                            franzen.</p>
                                                                        <div class="icon-button">
                                                                            <a href="property-details.html"><i
                                                                                    class="fa fa-calendar"></i> Schedule
                                                                                a visit</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="properties section">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-lg-4 offset-lg-4">
                                                <div class="section-heading text-center">
                                                    <h6>| Properties</h6>
                                                    <h2>We Provide The Best Property You Like</h2>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <c:forEach var="post" items="${list}">
                                                <div class="col-lg-4 col-md-6">
                                                    <div class="item">
                                                        <a href="/newsletter-detail/${post.newsletterID}"><img
                                                                style="width: 100%; height: 200px;object-fit: cover;"
                                                                src="/uploads/${post.image1}" alt=""></a>
                                                        <span class="category">${post.newsletterAddress}</span>
                                                        <h6>
                                                            <fmt:formatNumber value="${post.price}" />
                                                            VND
                                                        </h6>
                                                        <h4
                                                            style="display: -webkit-box;-webkit-line-clamp: 2;-webkit-box-orient: vertical;overflow: hidden;text-overflow: ellipsis;">
                                                            <a href="property-details.html">${post.title}</a>
                                                        </h4>
                                                        <ul>
                                                            <li>Diện tích: <span>${post.acreage} m²</span></li>
                                                            <li>Phòng khả dụng: <span>${post.vacantRoom} phòng</span>
                                                            </li>
                                                            <li>Ở tối đa (người/phòng): <span>${post.maximum}
                                                                    người</span>
                                                            </li>
                                                            <li>Ngày cập nhật: <span>${post.createTime}</span></li>
                                                        </ul>
                                                        <div style="display: flex; justify-content: space-evenly;">
                                                            <div class="main-button">
                                                                <a href="/newsletter-detail/${post.newsletterID}">THÔNG
                                                                    TIN
                                                                    CHI TIẾT</a>
                                                            </div>
                                                            <div class="main-button">
                                                                <a href="property-details.html"><i
                                                                        class="fa-brands fa-gratipay"></i></a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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

                    <div class="contact-content">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-7">
                                    <div id="map">
                                        <iframe
                                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.1102349383827!2d105.69317477473831!3d18.659048664930566!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3139cddf0bf20f23%3A0x86154b56a284fa6d!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBWaW5o!5e0!3m2!1svi!2s!4v1701333714488!5m2!1svi!2s"
                                            width="100%" height="500px" frameborder="0"
                                            style="border:0; border-radius: 10px; box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.15);"
                                            allowfullscreen=""></iframe>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="item phone">
                                                <img src="/images/phone-icon.png" alt="" style="max-width: 52px;">
                                                <h6>090.999.9999<br><span>Số điện thoại</span></h6>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="item email">
                                                <img src="/images/email-icon.png" alt="" style="max-width: 52px;">
                                                <h6>tn247@gmail.com<br><span>Email</span></h6>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-5">
                                    <form:form action="/lock" method="post" modelAttribute="f" id="contact-form">
                                        <div class="row">
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Họ Và Tên</label>
                                                    <form:input type="text" path="fullName" placeholder="Tên của bạn..."
                                                        autocomplete="on" required="required" />
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Email</label>
                                                    <form:input type="email" path="email"
                                                        placeholder="Địa chỉ email của bạn..." autocomplete="on"
                                                        required="required" />
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Tiêu Đề</label>
                                                    <form:input type="text" path="title"
                                                        placeholder="Tiêu đề liên hệ ..." autocomplete="on"
                                                        required="required" />
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <label for="fullName">Nội Dung Chi Tiết</label>
                                                    <form:textarea type="text" path="context" placeholder="Nội dung ..."
                                                        autocomplete="on" required="required"></form:textarea>
                                                </fieldset>
                                            </div>
                                            <div class="col-lg-12">
                                                <fieldset>
                                                    <button type="submit" id="form-submit"
                                                        class="orange-button">Gửi</button>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </form:form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <jsp:include page="../client/layout/footer.jsp" />
                    <script src="/jquery/jquery.min.js"></script>
                    <script src="/js/bootstrap.min.js"></script>
                    <script src="/js/isotope.min.js"></script>
                    <script src="/js/owl-carousel.js"></script>
                    <script src="/js/counter.js"></script>
                    <script src="/js/custom.js"></script>

                </body>

                </html>
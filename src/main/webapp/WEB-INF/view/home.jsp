<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Termite Company</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="../src/main/webapp/assets/img/favicon.png" rel="icon">
    <link href="../src/main/webapp/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="../src/main/webapp/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="../src/main/webapp/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../src/main/webapp/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="../src/main/webapp/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="../src/main/webapp/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="../src/main/webapp/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
<h1>Spring MVC Hibernate - หน้าหลัก</h1>
<div class="container">
    <jsp:include page="/WEB-INF/view/layouts/nav.jsp"/>
</div>
<!-- ======= Hero Section ======= -->
<section id="hero">
    <div id="heroCarousel" data-bs-interval="5000" class="carousel slide carousel-fade" data-bs-ride="carousel">

        <ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

        <div class="carousel-inner" role="listbox">

            <!-- Slide 1 -->
            <div class="carousel-item active" style="background-image: url(../src/main/webapp/assets/img/slide/slide-1.jpg)">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">บริษัทกำจัด<span>ปลวก</span></h2>
                        <p class="animate__animated animate__fadeInUp">Termite Company.</p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>

            <!-- Slide 2 -->
            <div class="carousel-item" style="background-image: url(../src/main/webapp/assets/img/slide/slide-2.jpg)">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">บริษัทกำจัดปลวก</h2>
                        <p class="animate__animated animate__fadeInUp">Termite Company.</p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>

            <!-- Slide 3 -->
            <div class="carousel-item" style="background-image: url(../src/main/webapp/assets/img/slide/slide-3.jpg)">
                <div class="carousel-container">
                    <div class="container">
                        <h2 class="animate__animated animate__fadeInDown">บริษัทกำจัดปลวก</h2>
                        <p class="animate__animated animate__fadeInUp">Termite Company.</p>
                        <a href="#about" class="btn-get-started animate__animated animate__fadeInUp scrollto">Read More</a>
                    </div>
                </div>
            </div>

        </div>

        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-bs-slide="prev">
            <span class="carousel-control-prev-icon bi bi-chevron-left" aria-hidden="true"></span>
        </a>

        <a class="carousel-control-next" href="#heroCarousel" role="button" data-bs-slide="next">
            <span class="carousel-control-next-icon bi bi-chevron-right" aria-hidden="true"></span>
        </a>

    </div>
</section><!-- End Hero -->
<!-- ======= About Us Section ======= -->
<section id="about" class="about">
    <div class="container">

        <div class="section-title">
            <h2>About Us</h2>
            <p>เรามีความมุ่งมั่นในการดำเนินธุรกิจให้บริการ “ป้องกัน-กำจัดปลวกและแมลง” โดยมุ่งเน้นที่ ประสิทธิภาพ,
                การบริการ, ความปลอกภัย และ ความซื่อสัตย์ ตลอดจนความรับผิดชอบต่อสิ่งแวดล้อม เราไม่มุ่งเน้น
                ที่จะแข่งขันด้านราคา แต่เราจะคำนวนราคาการให้บริการอย่างเหมาะสม และดำเนินการให้คุ้มค่า
                งบประมาณของลูกค้าที่สุด ให้สมกับปณิธานของเรา “คุ้มค่างบประมาณ มาตรฐานระดับสากล”</p>
        </div>

        <div class="row">
            <div class="col-lg-6 order-1 order-lg-2">
                <img src="../src/main/webapp/assets/img/about.jpg" class="img-fluid" alt="">
            </div>
            <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                <h3>Termite Company ป้องกัน และ กำจัดปลวก</h3>
                <p class="fst-italic">
                    การกำจัดปลวกและแมลง ถือเป็นปัญหาที่ใครหลายคนมักจะประสบกันมาไม่มากก็น้อย ใครที่ละเลยปัญหาเหล่านี้มักจะส่งผลเสียต่อบ้านของคุณในอนาคต เงินที่ลงทุนสร้างบ้านหรือซื้อเฟอร์นิเจอร์ตกแต่งสวยๆก็อาจจะสูญเปล่าก็เป็นได้  เพราะปลวกและแมลงมักมีขนาดเล็ก ขยายพันธุ์เร็ว และยากที่กำจัด จึงทำให้มันถือเป็นภัยอันตรายอันดับหนึ่งต่อที่พักอาศัยของคุณ
                </p>
                <ul>
                    <li><i class="bi bi-check-circled"></i> การกำจัดปลวกและแมลง ถือเป็นปัญหาที่ใครหลายคนมักจะประสบกันมาไม่มากก็น้อย </li>
                    <li><i class="bi bi-check-circled"></i> ใครที่ละเลยปัญหาเหล่านี้มักจะส่งผลเสียต่อบ้านของคุณในอนาคต เงินที่ลงทุนสร้างบ้านหรือซื้อเฟอร์นิเจอร์ตกแต่งสวยๆก็อาจจะสูญเปล่าก็เป็นได้ </li>
                    <li><i class="bi bi-check-circled"></i>  เพราะปลวกและแมลงมักมีขนาดเล็ก ขยายพันธุ์เร็ว และยากที่กำจัด จึงทำให้มันถือเป็นภัยอันตรายอันดับหนึ่งต่อที่พักอาศัยของคุณในการสำรวจหาปลวก ต้องขยับ เคลื่อนย้ายสิ่งของต่างๆออกเพื่อให้สามารถสังเกตเห็นการทำลายของปลวกได้อย่างทั่วถึง</li>
                </ul>
                <p>
                </p>
            </div>
        </div>

    </div>
</section><!-- End About Us Section -->
<!-- ======= Services Section ======= -->
<section id="services" class="services">
    <div class="container">

        <div class="section-title">
            <h2>Services</h2>
            <p></p>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-6 d-flex align-items-stretch" data-aos="zoom-in" data-aos-delay="100">
                <div class="icon-box iconbox-blue">
                    <div class="icon">
                        <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                            <path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,521.0016835830174C376.1290562159157,517.8887921683347,466.0731472004068,529.7835943286574,510.70327084640275,468.03025145048787C554.3714126377745,407.6079735673963,508.03601936045806,328.9844924480964,491.2728898941984,256.3432110539036C474.5976632858925,184.082847569629,479.9380746630129,96.60480741107993,416.23090153303,58.64404602377083C348.86323505073057,18.502131276798302,261.93793281208167,40.57373210992963,193.5410806939664,78.93577620505333C130.42746243093433,114.334589627462,98.30271207620316,179.96522072025542,76.75703585869454,249.04625023123273C51.97151888228291,328.5150500222984,13.704378332031375,421.85034740162234,66.52175969318436,486.19268352777647C119.04800174914682,550.1803526380478,217.28368757567262,524.383925680826,300,521.0016835830174"></path>
                        </svg>
                        <i class="bx bxl-dribbble"></i>
                    </div>
                    <h4><a href="">บริการแบบหลายวัน</a></h4>
                    <p></p>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="zoom-in" data-aos-delay="200">
                <div class="icon-box iconbox-orange ">
                    <div class="icon">
                        <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                            <path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,582.0697525312426C382.5290701553225,586.8405444964366,449.9789794690241,525.3245884688669,502.5850820975895,461.55621195738473C556.606425686781,396.0723002908107,615.8543463187945,314.28637112970534,586.6730223649479,234.56875336149918C558.9533121215079,158.8439757836574,454.9685369536778,164.00468322053177,381.49747125262974,130.76875717737553C312.15926192815925,99.40240125094834,248.97055460311594,18.661163978235184,179.8680185752513,50.54337015887873C110.5421016452524,82.52863877960104,119.82277516462835,180.83849132639028,109.12597500060166,256.43424936330496C100.08760227029461,320.3096726198365,92.17705696193138,384.0621239912766,124.79988738764834,439.7174275375508C164.83382741302287,508.01625554203684,220.96474134820875,577.5009287672846,300,582.0697525312426"></path>
                        </svg>
                        <i class="bx bx-file"></i>
                    </div>
                    <h4><a href="">บริการแบบหลายเดือน</a></h4>
                    <p></p>
                </div>
            </div>

            <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0" data-aos="zoom-in" data-aos-delay="300">
                <div class="icon-box iconbox-pink">
                    <div class="icon">
                        <svg width="100" height="100" viewBox="0 0 600 600" xmlns="http://www.w3.org/2000/svg">
                            <path stroke="none" stroke-width="0" fill="#f5f5f5" d="M300,541.5067337569781C382.14930387511276,545.0595476570109,479.8736841581634,548.3450877840088,526.4010558755058,480.5488172755941C571.5218469581645,414.80211281144784,517.5187510058486,332.0715597781072,496.52539010469104,255.14436215662573C477.37192572678356,184.95920475031193,473.57363656557914,105.61284051026155,413.0603344069578,65.22779650032875C343.27470386102294,18.654635553484475,251.2091493199835,5.337323636656869,175.0934190732945,40.62881213300186C97.87086631185822,76.43348514350839,51.98124368387456,156.15599469081315,36.44837278890362,239.84606092416172C21.716077023791087,319.22268207091537,43.775223500013084,401.1760424656574,96.891909868211,461.97329694683043C147.22146801428983,519.5804099606455,223.5754009179313,538.201503339737,300,541.5067337569781"></path>
                        </svg>
                        <i class="bx bx-tachometer"></i>
                    </div>
                    <h4><a href="">บริการแบบหลายปี</a></h4>
                    <p></p>
                </div>
            </div>


        </div>

    </div>
</section><!-- End Services Section -->
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>

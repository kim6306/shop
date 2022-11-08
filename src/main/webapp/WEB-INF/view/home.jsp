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
<jsp:include page="/WEB-INF/view/layouts/footer.jsp"/>
</body>
</html>

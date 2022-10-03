<footer id="footer">
    <div class="footer-top">
        <div class="clear40"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-4">
                    <h4 class="tit-ft">VỀ CHÚNG TÔI</h4>
                    <p class="clwhite">Thương hiệu Công Ty SX TM XNK TIẾN THINH PHÁT được xây dựng trên phương châm ,
                        <u> Sản Phẩm Sạch, Chất lượng vàng” góp phần nâng cao sức khoẻ cho cộng đồng.</u>
                    </p>
                    <p class="clwhite"><a href="/index.php" title="Trang chủ salanest"></a> SALANEST.COM là trang thông
                        tin chia sẻ kiến thức về YẾN SÀO hoạt động phi lơi nhuận. Chúng tôi kinh doanh trực tiếp trên
                        internet. Vui lòng đến trực tiếp Web bán hàng hoặc đến các cửa hàng và hệ thống.<a href="#"
                            title="Trang chủ salanest">SALANEST.COM .</a></p>
                </div>
                <div class="clear20 show767"></div>
                <div class="col-md-4 col-sm-4">
                    <h4 class="tit-ft">THÔNG TIN LIÊN HỆ</h4>
                    <p class="clwhite">Địa chỉ: 180 Nguyễn Thị Búp, Phường Tân Chánh Hiệp, Quận 12, Thành Phố Hồ
                        Chí Minh.</p>
                    <p class="clwhite">Điện thoại: (+84)47 28 38 38.</p>
                    <p class="clwhite">Email: ttpsalanest@gmail.com.</p>
                    <p class="clwhite">Copyright © Công ty TNHH SX TM XNK NƯỚC GIẢI KHÁT TIẾN THỊNH.</p>
                </div>
                <div class="clear20 show767"></div>
                <div class="col-md-4 col-sm-4">
                    <h4 class="tit-ft">Vị Trí</h4>
                    <div class="map_color"><iframe
                            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.167756178061!2d106.6261484139766!3d10.874842160345052!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752b8c1dec9bb1%3A0x40c9948611c328fc!2zY2l0eSwgMTgwIE5ndXnhu4VuIFRo4buLIELDunAsIEhp4buHcCBUaMOgbmgsIFF14bqtbiAxMiwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1664146636593!5m2!1svi!2s"
                            width="400" height="300" style="border:0;" allowfullscreen="" loading="lazy"
                            referrerpolicy="no-referrer-when-downgrade"></iframe></div>
                </div>
            </div>
        </div>
        <div class="clear40"></div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="flex-bw">
                <p>* Tuân thủ Nghị định số 185/2013/NĐ-CP của Chính phủ và luật quảng cáo số 16/2012/QH13 về kinh doanh
                    bán hàng qua mạng.</p>
                <p>* hoặc gọi tới số hotline <strong>(+84)47 28 38 38</strong>.để được tư vấn.</p>
            </div>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<div title="Về đầu trang" id="top-up"><i class="fas fa-chevron-circle-up"></i></div>
<script>
var offset = 500;
var duration = 100;
$(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop() > offset)
            $('#top-up').fadeIn(duration);
        else
            $('#top-up').fadeOut(duration);
    });
    $('#top-up').click(function() {
        $('body,html').animate({
            scrollTop: 0
        }, duration);
    });
});
</script>
<script src="js/lightslider.js"></script>
<script src="js/jquery.nivo.slider.pack.js"></script>
<script src="js/main.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    jQuery('#mainSlider').nivoSlider({
        directionNav: false,
        animSpeed: 500,
        effect: 'random',
        slices: 18,
        pauseTime: 5000,
        pauseOnHover: false,
        controlNav: false,
    });
});
</script>
<script>
$(document).ready(function() {
    $(window).scroll(function() {
        if ($(this).scrollTop()) {
            $('#navbar').addClass('sticky');
            $('#right-header-bottom').addClass('sticky');
        } else {
            $('#navbar').removeClass('sticky');
            $('#right-header-bottom').removeClass('sticky');
        }
    });
});
</script>
<script>
$(document).ready(function() {
    $('.tab-content-item').hide();
    $('.tab-content-item:first-child').fadeIn();
    $('.nav-tabs li').click(function() {
        $('.nav-tabs li').removeClass('active');
        $(this).addClass('active');
        let id_tab_content = $(this).children('a').attr('href');
        $('.tab-content-item').hide();
        $(id_tab_content).fadeIn();
        return false;
    });
})
</script>

<script>
let items = document.querySelectorAll('.parallax');
document.addEventListener('scroll', (event) => {
    items.forEach(item => {
        if (item.offsetTop - window.scrollY < 500) {
            item.classList.add('active');
        }
    });
})
</script>
<!--  slick -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- /slick -->
<script type="text/javascript" src="https://web.cmbliss.com/webtools/hotline/js/hotline.js"></script>
<script type="text/javascript">
$("body").hotline({
    phone: "0947 283 838",
    p_bottom: true,
    bottom: 0,
    p_left: true,
    left: 0,
    bg_color: "#e60808",
    abg_color: "rgba(230, 8, 8, 0.7)",
    show_bar: true,
    position: "fixed",
});
</script>

</body>

</html>
<?php ob_end_flush(); ?>
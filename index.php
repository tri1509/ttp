<?php
$title = "Trang chủ";
include 'inc/header.php';
?>
<section>
<?php include 'inc/sale.php' ;?>
   <div class="container container_slider">
      <div class="row">
         <div class="col-xl-12 col-12">
            <div class="main-banner">
               <div class="slider-wrapper">
                     <div id="mainSlider" class="nivoSlider">
                        <a href="javascript:void(0);"><img src="img/bn01.webp" alt="banner" class="fullwidth"/></a>
                        <a href="javascript:void(0);"><img src="img/bn02.webp" alt="banner" class="fullwidth"/></a>
                        <a href="javascript:void(0);"><img src="img/bn03.webp" alt="banner" class="fullwidth"/></a>
                        <a href="javascript:void(0);"><img src="img/bn01.webp" alt="banner" class="fullwidth"/></a>
                        <a href="javascript:void(0);"><img src="img/bn02.webp" alt="banner" class="fullwidth"/></a>
                        <a href="javascript:void(0);"><img src="img/bn03.webp" alt="banner" class="fullwidth"/></a>
                     </div>
               </div>
            </div>
         </div>   
   </div>
</div>
   <div class="main-sanphamchinh">
      <div class="clear40"></div>
      <div class="container">
         <h3 class="tit-pub">SẢN PHẨM NỔI BẬT</h3>
         <p class="center">Đối với chúng tôi, hành trình sáng tạo ra các Sản phẩm là một hành trình nhiều ý nghĩa. </p>
         <div class="clear20"></div>
         <div class="row">
            <?php
               $showProduct = $product -> getproduct_feathered_8();
               if($showProduct) {
                  while ($result = $showProduct ->fetch_assoc()) {
            ?>
               <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6 col-xs-6 col-6">
                  <a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html" title="<?php echo $result['sanpham_name'] ?>">
                     <div class="item-pro item-pro-pd ">
                        <div class="home-product__item-img" 
                        style="background-image:url(./img/<?php echo $result['hinh'] ?>);"></div>
                        <div class="ct-item-pro">
                           <p class="bold item-name"><?php echo $result['sanpham_name'] ?></p>
                           <div class="clear10"></div>
                           <div class="flex-bw">
                              <p class="old-pri"><?php echo number_format($result['sanpham_gia'])." đ" ; ?></p>
                              <p class="new-pri bold"><?php echo number_format($result['sanpham_giakhuyenmai'])." đ" ; ?></p>
                           </div>
                           <div class="clear10"></div>
                           <a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html" class="addtocart">Xem sản phẩm </a>
                        </div>
                        <div class="home-product__item-new">
                           <span class="home-product__item-new-chill">
                              Mới
                           </span>
                        </div>
                     </div>
                  </a>
               </div>
            <?php } } ?>
         </div>
         <div class="clear20"></div>
         <div class="center shopleft">
            <a href="sanpham.php" class="">
               <button class="custom-btn btn-7" type="button"><span>Xem tất cả</span></button>
            </a>
         </div>
      </div>
      <div class="clear40"></div>
      </div>
      <div class="main-bnck"><div class="clear40"></div><div class="container"><div class="row"><div class="col-md-6"><div class="ct-bnck"><h3>Công ty TNHH TM XS Tiến Tịnh Phát</h3><div class="clear20"></div><ul class="ul-ck"><li><i class="fas fa-circle"></i> Nguồn gốc sản phẩm chuẩn 100%</li><li><i class="fas fa-circle"></i> Bán sản phẩm chất lượng như cam kết</li><li><i class="fas fa-circle"></i> Tư vấn có chuyên môn cao, tư vấn các sản phẩm phù hợp với nhu cầu.</li></ul></div></div></div></div><div class="clear40"></div></div>
         <div class="clear40"></div>
   </div>
   <div class="main-sanphamchinh">
   <div class="clear40"></div>
   <div class="container">
         <h3 class="tit-pub">QUÀ TẶNG Ý NGHĨA</h3>
         <p class="center">Mỗi hộp quà của Chúng tôi đều là những câu chuyện.<br>Mỗi sản phẩm của chúng tôi đều là một tác phẩm nghệ thuật.</p>
         <div class="clear20"></div>
         <div class="row flex-wrap tablet-grid">
            <div class="col-md-4 col-sm-4 col-xs-6 fwmb">
               <div class="item-pro">
                  <a href=""><img src="img/qt.jpg" class="fullwidth"></a>
                  <div class="ct-item-pro">
                     <p class="bold"><a href="" class="clpink">Túi quà Hạnh phúc</a></p>
                     <div class="clear10"></div>
                     <div class="flex-bw">
                        <p class="old-pri">3,500,000 đ</p>
                        <p class="new-pri bold">2,450,000 đ</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6 fwmb">
               <div class="item-pro">
                  <a href=""><img src="img/qt.jpg" class="fullwidth"></a>
                  <div class="ct-item-pro">
                     <p class="bold"><a href="" class="clpink">Túi quà Hạnh phúc</a></p>
                     <div class="clear10"></div>
                     <div class="flex-bw">
                        <p class="old-pri">3,500,000 đ</p>
                        <p class="new-pri bold">2,450,000 đ</p>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-6 fwmb">
               <div class="item-pro">
                  <a href=""><img src="img/qt.jpg" class="fullwidth"></a>
                  <div class="ct-item-pro">
                     <p class="bold"><a href="" class="clpink">Túi quà Hạnh phúc</a></p>
                     <div class="clear10"></div>
                     <div class="flex-bw">
                        <p class="old-pri">3,500,000 đ</p>
                        <p class="new-pri bold">2,450,000 đ</p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="clear20"></div>
      </div>
      <div class="main-news-home">
      <div class="clear40"></div>
      <div class="main-sanphamchinh"><div class="container"><h3 class="tit-pub">BÀI VIẾT MỚI</h3><p class="center">Thông tin cần biết - Tư vấn - Hướng dẫn sử dụng</p><div class="clear40"></div><div class="row"><div class="col-md-6"><div class="block-news-home"><div class="flex-nh"><a href="gioithieu.html" class="img-nh"><img src="img/van-chuyen.webp" class="fullwidth"></a><div class="ct-nh"><p class="tit-nh"><a href="gioithieu.html" class="clblack">[Đơn hàng] Người bán gửi hàng tại bưu cục là gì?</a></p><p class="des-nh">* <strong>Salanest</strong>  gửi hàng tại bưu cục là một trong những hình thức vận chuyển sản phẩm từ Người bán giao đến Đơn vị vận chuyển để gửi đến cho Người mua. Người bán có thể chọn hình thức này thay cho việc chờ Đơn vị vận chuyển đến lấy hàng</p><p class="des-nh">* Sau đó, đơn hàng sẽ được đơn vị vận chuyển giao đến địa chỉ của Người mua. Bạn không cần phải ra bưu cục để nhận hàng</p></div></div></div></div><div class="col-md-6"><div class="block-news-home"><div class="flex-nh"><a href="gioithieu.html" class="img-nh"><img src="img/thanhtoan.webp" class="fullwidth"></a><div class="ct-nh"><p class="tit-nh"><a href="gioithieu.html" class="clblack">[Thành viên mới] Salanest hiện đang có những phương thức thanh toán nào?</a></p><p class="des-nh">* Hiện nay Salanest đang hỗ trợ 04 hình thức thanh toán, bao gồm:</p><p>* Chuyển khoản ngân hàng</p><p>* Thanh toán Vnpay</p><p>* Thẻ ATM nội địa (Internet Banking)</p><p>* Thanh toán khi nhận hàng (COD)</p></div></div></div></div></div></div><div class="clear40"></div></div>
      <div class="clear40"></div>
   </div>
</section>
<?php  include 'inc/footer.php' ; ?>

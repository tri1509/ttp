
<div class="col-xl-4 col-lg-4 col-md-12 order-lg-1 order-md-2 order-2">
   <div class="block-aside">
      <h4 class="tit-aside"><i class="far fa-edit"></i> BÀI VIẾT MỚI NHẤT</h4>
      <div class="ct-aside">
         <a href="baiviet1.php"><img src="./img/diamond.png"><span class="category-baiviet">Giới thiệu về công ty TNHH TM SX TIẾN THỊNH PHÁT.</span></a>
         <a href="baiviet2.php"><img src="./img/diamond.png"><span class="category-baiviet">Giới Thiệu Quá Trình Hình Thành và Phát Triển Công Ty SX TM XNK  NGK TIẾN THINH PHÁT </span></a>
         <a href="baiviet3.php"><img src="./img/diamond.png"><span class="category-baiviet">TOP NHỮNG TÁC DỤNG CỦA YẾN SÀO :</span></a>
         <a href="baiviet4.php"><img src="./img/diamond.png"><span class="category-baiviet">[CHÍNH SÁCH ĐƠN HÀNG & GIAO HÀNG]...</span></a>
         <a href="baiviet5.php"><img src="./img/diamond.png"><span class="category-baiviet">HÌNH THỨC THANH TOÁN & LIÊN KÊT THANH TOÁN ONLINE</span></a>
      </div>
   </div>
   <div class="block-aside">
      <h4 class="tit-aside"><i class="fas fa-list-ul"></i> DANH MỤC SẢN PHẨM</h4>
      <div class="ct-aside">

      <?php 
         $showCat = $cat -> show_category();
         if($showCat){
            while($result_showCat = $showCat -> fetch_assoc()){
      ?>
         <a href="productbycat.php?catid=<?php echo $result_showCat['category_id'] ?>" class=""><img src="./img/diamond.png"><span><?php echo $result_showCat['category_name'] ?></span></a>
      <?php }} ?>

      </div>
   </div>
   <div class="block-aside">
      <h4 class="tit-aside"><i class="fas fa-award"></i> THƯƠNG HIỆU</h4>
      <div class="ct-aside">
      <?php
         $show_brand = $brand->show_brand();
         if($show_brand){
            while($result = $show_brand->fetch_assoc()){
      ?>
         <a href="productbybrand.php?brandid=<?php echo $result['brand_id'] ?>"><img src="./img/diamond.png"><span><?php echo $result['brand_name'] ?></span></a>
      <?php }} ?>
      </div>
   </div>
   <div class="block-aside">
      <div class="center"><img src="img/quangcao.jpg"></div>
   </div>
</div>
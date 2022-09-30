
<div class="col-xl-4 col-lg-4 col-md-12 order-lg-1 order-md-2 order-2">
   <div class="block-aside">
      <h4 class="tit-aside"><i class="fas fa-list-ul"></i> DANH MỤC SẢN PHẨM</h4>
      <div class="ct-aside">

      <?php 
         $showCat = $cat -> show_category();
         if($showCat){
            while($result_showCat = $showCat -> fetch_assoc()){
      ?>
         <a href="san-pham-theo-danh-muc/<?php echo $result_showCat['category_id'] ?>.html" class=""><img src="./img/diamond.png"><span><?php echo $result_showCat['category_name'] ?></span></a>
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
         <a href="productbybrand.php?brandid=<?php echo $result['brand_id'] ?>"><img src="./img/diamond.png">
            <span>
               <?php echo $result['brand_name'] ?>
            </span>
            <ul class="brand_lv2_list">
            <?php
               $id_lv2 = $result['brand_id'];
               $show_brand_lv2 = $brand->show_brand_lv2($id_lv2);
               if($show_brand_lv2){
                  while($result_lv2 = $show_brand_lv2->fetch_assoc()){
            ?>
               <li class="brand_lv2_item">
               <img src="./img/diamond.png"><span> <?php echo $result_lv2['brand_name_lv2']?></span>
               </li>
            <?php } } ?>
            </ul>
         </a>
      <?php } } ?>
      </div>
   </div>
   <div class="block-aside">
      <div class="center"><img src="img/quangcao.jpg"></div>
   </div>
   <div class="block-aside">
      <h4 class="tit-aside"><i class="far fa-edit"></i> BÀI VIẾT MỚI NHẤT</h4>
      <?php
            $get_post = $ps -> show_post();
            if($get_post){
               while($result = $get_post -> fetch_assoc()){
      ?>
         <div class="ct-aside">
            <a href="baiviet.php?postid=<?php echo $result['baiviet_id'] ; ?>"><img src="./img/diamond.png"><span class="category-baiviet"><?php echo $result['baiviet_name'] ; ?></span></a>
         </div>
      <?php }} ?>
   </div>
</div>
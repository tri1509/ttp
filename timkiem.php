<?php include 'inc/header.php' ;?>
<?php include 'inc/sale.php' ;?>


<?php
if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['search_button'])) {
   $tukhoa = $_POST['search_product'];
   $title = $tukhoa;
}
?> 
<section>
	<div class="main-breac">
		<div class="container">
				<span><a href="./" class="clblack">Trang chủ</a></span>
				<span style="margin: 0 7px;"><i class="fas fa-angle-right"></i></span>
				<span class="clpink">Tìm kiếm</span>
				<div class="clear20"></div>
				<div class="row flex-wrap list-spc">
		</div>
	</div>  

	<div class="container-fluid">
	<div class="clear20"></div>
   <div class="container">
      <div class="row">
         <?php 
            include('inc/danhmuc.php');
         ?>
         <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12 order-lg-2 order-md-1 order-1">
         <h4 class="nomargin text-uppercase clredt">Kết quả tìm kiếm : <?php echo $title ?></h4>
            <div class="row">
               <?php
               $timkiem = $product -> timkiem($tukhoa);
               if($timkiem) {
                  while($result = $timkiem -> fetch_assoc()){
               ?>

               <div class="col-xl-4 col-lg-4 col-md-4 col-sm-6 col-xs-6 col-6">
                  <a href="chitietsp.php?proid=<?php echo $result['sanpham_id'] ?>">
                     <div class="item-pro">
                        <div class="home-product__item-img" style="background-image:url(./img/<?php echo $result['hinh']; ?>);"></div>
                        <div class="ct-item-pro">
                           <p class="bold"><a href="" class="clpink item-name"><?php echo $result['sanpham_name'] ?></a></p>
                           <div class="clear10"></div>
                           <div class="flex-bw">
                              <p class="old-pri"><?php echo number_format($result['sanpham_gia'])." đ" ; ?></p>
                              <p class="new-pri bold"><?php echo number_format($result['sanpham_giakhuyenmai'])." đ" ; ?></p>
                           </div>
                           <div class="clear10"></div>
                           <a href="chitietsp.php?proid=<?php echo $result['sanpham_id'] ?>" class="addtocart">xem sản phẩm </a>
                        </div>
                     </div>
                  </a>
               </div>
               <?php
                  }
                  }else{
                     echo "<p class='nomargin text-uppercase clredt'>Không tìm thấy sản phẩm</p>";
                  }
               ?>
            </div>
         </div>
      </div>
   </div>
</section>
<?php include 'inc/footer.php' ;?>


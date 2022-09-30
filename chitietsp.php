<?php include 'inc/header.php' ;?>
<?php
   if(isset($_GET['proid']) && $_GET['proid']!=NULL){
      $id = $_GET['proid'];
   }else{
      header('Location:404.php');
   }
   if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
      $quantity = $_POST['quantity'];
      $addtoCart = $ct -> add_to_cart($quantity,$id);
   }
?>
<?php include 'inc/sale.php' ;?>

<div class="main-breac">
		<div class="container">
				<span><a href="./" class="clblack">Trang chủ</a></span>
				<span style="margin: 0 7px;"><i class="fas fa-angle-right"></i></span>
				<span class="clpink">Chi tiết sản phẩm</span>
		</div>
	</div>   
	<div class="main-wraper">
	<div class="clear20"></div>
	<div class="container">
      <div class="row flex-order">
         <?php if(isset($addtoCart)){ ?>
            <a href="giohang.php">
            <?php echo  $addtoCart ?> <i>|</i> <span class='success'>Xem giỏ hàng <span class='test'>>></span></span>
            </a>
         <?php }else{ echo "<div class='clear20'></div>" ;} ?>
         <div class='clear20'></div>
         <div class="col-xl-12 col-lg-9 col-md-12 col-sm-12 col-xs-12 order-lg-2 order-md-1 order-1">
            <?php
                  $get_product_details = $product -> get_details($id);
                  if($get_product_details) {
                     while($result_detils = $get_product_details -> fetch_assoc()){
            ?>
         
            <div class="row">
               <div class="col-md-6 col-sm-12 col-12">
                  <div class="block-gal-img">
                     <div class="block-gal-img">
                        <img src="./img/<?php echo $result_detils['hinh']?>" alt="" width="100%">
                     </div>
                  </div>
               </div>
               <div class="clear20 show767"></div>
               <div class="col-md-6 col-sm-12 col-12">
                  <h3 class="nomargin bold clred"><?php echo $result_detils ['sanpham_name'] ?></h3>
                  <div class="clear10"></div>
                  <p> <span >Thương hiệu:</span><span class="bold">Thương hiệu 
                        <?php echo $result_detils['brand_name'] ?></span> | <span>Tình trạng: </span><span class="bold">
                     <?php $tinhtrang = $result_detils ['sanpham_soluong'] ;
                           if($tinhtrang > 0){
                              echo "Còn hàng";
                           }else {
                              echo "Đã bán hết";
                           } ;?></span>
                  </p>
                  <div class="clear10"></div>
                  <div class="flex">
                     <h3 class="nomargin bold clred gia-sp"><?php echo number_format($result_detils['sanpham_giakhuyenmai'])." đ" ; ?><span class="donvi"></span></h3>
                     <p class="old-pri"><?php echo number_format($result_detils['sanpham_gia'])." đ" ; ?></p>
                  </div>
                  <hr>
                  <div class="thanhphan">
                     <p>Thành phần :</p>
                     <?php echo $result_detils ['sanpham_mota'] ?>
                  </div>
                  <div class="clear20"></div>

                  <form action="" method="post">
                  <div class="thanhtoan">
                     <div class="soluong">
                        <span>Số lượng:</span><input type="number" class="center" name="quantity" min="1" value="1">
                     </div>
                     <div class="muahang but-buy">
                        <i class="fas fa-cart-plus"></i>
                        <input type="submit" class="" name="submit" value="Mua hàng">
                     </div>
                  </div>
               </form>
                  <div class="clear20"></div>
                  <div class="p-tuvan">
                     <p class="bold flex"><img src="img/tuvan.png"> Tư vấn & đặt hàng: <span class="clred">(04).6674.2332</span></p>
                  </div>
                  <div class="clear20"></div>
               </div>
            </div>

            <?php } }?>
      
            <div class="clear40"></div>
            
            <div id="wraper">
               <div class="tabs">
                  <ul class="nav-tabs">
                     <li class="active"><a href="#menu_1">MÔ TẢ</a></li>
                     <li><a href="#menu_2">HƯỚNG DẪN MUA HÀNG & THANH TOÁN</a></li>
                  </ul>
                  <div class="tab-content">
                     <div id="menu_1" class="tab-content-item">
                        <h2>MÔ TẢ</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><br>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><br>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><br>
                     </div>

                     <div id="menu_2" class="tab-content-item">
                        <h2>HƯỚNG DẪN MUA HÀNG & THANH TOÁN</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><br>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p><br>
                     </div>
                  </div>
               </div>

            </div>

            <div class="clear20"></div>
            <p class="tag-p">
               <span><i class="fas fa-tag"></i> Tag: </span>
               <a href="#">Tag 1,</a>
               <a href="#">Tag 2,</a>
               <a href="#">Tag 3,</a>
               <a href="#">Tag 4,</a>
               <a href="#">Tag 5</a>
            </p>


            <div class="clear40"></div>
            <div class="pro-relative">
               <div class="tit-pr">
                  <h3 class="bold clred nomargin text-uppercase">Sản phẩm cùng loại</h3>
               </div>
               <div class="clear40"></div>

               <div class="img-slider">

               <?php
                  if($id < 200){
                     $cate_id = 1;
                  }elseif($id < 300){
                     $cate_id = 2;
                  }elseif($id < 400){
                     $cate_id = 3;
                  }elseif($id < 500){
                     $cate_id = 4;
                  }elseif($id < 600){
                     $cate_id = 5;
                  }elseif($id < 700){
                     $cate_id = 6;
                  }else{
                     $cate_id = 7;
                  };
                  $sp_cungloai = $product -> samekind($cate_id);
                  if($sp_cungloai) {
                     while($result_cungloai = $sp_cungloai -> fetch_assoc()){
               	
               ?>
                  <div class="img-item">
                     <div class="home-product__item-img" style="background-image:url(./img/<?php echo $result_cungloai['hinh'];?>);"></div>
                     <div class="ct-item-pro">
                        <p class="bold"><?php echo $result_cungloai['sanpham_name'];?></p>
                        <div class="clear10"></div>
                        <div class="flex-bw">
                           <p class="old-pri"><?php echo number_format($result_cungloai['sanpham_gia'])." đ" ; ?></p>
                           <p class="new-pri bold"><?php echo number_format($result_cungloai['sanpham_giakhuyenmai'])." đ" ; ?></p>
                        </div>
                        <div class="clear10"></div>
                        <a href="chitietsp.php?proid=<?php echo $result_cungloai['sanpham_id'] ?>" class="addtocart">xem </a>
                     </div>
                  </div>


               <?php }}?>
               </div>
               

               <div class="clear20"></div>
            </div>
         </div>
      </div>
   </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
   $(document).ready(function(){
      $(".img-slider").slick({
         slidesToShow:3, // số phần tử
         slidesToScroll:1, //dich chuyển 1 phần tử
         infinite:true, //lặp
         autoplay: true,
         autoplaySpeed: 2000,
         prevArrow:"<i class='fa-solid fa-angle-left container-item-nav'></i>",
         nextArrow:"<i class='fa-solid fa-angle-right container-item-nav'></i>",
         responsive: [
         {
            breakpoint: 1024,
            settings: {
            slidesToShow: 3,
            slidesToScroll: 1,
            }
         },
         {
            breakpoint: 766,
            settings: {
            slidesToShow: 2,
            slidesToScroll: 2
            }
         },
         {
            breakpoint: 480,
            settings: {
            slidesToShow: 1,
            slidesToScroll: 1
            }
         }
      ]
      });
   });
</script>
<?php include 'inc/footer.php' ;?>


<?php
   include 'lib/session.php';
   Session::init();
   ob_start();
?>
<?php
   include_once 'lib/database.php';
   include_once 'helpers/format.php';
   spl_autoload_register(function($class){
   include_once "classes/".$class.".php";
});

   $db = new Database();
   $fm = new Format();
   $cs = new customer();
   $ct = new cart();
   $us = new user();
   $cat = new category();
   $brand = new brand();
   $product = new product();
   $ps = new post();
?>

<?php
   header("Cache-Control: no-cache, must-revalidate");
   header("Pragma: no-cache"); 
   header("Expires: Sat, 26 Jul 1997 05:00:00 GMT"); 
   header("Cache-Control: max-age=2592000");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang='vi'>
<head>
   <!-- SEO -->
   <meta name="description" content="{{$meta_desc}}">
   <meta name="keywords" content="{{$meta_keywords}}"/>
   <meta name="robots" content="INDEX,FOLLOW"/>
   <link  rel="canonical" href="{{$url_canonical}}" />
   <meta name="author" content="">
   <!-- //SEO -->
   <base href="http://localhost/ttp/">
   <meta http-equiv="Content-Type" content="text/php; charset=utf-8" />
   <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta content='index,follow,all' name='robots'/>
	<link rel="shortcut icon" href="./img/ttp.png" />
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
	<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700" rel="stylesheet">
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./css/lightslider.css" /> 
	<link rel="stylesheet" href="./css/nivo-slider.css">   
	<link rel="stylesheet" href="./css/style.css" />
	<title><?php echo $title ;?></title>
</head>
<body>
<header>
   <div class="container">
      <div class="flex-bw hide991" id="navbar">
         <a href="./" class="logo"><img src="img/ttp.png" width="50" height="50"></a>
         <div class="right-header">
            <div class="right-header-bottom" id="right-header-bottom">
               <ul class="ul-main-menu">
                  <li><a href="index.html">Trang Chủ</a> </></li>
                  <li class="has-sub"><a href="gioithieu.html">Giới Thiệu</a></li>
                  <li class="has-sub">
                     <a href="sanpham.html">Sản phẩm <i class="fas fa-sort-down"></i></a>
                     <ul class="ul-sub-menu menu-sanpham">
                        <?php
                           $showCat = $cat -> show_category();
                           if($showCat) {
                              while($result = $showCat ->fetch_assoc()) {
                        ?>
                           <li><a href="san-pham-theo-danh-muc/<?php echo $result['category_id'] ?>.html"><?php echo $result['category_name'] ?></a></li>
                        <?php }} ?>
                     </ul>
                  </li>
                  <li class="has-sub">
                     <a href="sanpham.html">Thương hiệu <i class="fas fa-sort-down"></i></a>
                     <ul class="ul-sub-menu thuonghieu">
                     <?php
                        $show_brand = $brand->show_brand();
                        if($show_brand){
                           while($result = $show_brand->fetch_assoc()){
                     ?>
                        <li class="position-relative li-sub-menu">
                           <a href="san-pham-theo-thuong-hieu/<?php echo $result['brand_id'] ?>.html"><?php echo $result['brand_name'] ?></a>
                           <ul class="ul-sub-menu-lv2">
                        <?php
                           $id_lv2 = $result['brand_id'];
                           $show_brand_lv2 = $brand->show_brand_lv2($id_lv2);
                           if($show_brand_lv2){
                              while($result_lv2 = $show_brand_lv2->fetch_assoc()){
                        ?>
                              <li class="li-sub-menu-lv2"><a class="link-sub-menu-lv2" href="san-pham-theo-thuong-hieu/<?php echo $result_lv2['brand_id'] ?>/<?php echo $result_lv2['brand_id_lv2'] ?>.html"><?php echo $result_lv2['brand_name_lv2']?></a></li>
                        <?php }} ?>
                           </ul>
                        </li>
                     <?php }} ?>
                     </ul>
                  </li>


                  <li class="has-sub position-relative">
                     <a href="giohang.html">
                        Giỏ hàng<i class="fa-solid fa-cart-shopping cart-icon"></i>
                     </a>

                     <?php
                        $check_cart = $ct -> check_cart();
                        if($check_cart){
                           $qty = session::get("qty");
                     ?>
                              <span class="giohang-span"><?php echo $qty; ?></span>
                     <?php } ?>
                  </li>

                  <?php 
                     $customer_id = Session::get('customer_id');
                     $check_order = $ct -> check_order($customer_id);
                     if($check_order) {
                  ?>
                     <li><a href="donhang.php">Đơn hàng</a></li>
                  <?php } ?>
                  
                  <?php
                     if(isset($_GET['customerid'])){
                        $delCart = $ct -> del_all_data_cart();
                        session::destroy();
                     }
                  ?>
                  <?php 
                     $login_check = Session::get('customer_login');
                     if($login_check) {
                  ?>
                  <li><a href="profile.php">Khách hàng</a></li>
                  <li><a href="?customerid=<?php echo Session::get('customer_id')?>" onclick="return confirm('Bạn có muốn đăng xuất không?')">Đăng Xuất</a></li>
               <?php }else{ ?>
                  <li><a href="login.html">Đăng Nhập</a></li>
               <?php } ?>

                  <form action="timkiem.php" method="POST">
                     <div class="search-toggle" id="search-toggle">
                        <input type="text"  placeholder="Bạn muốn mua gì?" name="search_product" id="search_product" required=""/>
                        <button class="btn search_button" name="search_button">
                           <i class="fa fa-search"></i>
                        </button>
                     </div>
                  </form>
               </ul>
            </div>
         </div>
      </div>


      <div class="show991 sider-bar-tablet">
            <div class="flex-bw">
            <span style="cursor:pointer;display: inline-block;color: #00502b; height:80px" class="sp-sn"><i class="fas fa-bars fa-2x" onclick="openNav()"></i></span>
            <span style="cursor:pointer;display: inline-block;color: #00502b; height:80px" class="sp-cn"><i class="fas fa-times fa-2x" onclick="closeNav()"></i></span>
            <a href="giohang.php" class="cart">
               <i class="fa-solid fa-cart-shopping giohang-icon-tablet"></i>
            </a>
         </div>
      <a href="./" class="logo"><img src="img/ttp.png"></a>
         <div id="mySidenav" class="sidenav">
            <form action="timkiem.php" method="POST">
               <div class="search-toggle" style="margin-top:30px">
                  <input type="text"  placeholder="Bạn muốn mua gì?" name="search_product" id="search_product" required=""/>
                     <button class="btn search_button" name="search_button" id="search_button">
                        <i class="fa fa-search"></i>
                     </button>
               </div>
            </form>


            <ul class="menu-mobile" id="accordion">
               <li><a href="./">Trang chủ</a></li>
               <li><a href="gioi-thieu.html">Giới thiệu</a></li>
               <li class="hassub-mb panel">
                     <p class="phelp"><a href="">Sản phẩm</a><a data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne" class="a-icon"><i class="fas fa-angle-down"></i></a></p>
                     <ul class="sub-menu-mb accordion-collapse panel-collapse collapse mobile-menu-list" id="flush-collapseOne" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                     <?php
                        $showCat = $cat -> show_category();
                        if($showCat) {
                           while($result = $showCat ->fetch_assoc()) {
                     ?>

                        <li><a href="productbycat.php?catid=<?php echo $result['category_id'] ?>"><?php echo $result['category_name'] ?></a></li>
                        <?php }} ?>
                     </ul>
               </li>
               <li class="hassub-mb panel">
                     <p class="phelp"><a href="?quanly=sanpham">Thương hiệu</a><a data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo" class="a-icon"><i class="fas fa-angle-down"></i></a></p>
                     <ul class="sub-menu-mb accordion-collapse panel-collapse collapse mobile-menu-list" id="flush-collapseTwo" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                     <?php
                        $show_brand = $brand->show_brand();
                        if($show_brand){
                           while($result = $show_brand->fetch_assoc()){
                     ?>
                        <li><a href="productbybrand.php?brandid=<?php echo $result['brand_id'] ?>"><?php echo $result['brand_name'] ?></a></li>
                        <?php }} ?>
                     </ul>
               </li>
               <?php 
                     $login_check = Session::get('customer_login');
                     if($login_check) {
                     echo "<li><a href='profile.php'>Khách hàng</a></li>";
                  ?>
                  <li><a href="?customerid=<?php echo Session::get('customer_id')?>" onclick="return confirm('Bạn có muốn đăng xuất không?')">Đăng Xuất</a></li>
               <?php }else{ ?>
                  <li><a href="login.php">Đăng Nhập</a></li>
               <?php } ?>
               <li><a href="">Tư vấn</a></li>
               <li><a href="">Liên hệ</a></li>
            </ul>
         </div>
      </div>
   </div>
</header>
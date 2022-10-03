<?php
   include_once 'lib/database.php';
   include_once 'helpers/format.php';
   spl_autoload_register(function($class){
      include_once "classes/".$class.".php";
   });
   $product = new product();
   if(isset($_GET['proid']) && $_GET['proid']!=NULL){
      $id = $_GET['proid'];
   }else{
      header('Location:404.php');
   }
   $get_product_details = $product -> get_details($id);
   if($get_product_details) {
      while($get_title = $get_product_details -> fetch_assoc()){
         $title = $get_title['sanpham_name'];
      }}
   include 'inc/header.php' ;
   if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
      $quantity = $_POST['quantity'];
      $addtoCart = $ct -> add_to_cart($quantity,$id);
   }
   include 'inc/sale.php' ;
?>

<section>
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
                    <?php echo  $addtoCart ?> <i>|</i> <span class='success'>Xem giỏ hàng <span
                            class='test'>>></span></span>
                </a>
                <?php }else{ echo "<div class='clear20'></div>" ;} ?>
                <div class='clear20'></div>
                <div class="col-12">
                    <?php
                     $get_product_details = $product -> get_details($id);
                     if($get_product_details) {
                        while($result_detils = $get_product_details -> fetch_assoc()){
               ?>
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-12">
                            <img class="img-chitiet" src="./img/<?php echo $result_detils['hinh']?>" alt=""
                                width="100%">
                        </div>
                        <div class="clear20 show767"></div>
                        <div class="col-md-6 col-sm-12 col-12 chitiet-right">
                            <h3 class="nomargin bold clred"><?php echo $result_detils ['sanpham_name'] ?></h3>
                            <div class="clear10"></div>
                            <p> <span>Thương hiệu:</span>
                                <span class="bold">Thương hiệu <?php echo $result_detils['brand_name'] ?></span> |
                                <span>Tình trạng: </span>
                                <span class="bold">
                                    <?php $tinhtrang = $result_detils ['sanpham_soluong'] ;
                              if($tinhtrang > 0){
                                 echo "Còn hàng";
                              }else {
                                 echo "Đã bán hết";
                              } ;?></span>
                            </p>
                            <div class="clear10"></div>
                            <div class="flex">
                                <h3 class="nomargin bold clred gia-sp">
                                    <?php echo number_format($result_detils['sanpham_giakhuyenmai'])." đ" ; ?><span
                                        class="donvi"></span></h3>
                                <p class="old-pri"><?php echo number_format($result_detils['sanpham_gia'])." đ" ; ?></p>
                            </div>
                            <hr>
                            <div class="thanhphan">
                                <?php echo $result_detils ['sanpham_chitiet'] ?>
                            </div>
                            <div class="clear20"></div>

                            <form action="" method="post">
                                <div class="thanhtoan">
                                    <div class="soluong">
                                        <span>Số lượng:</span><input type="number" class="center" name="quantity"
                                            min="1" value="1">
                                    </div>
                                    <div class="muahang but-buy">
                                        <i class="fas fa-cart-plus"></i>
                                        <input type="submit" class="" name="submit" value="Mua hàng">
                                    </div>
                                </div>
                            </form>
                            <div class="clear20"></div>
                            <div class="p-tuvan">
                                <p class="bold flex"><img src="img/tuvan.png"> Tư vấn & đặt hàng: <span
                                        class="clred">(04).6674.2332</span></p>
                            </div>
                            <div class="clear20"></div>
                        </div>
                    </div>

                    <div class="clear40"></div>

                    <div id="wraper">
                        <div class="tabs">
                            <ul class="nav-tabs">
                                <li class="active"><a href="#menu_1">HƯỚNG DẪN BẢO QUẢN</a></li>
                                <li><a href="#menu_2">THÔNG TIN LIÊN HỆ & ĐẶT HÀNG.</a></li>
                            </ul>
                            <div class="tab-content">
                                <div id="menu_1" class="tab-content-item">
                                    <h2>Hướng Dẫn Bảo Quản</h2>
                                    <p>- Bảo quản nơi thoáng mát, dùng trực tiếp sau khi mở nắp.</p>
                                    <p>- Lắc nhẹ trước khi dùng, ngon hơn khi uống lạnh</p>
                                    <p>- Phụ nữ có thai: Thai kỳ từ tháng thứ 4 và thai kỳ phải ổn định, ngày uống 1 hủ
                                    </p>
                                    <p>-Người lớn tuổi: Ít bệnh nền, chỉ nên sử dụng yến sào 3 lần/ tuần, mỗi lần 1 hủ.
                                        Nếu sức khỏe yếu kém, cơ thể không còn khả năng hoạt động nhiều có thể sử dụng
                                        mỗi ngày với liều lượng 2 hủ trong tháng đầu tiên. Sang tháng thứ 2 thì dùng
                                        cách 2 ngày/ lần. Tháng thứ 3 trở đi thì dùng 10gr yến 3 ngày/ lần.</p>

                                    <p>- Nên ăn yến sào vào lúc sáng sớm, bụng đói và trước bữa ăn sáng khoảng 30 phút.
                                        Hoặc có thể dùng trước khi đi ngủ khoảng 1 tiếng.</p>
                                </div>

                                <div id="menu_2" class="tab-content-item">
                                    <h2>THÔNG TIN LIÊN HỆ</h2>
                                    <p>- Thông tin liên hệ & Đặt hàng trên Website <a href="https://salanest.com/"
                                            title="trang chủ Salanest.com"> https://salanestcom/.</a></p>
                                    <p>- Điện thoại: (+84)47 28 38 38.</p>
                                    <p>- Email: ttpsalanest@gmail.com.</p>
                                    <p class="des-nh">* Hiện nay Salanest đang hỗ trợ 04 hình thức thanh toán, bao gồm:
                                    </p>
                                    <p>* Chuyển khoản ngân hàng</p>
                                    <p>* Thanh toán Vnpay</p>
                                    <p>* Thẻ ATM nội địa (Internet Banking)</p>
                                    <p>* Thanh toán khi nhận hàng (COD)</p>
                                    <p>- Thương hiệu Công Ty SX TM XNK TIẾN THINH PHÁT được xây dựng trên phương châm ,
                                        <u> Sản Phẩm Sạch, Chất lượng vàng” góp phần nâng cao sức khoẻ cho cộng
                                            đồng.</u>
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                    <?php } }?>

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
                                <div class="home-product__item-img"
                                    style="background-image:url(./img/<?php echo $result_cungloai['hinh'];?>);"></div>
                                <div class="ct-item-pro">
                                    <p class="bold item-name"><?php echo $result_cungloai['sanpham_name'];?></p>
                                    <div class="clear10"></div>
                                    <div class="flex-bw">
                                        <p class="old-pri">
                                            <?php echo number_format($result_cungloai['sanpham_gia'])." đ" ; ?></p>
                                        <p class="new-pri bold">
                                            <?php echo number_format($result_cungloai['sanpham_giakhuyenmai'])." đ" ; ?>
                                        </p>
                                    </div>
                                    <div class="clear10"></div>
                                    <a href="chi-tiet/<?php echo $result_cungloai['sanpham_id'] ?>.html"
                                        class="addtocart">xem sản phẩm </a>
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
</section>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
$(document).ready(function() {
    $(".img-slider").slick({
        slidesToShow: 5, // số phần tử
        slidesToScroll: 1, //dich chuyển 1 phần tử
        infinite: true, //lặp
        autoplay: true,
        autoplaySpeed: 2000,
        prevArrow: "<i class='fa-solid fa-angle-left container-item-nav'></i>",
        nextArrow: "<i class='fa-solid fa-angle-right container-item-nav'></i>",
        responsive: [{
                breakpoint: 1200,
                settings: {
                    slidesToShow: 4,
                    slidesToScroll: 1,
                }
            }, {
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
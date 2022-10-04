<?php
	include_once 'lib/database.php';
	include_once 'helpers/format.php';
	spl_autoload_register(function($class){
		include_once "classes/".$class.".php";
	});
	
	if(isset($_GET['catid']) && $_GET['catid']!=NULL){
		$id = $_GET['catid'];
	}
	$cat = new category();
	$namebycat = $cat -> get_name_by_cat($id);
	if($namebycat) {
		while($get_title = $namebycat -> fetch_assoc()){
		$title = $get_title['category_name'];
	}}else{
		$title = "Sản phẩm đang cập nhật";
	}
	
	include 'inc/header.php';
	include 'inc/sale.php';
?>
<section>
    <div class="main-breac">
        <div class="container">
            <span><a href="./" class="clblack">Trang chủ</a></span>
            <span style="margin: 0 7px;"><i class="fas fa-angle-right"></i></span>
            <span class="clpink">Sản phẩm</span>
        </div>
    </div>
    <div class="main-wraper">
        <div class="clear20"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-4 col-md-12 order-lg-1 order-md-2 order-2">
                    <div class="block-aside">
                        <h4 class="tit-aside"><i class="fas fa-list-ul"></i> DANH MỤC</h4>
                        <div class="ct-aside">
                            <?php 
						$showCat = $cat -> show_category();
						if($showCat){
							while($result_showCat = $showCat -> fetch_assoc()){
					?>
                            <a href="san-pham-theo-danh-muc/<?php echo $result_showCat['category_id'] ?>.html" class="
						<?php 
							if($id == $result_showCat['category_id']){
								echo "active";
							}
						?>"><img src="./img/diamond.png"><span><?php echo $result_showCat['category_name'] ?></span></a>
                            <?php }} ?>

                        </div>
                    </div>
                    <div class="block-aside">
                        <h4 class="tit-aside"><i class="fas fa-award"></i> THƯƠNG HIỆU</h4>
                        <div class="ct-aside">
                            <?php
						$show_brand = $brand->show_brand();
						if($show_brand){
							while($result_showBrand = $show_brand->fetch_assoc()){
					?>
                            <a href="san-pham-theo-thuong-hieu/<?php echo $result_showBrand['brand_id'] ?>.html"><img
                                    src="./img/diamond.png"><span><?php echo $result_showBrand['brand_name'] ?></span>
                                <ul class="brand_lv2_list">
                                    <?php
								$id_lv2 = $result_showBrand['brand_id'];
								$show_brand_lv2 = $brand->show_brand_lv2($id_lv2);
								if($show_brand_lv2){
									while($result_lv2 = $show_brand_lv2->fetch_assoc()){
							?>
                                    <li class="brand_lv2_item">
                                        <img
                                            src="./img/diamond.png"><span><?php echo $result_lv2['brand_name_lv2']?></span>
                                    </li>
                                    <?php } } ?>
                                </ul>
                            </a>
                            <?php }} ?>
                        </div>
                    </div>
                    <div class="block-aside">
                        <div class="center"><img src="img/qt.jpg"></div>
                    </div>
                    <div class="block-aside">
                        <h4 class="tit-aside"><i class="far fa-edit"></i> BÀI VIẾT MỚI NHẤT</h4>
                        <?php
						$get_post = $ps -> show_post();
						if($get_post){
						while($result = $get_post -> fetch_assoc()){
					?>
                        <div class="ct-aside">
                            <a href="bai-viet/<?php echo $result['baiviet_id'] ; ?>.html"><img
                                    src="./img/diamond.png"><span
                                    class="category-baiviet"><?php echo $result['baiviet_name'] ; ?></span></a>
                        </div>
                        <?php }} ?>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12 order-lg-2 order-md-1 order-1">
                    <?php
					$namebycat = $cat -> get_name_by_cat($id);
					if($namebycat) {
					$result_name = $namebycat -> fetch_assoc();
				?>
                    <h4 class="nomargin text-uppercase clredt">SẢN PHẨM
                        : <?php echo $result_name['category_name'] ?>
                    </h4><br><?php } ?>
                    <div class="clear20"></div>
                    <div class="row flex-wrap list-spc">
                        <?php
						$productbycat = $cat -> get_product_by_cat($id);
						if($productbycat) {
							while($result = $productbycat -> fetch_assoc()) {
					?>
                        <div class="col-xl-4 col-md-4 col-sm-6 col-xs-6 col-6">
                            <a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html"
                                title="<?php echo $result['sanpham_name'] ?>">
                                <div class="item-pro">
                                    <div class="home-product__item-img"
                                        style="background-image:url(./img/<?php echo $result['hinh']; ?>);"></div>
                                    <div class="ct-item-pro">
                                        <p class="bold"><a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html"
                                                class="clpink item-name"><?php echo $result['sanpham_name'] ?></a></p>
                                        <div class="clear10"></div>
                                        <div class="flex-bw">
                                            <p class="old-pri">
                                                <?php echo number_format($result['sanpham_gia'])." đ" ; ?></p>
                                            <p class="new-pri bold">
                                                <?php echo number_format($result['sanpham_giakhuyenmai'])." đ" ; ?></p>
                                        </div>
                                        <div class="clear10"></div>
                                        <a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html"
                                            class="addtocart">Xem Sản Phẩm</a>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <?php }}else{ ?>
                        <h4 class="nomargin text-uppercase clredt text-center">sản phẩm đang cập nhật</h4>
                        <div class="loader loader--style6" title="5">
                            <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
                                xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="24px" height="30px"
                                viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
                                <rect x="0" y="13" width="4" height="5" fill="#333">
                                    <animate attributeName="height" attributeType="XML" values="5;21;5" begin="0s"
                                        dur="0.6s" repeatCount="indefinite" />
                                    <animate attributeName="y" attributeType="XML" values="13; 5; 13" begin="0s"
                                        dur="0.6s" repeatCount="indefinite" />
                                </rect>
                                <rect x="10" y="13" width="4" height="5" fill="#333">
                                    <animate attributeName="height" attributeType="XML" values="5;21;5" begin="0.15s"
                                        dur="0.6s" repeatCount="indefinite" />
                                    <animate attributeName="y" attributeType="XML" values="13; 5; 13" begin="0.15s"
                                        dur="0.6s" repeatCount="indefinite" />
                                </rect>
                                <rect x="20" y="13" width="4" height="5" fill="#333">
                                    <animate attributeName="height" attributeType="XML" values="5;21;5" begin="0.3s"
                                        dur="0.6s" repeatCount="indefinite" />
                                    <animate attributeName="y" attributeType="XML" values="13; 5; 13" begin="0.3s"
                                        dur="0.6s" repeatCount="indefinite" />
                                </rect>
                            </svg>
                        </div>
                        <?php } ?>
                    </div>
                    <div class="clear20"></div>
                </div>
            </div>
        </div>
    </div>
</section>
<style>
.loader {
    margin: 0 0 2em;
    height: 100px;
    width: 20%;
    text-align: center;
    padding: 1em;
    margin: 0 auto 1em;
    display: inline-block;
    vertical-align: top;
}

svg path,
svg rect {
    fill: #42040c;
}
</style>
<?php
	include 'inc/footer.php';
?>
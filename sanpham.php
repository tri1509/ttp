<?php
$title = "Sản Phẩm";
include 'inc/header.php' ;?>
<?php include 'inc/sale.php' ;?>

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
				<?php 
					include 'inc/danhmuc.php';
				?>
				<div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12 order-lg-2 order-md-1 order-1">
				<h4 class="nomargin text-uppercase clredt">SẢN PHẨM</h4><br>
				<div class="clear20"></div>
				<div class="row flex-wrap list-spc">
					<?php
						$showProduct = $product -> get_all_product();
						if($showProduct) {
							while ($result = $showProduct ->fetch_assoc()) {
					?>
						<div class="col-xl-4 col-md-6 col-sm-6 col-xs-6 col-6">
							<a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html" title="<?php echo $result['sanpham_name'] ?>">
							<div class="item-pro">
								<div class="home-product__item-img" style="background-image:url(./img/<?php echo $result['hinh']; ?>);"></div>
								<div class="ct-item-pro">
									<p class="bold"><a href="chitietsp.php?proid=<?php echo $result['sanpham_id'] ?>" class="clpink item-name"><?php echo $result['sanpham_name'] ?></a></p>
									<div class="clear10"></div>
									<div class="flex-bw">
										<p class="old-pri"><?php echo number_format($result['sanpham_gia'])." đ" ; ?></p>
										<p class="new-pri bold"><?php echo number_format($result['sanpham_giakhuyenmai'])." đ" ; ?></p>
									</div>
									<div class="clear10"></div>
									<a href="chi-tiet/<?php echo $result['sanpham_id'] ?>.html" class="addtocart">Xem Sản Phẩm </a>
								</div>
							</div>
							</a>
						</div>
					<?php } }?>
				</div>
				<?php include 'inc/pagination.php' ;?>
				<div class="clear40"></div>
				</div>
			</div>
		</div>
	</div>
</section>
<?php include 'inc/footer.php' ;?>


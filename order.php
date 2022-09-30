<?php include 'inc/header.php' ;?>
<?php include 'inc/sale.php' ;?>
<div class="modal-thanhtoan">
    <section class="hinhthuc-thanhtoan">
        <h5 class="modal-title" id="exampleModalLabel">Chọn phương thức thanh toán :</h5>
        <div class="modal-body">
            <a href="online.php"><button class="snip1547"><span>Thanh toán Online</span></button></a>
            <a href="offline.php"><button class="snip1547"><span>Thanh toán khi nhận hàng</span></button></a>
        </div>
        <div class="shopleft">
            <a href="giohang.php">  <button class="custom-btn btn-7"><span>Quay lại giỏ hàng</span></button></a>
        </div>
    </section>
</div>
<section>
	<div class="main-breac">
		<div class="container">
			<span><a href="./" class="clblack">Trang chủ</a></span>
			<span style="margin: 0 7px;"><i class="fas fa-angle-right"></i></span>
			<span class="clpink">Giỏ hàng</span>
		</div>
	</div>   
	<div class="main-wraper">
		<div class="clear20"></div>
		<div class="container">
			<div class="bang-giohang">
				<h3 class="nomargin bold clred">Giỏ hàng</h3>
				<?php 
					if(isset($update_quantity_cart)){ 
						echo $update_quantity_cart ; 
					}elseif(isset($cartDel)){
						echo $cartDel;
					}else{
						echo "<div class='clear40'></div>";
					}
				?>
				<?php
					$check_cart = $ct -> check_cart();
					if($check_cart){
				?>
			<form action="" method="POST">
				<table>
					<tr class="hide480">
					<th style="width: 10%;">STT</th>
					<th style="width: 20%;">Hình ảnh</th>
					<th style="width: 30%">Tên sản phẩm</th>
					<th style="width: 25%;">Số lượng</th>
					<th style="width: 20%;">Giá</th>
					<th style="width: 30%;">Giá tổng</th>
					<th style="width: 10%;">Xóa</th>
					</tr>
					<?php
						$get_product_cart = $ct -> get_product_cart();
						$subTotal = 0;
						$total = 0;
						$gtotal = 0;
						$qty = 0;
						if($get_product_cart){
							$i = 0;
							while($result = $get_product_cart -> fetch_assoc()){
								$total = $result['price'] * $result['quantity'];
								$qty = $qty + $result['quantity'];
								$subTotal += $total ;
								$gtotal = $subTotal;
								$i++;
						?>
					<tr>
						<td><?php echo $i ?></td>
						<td><img src="./img/<?php echo $result['img'] ?>" width="120" height="120"></td>
						<td><p class="bold"><?php echo $result['productName'] ?></p></td>
						<td data-label="số lượng :">
							<form action="" method="post">
								<input  type="hidden" name="cartId" value="<?php echo $result['cartId'] ?>"/>
								<input class="cart-sl" type="number" name="quantity" value="<?php echo $result['quantity'] ?>" min="1"/>
								<input class="cart-up" type="submit" name="capnhat" value="Cập nhật"/>
							</form>
						</td>
						<td data-label="Giá :"><p class="bold"><?php echo number_format($result['price'])."đ"  ?></p></td>
						<td data-label="giá tổng :"><p class="bold"><?php echo number_format($total)."đ"; ?></p></td>
						<td><a  href="?cartid=<?php echo $result['cartId'] ?>" onclick="return confirm('Bạn có muốn xoá sản phẩm này không?')" class="clred"><i class="fas fa-trash-alt"></i></a></td>
					</tr>

					<?php }} ?>
				</table>
			</form>
				<table style="float:right;text-align:left;" width="40%">
					<tr>
					<div class="clear40"></div>
					<h3 class="nomargin bold clredt">Tổng tiền thanh toán</h3>
					<div class="clear20"></div>
					<h4 class="nomargin bold clred">
						<?php 
							echo number_format($gtotal).'vnđ';
							session::set('qty',$qty);
						?>
					</h4>
					<div class="clear20"></div>
				</table>
			<?php }else{ ?>
				<div class="container">
					<div class="row">
						<div class="col-xl-6">
							<img src="img/empty-cart.webp" alt="giỏ hàng trống" title="giỏ hàng trống">
						</div>
						<div class="col-xl-6">
							<h1 class="text-success">[Thành viên mới] Tôi có thể mua hàng Salanest mà không cần tài khoản Salanest không?</h1>
							.<p><strong>* Không</strong> Hiện tại, <a href="gioithieu.php" title="giới thiệu về salanest">Salanest</a>  không hỗ trợ khách hàng đặt hàng và thanh toán cho đơn hàng <a href="gioithieu.php" title="giới thiệu về công ty salanest">Salanest</a>  mà không cần sử dụng tài khoản Salanest.</p>
							<p><strong>* Bạn cần</strong> <a href="dangky.php" title="Đăng ký tài khoản mua hàng">đăng ký một tài khoản Salanest</a>  và sử dụng để mua sắm và thanh toán đơn hàng trên Salanest. Điều này sẽ giúp Salanest nhận được những thông tin chính xác liên quan đến đơn hàng của bạn, ví dụ như địa chỉ nhận hàng hoặc phương thức thanh toán,... </p>
							<div class="clear60"></div>
							<hr>
						</div>
					</div>
				</div>
			<?php
				echo "<span>*Cập nhật giỏ hàng để lưu đơn hàng & xem thông tin đơn hàng.</span>";
			}
			?>
			</div>

			<div class="clear40"></div>
			<div class="shopping">
				<div class="shopleft">
					<a href="sanpham.php"><button class="custom-btn btn-7"><span>Quay lại cửa hàng</span></button></a>
				</div>
				<div class="shopright">
					<a href="login.php"><button type="button" class="check-out-btn">Thanh toán</button></a>
				</div>
			</div>
			<div class="clear40"></div>
</section>

<?php include 'inc/footer.php' ;?>


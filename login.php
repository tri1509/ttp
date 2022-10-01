<?php
  $title = "Đăng nhập";
	include 'inc/header.php';
	include 'inc/sale.php';
?>
<?php 
	$login_check = Session::get('customer_login');
	if($login_check) {
		header('Location:order.html');
	}
?>

<?php  

// đăng nhập
	if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['login'])) {
		$loginCustomer = $cs->login_customer($_POST);
}
?>

<div id="form_login">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <section class="">
          <div class="px-4 py-5 px-md-5 text-lg-start" style="background-color: hsl(0, 0%, 96%)">
            <div class="container">
              <div class="row gx-lg-5 align-items-center text-center">
                <div class="col-lg-6 mb-5 mb-lg-0">
                  <h1 class="my-5 display-3 fw-bold ls-tight">
                      Giới Thiệu <br>
                      <span class="text-primary">Tiến Thịnh Phát</span>
                    </h1>
                    <p style="color: hsl(217, 10%, 50.8%)">
                      Công Ty SX TM XNK NGK TIẾN THỊNH PHÁT phát triển lĩnh vực sản xuất Yến sào, Bào ngư, Vi cá. Phát triển hệ thống showroom bán hàng trong cả nước và quốc tế. Định hướng phát triển thị trường năm 2020 đến 2025 sản phẩm yến sào thương hiệu " SALANEST " được định hình mang tầm kinh tế giá trị cao và phát triển tầm khu vực và quốc tế
                    </p>
                    <p><img src="img/ttp.png" alt=""></p>
                </div>
                <div class="col-lg-6 mb-5 mb-lg-0">
                  <div class="card">
                    <div class="clear20"></div>
                    <h5 class="color_login">ĐĂNG NHẬP</h5>
                    <div class="card-body py-5 px-md-5">
                      <?php
                          if(isset($loginCustomer))
                          {echo $loginCustomer;}
                      else{
                          echo "<div class='clear20'></div>
                          ";
                          } 
                        ?>
                        <div class="information-wrapper">
                        <form action="" method="post">
                          <div class="form-label-group">
                            <input type="text" id="inputUserame" name="email" class="form-control" placeholder="Tên Đăng Nhập & Tài Khoản" required autofocus>
                            <label for="inputUserame">Tên Đăng Nhập & Tài Khoản</label>
                          </div>
                          <div class="form-label-group position-relative">
                            <input name="password" type="password" id="inputPassword" class="form-control toggle-pass-focus" placeholder="Password" required>
                            <div class="toggle-pass" onclick="togglePass()">
                              <i class="eye eye-open fa-solid fa-eye" id="open"></i>
                              <i class="eye eye-close fa-solid fa-eye-slash" id="close"></i>
                            </div>
                            <label for="inputPassword">Password</label>
                          </div>
                          <hr>
                          <input class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Đăng Nhập" name="login" style="	border-radius: 10px;">
                          <p>Bạn mới biết đến Tiến Thịnh Phát ?
                            <a class="d-block text-center mt-2 small" href="dangky.html" style="font-size:20px">Đăng ký</a></p>
                            <a class="d-block text-center mt-2 small" href="restore.html" style="font-size:15px">Bạn quên mật khẩu ?</a></p>
                          <hr class="my-4">
                      </form>
                        </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
  </div>
</div>
<?php 	include 'inc/footer.php';?>




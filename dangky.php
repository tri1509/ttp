<?php
  $title = "Đăng ký";
	include 'inc/header.php';
  include 'inc/sale.php';

?>
<?php
// đăng ký
	if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
		$insertCustomer = $cs->insert_customer($_POST);
}
?>
<div id="form_login">
  <div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
          <section class="">
            <div class="px-4 py-5 px-md-5 text-center text-lg-start" style="background-color: hsl(0, 0%, 96%)">
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
                  <div class="card text-center">
                  <div class='clear20'></div>
                      <h5 class="color_login">Đăng Ký</h5>
                      <div class="card-body py-5 px-md-5">
                        <?php
                          if(isset($insertCustomer))
                          {echo $insertCustomer;}
                      else{
                          echo "<div class='clear20'></div>
                          ";
                          } 
                        ?>
                        <div class="information-wrapper">
                          <form action="" method="post">
                              <div class="form-label-group">
                                <input name="name" type="text" id="inputUserame" class="form-control" placeholder="Tên Đăng Nhập & Tài Khoản" required autofocus>
                                <label for="inputUserame">Tên Đăng Nhập & Tài Khoản</label>
                              </div>
  
                              <div class="form-label-group">
                                <input name="email" type="email" id="inputEmail" class="form-control" placeholder="Email" required>
                                <label for="inputEmail">Email</label>
                              </div>
  
                              
                              <div class="form-label-group">
                                <input name="zipcode" type="text" id="inputEmail" class="form-control" placeholder="sdt" required>
                                <label for="inputEmail">Số điện thoại</label>
                              </div>
                            
                              <div class="form-label-group">
                                        <input type="text" class="form-control" placeholder="Địa chỉ" name="address" required="">
                                        <label for="inputEmail">Địa Chỉ Đặt Hàng & Giao Hàng</label>
                                        <i class="i_color"># Bạn ghi rõ thành phố, quận/ huyện để shop tiện giao hàng nhé !!! Tránh trường hợp giao hàng sai địa chỉ !!!</i>
                              </div>
                              <div class="form-label-group position-relative">
                                <input name="restorepass" type="password" id="inputPassword" class="form-control toggle-pass-focus" placeholder="Password" required>
                                <div class="toggle-pass" onclick="togglePass()">
                                      <i class="eye eye-open fa-solid fa-eye" id="open"></i>
                                      <i class="eye eye-close fa-solid fa-eye-slash" id="close"></i>
                                    </div>
                                <label for="inputPassword">Password</label>
                              </div>
                              
                              <div class="form-label-group position-relative">
                                <input type="password" id="inputPassword2" class="form-control toggle-pass-focus" placeholder="Password" required>
                                <div class="toggle-pass" onclick="togglePass2()">
                                  <i class="eye eye-open fa-solid fa-eye" id="open2"></i>
                                  <i class="eye eye-close fa-solid fa-eye-slash" id="close2"></i>
                                </div>
                                <label for="inputPassword2">Nhập Lại password</label>
                                <span id="thongbao"></span>
                              </div> 
                              <input disabled name="submit" id="dangky" class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" value="Đăng Ký" style="	border-radius: 10px;">
                              <a class="d-block text-center mt-2 small" href="login.php" style="font-size:20px">Đăng Nhập</a>
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
<?php include 'inc/footer.php';?>

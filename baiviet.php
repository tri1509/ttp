<?php
    include_once 'lib/database.php';
    include_once 'helpers/format.php';
    spl_autoload_register(function($class){
        include_once "classes/".$class.".php";
    });
    $ps = new post();

    if(isset($_GET['postid']) && $_GET['postid']!=NULL){
        $id = $_GET['postid'];
    }

    $get_post = $ps -> get_post($id);

    if($get_post){
        while($get_title = $get_post -> fetch_assoc()){
            $title = $get_title['baiviet_name'];
    }}

    include 'inc/header.php';
    include 'inc/sale.php';
?>


<div class="container">
    <div class="row">
        <?php include 'inc/danhmuc.php';?>
        <?php
            $get_post = $ps -> get_post($id);
            if($get_post){
                while($result = $get_post -> fetch_assoc()){
        ?>
        <div class="col-xl-8 col-lg-8 col-md-12 order-lg-1 order-md-2 order-2">
            <div class="mota_baiviet">
                <div class="ten_baiviet text-center"><?php echo $result['baiviet_name'] ; ?></div>
                <div class="clear20"></div>
                <div class="info_tintuc text-center">
                    <i class="fa fa-calendar-alt"></i>
                    <span class="ngaytao">
                        <?php echo $result['baiviet_date'] ; ?><i class="fa fa-eye"></i><?php echo $result['baiviet_luotxem'] ; ?>
                    </span>
                </div>
                <div class="clear20"></div>
                <div class="mota"></div>
            </div>

            <div class="content_text">
                <?php echo $result['baiviet_noidung'] ; ?>
            </div>
            
            <div class="addthis_native_toolbox"></div>
        </div>
        <?php }} ?>
    </div>
</div>
</div>
</div>
<div class="container">
    <div class="cactinkhac">Tin liên quan</div>
    <ul class="khac">
        <li><i class="fa fa-angle-double-right"></i><a href="gioithieu.php" title="Giới Thiệu Công Ty SX TM XNK  NGK TIẾN THINH PHÁT  "> Giới Thiệu Công Ty SX TM XNK  NGK TIẾN THINH PHÁT  <span>(29/10/2019)</span></a>
        </li>
        <li><i class="fa fa-angle-double-right"></i><a href="gioithieu.php" title="CHÍNH SÁCH CHO ĐẠI LÝ BÁN HÀNG">  CHÍNH SÁCH CHO ĐẠI LÝ BÁN HÀNG<span>(26/07/2018)</span></a>
        </li>
    </ul>
</div>
<div id="fb-root"></div>
<?php include 'inc/footer.php';?>



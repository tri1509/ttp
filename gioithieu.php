<?php
$title = "Giới thiệu";
include 'inc/header.php';include 'inc/sale.php';?>
<div class="container">
  <div class="row">
    <?php  include 'inc/danhmuc.php';?>
    <div class="col-xl-8 col-lg-8 col-md-12 col-sm-12 col-xs-12 order-lg-2 order-md-1 order-1">
      <div id="right">
        <div class="tieude_giua"> Giới thiệu</div>
        <div class="wap_box_new clear">
<?php
          $get_post = $ps -> show_post();
          if($get_post){
            while($result = $get_post -> fetch_assoc()){
?>
          <div class="box_news clear">
            <div class="row">
              <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-xs-12 ">
                <a href="bai-viet/<?php echo $result['baiviet_id'] ; ?>.html" title="<?php echo $result['baiviet_name'] ; ?>"><img src="img/<?php echo $result['baiviet_img'] ; ?>" alt="<?php echo $result['baiviet_name'] ; ?>" /></a>
              </div>

              <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-xs-12">
                <div class="clear20"></div>
                <h3><a href="bai-viet/<?php echo $result['baiviet_id'] ; ?>.html" title="<?php echo $result['baiviet_name'] ; ?>"><?php echo $result['baiviet_name']?></a></h3>
                <p class="new_ngaydang"><i class="fa fa-calendar"></i> <?php echo $result['baiviet_date'] ; ?></p>
                <div class="clear20"></div>
                <div class="mota">
                    <?php echo $fm -> textShorten($result['baiviet_title'],300) ; ?>
                </div>
              </div>
            </div>
          </div>
          <div class="box_news clear"></div>
<?php }} ?>
        </div>
      </div>
    </div>
  </div>
</div>
<?php include 'inc/footer.php';?>
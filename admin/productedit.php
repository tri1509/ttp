<?php include 'inc/header.php';?>
<?php include 'inc/sidebar.php';?>
<?php include '../classes/brand.php';?>
<?php include '../classes/category.php';?>
<?php include '../classes/product.php';?>
<?php
	$pd = new product();	
    if(isset($_GET['productid']) && $_GET['productid']!=NULL){
        $id = $_GET['productid'];
    }
	if($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['submit'])) {
		$updateProduct = $pd->update_product($_POST,$_FILES,$id);
	}
?>

<div class="grid_10">
    <div class="box round first grid">
        <h2>Sửa sản phẩm</h2>
        <div class="block">    
            <?php 
                if(isset($updateProduct)){echo $updateProduct ;}
            ?>  
            <?php
                $get_product_by_id = $pd->getproductbyId($id);
                if($get_product_by_id){
                    while($result_product = $get_product_by_id->fetch_assoc()){

            ?>
        <form action="" method="post" enctype="multipart/form-data">
            <table class="form">
                <tr>
                    <td>
                        <label>Tên sản phẩm</label>
                    </td>
                    <td>
                        <input type="text" value="<?php echo $result_product['productName'] ?>" class="medium" name="productName" />
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Danh mục</label>
                    </td>
                    <td>
                        <select id="select" name="category">
                            <option>-----Chọn đi bà dà-----</option>
                            <?php 
                                $cat = new category();
                                $catList = $cat -> show_category();
                                if($catList){
                                    while($result = $catList ->fetch_assoc() ){
                                
                            ?>
                                <option
                                <?php 
                                    if($result['catId'] == $result_product['catId']) {
                                        echo "selected";
                                    }
                                ?>
                                value="<?php echo $result['catId'] ?>">
                                    <?php echo $result['catName'] ?>
                                </option>
                            <?php } } ?>
                        </select>
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Thương hiệu</label>
                    </td>
                    <td>
                        <select id="select" name="brand">
                            <option>-----Chọn đi bà dà-----</option>
                            <?php 
                                $brand = new brand();
                                $brandList = $brand -> show_brand();
                                if($brandList){
                                    while($result = $brandList ->fetch_assoc() ){
                                
                            ?>
                                <option
                                <?php 
                                    if($result['brandId'] == $result_product['brandId']) {
                                        echo "selected";
                                    }
                                ?>
                                value="<?php echo $result['brandId'] ?>">
                                    <?php echo $result['brandName'] ?>
                                </option>
                            <?php } } ?>
                        </select>
                    </td>
                </tr>
				
				 <tr>
                    <td style="vertical-align: top; padding-top: 9px;">
                        <label>Mô tả</label>
                    </td>
                    <td>
                        <textarea class="tinymce" name="product_desc"><?php echo $result_product['product_desc'] ?></textarea>
                    </td>
                </tr>
				<tr>
                    <td>
                        <label>Giá</label>
                    </td>
                    <td>
                        <input type="text" value="<?php echo $result_product['price'] ?>" class="medium" name="price" />
                    </td>
                </tr>
            
                <tr>
                    <td>
                        <label>Tải ảnh lên</label>
                    </td>
                    <td>
                        <img src="uploads/<?php echo $result_product['img'] ?>" alt="" width='150' height='120'><br>
                        <input type="file" name="img" />
                    </td>
                </tr>
				
				<tr>
                    <td>
                        <label>Loại hàng</label>
                    </td>
                    <td>
                        <select id="select" name="type">
                            <?php 
                                if($result_product['types'] == 0){
                            ?>
                                <option  value="1">Nổi bật</option>
                                <option selected value="0">Thường</option>
                            <?php }else{ ?>
                                <option selected value="1">Nổi bật</option>
                                <option value="0">Thường</option>
                            <?php } ?>
                        </select>
                    </td>
                </tr>

				<tr>
                    <td></td>
                    <td>
                        <input type="submit" name="submit" Value="Cập nhật" />
                    </td>
                </tr>
            </table>
            </form>
            <?php } } ?>
        </div>
    </div>
</div>
<!-- Load TinyMCE -->
<script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function () {
        setupTinyMCE();
        setDatePicker('date-picker');
        $('input[type="checkbox"]').fancybutton();
        $('input[type="radio"]').fancybutton();
    });
</script>
<!-- Load TinyMCE -->
<?php include 'inc/footer.php';?>



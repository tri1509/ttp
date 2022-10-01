<?php 
    $product_all = $product -> getproduct_main();
    $product_count = mysqli_num_rows($product_all);
    $product_button = $product_count / 9;
    if(!isset($_GET['trang'])) {
        $trang = 1;
    }else{
        $trang = $_GET['trang'];
    }
?>
<ul class="pagination home-product__pagination">
    <li class="pagination-item">
        <a href="sanpham.php?trang=<?php echo $trang - 1 ?>" class="pagination-item__link 
        <?php if($trang == 1){
            echo "disabled"; 
        }
        ?>
        ">
            <i class="fa-solid fa-chevron-left page-left"></i>
        </a>
    </li>

    <?php
        for($i=1 ; $i <= ceil($product_button) ; $i++) {
    ?>

    <li class="pagination-item pagination-item__link-<?php if ($i == $trang) { echo "acctive"; } ?> ">
        <a href="sanpham.php?trang=<?php echo $i ?>" class="pagination-item__link">
            <?php echo $i ; ?>
        </a>
    </li>

    <?php  } ?>
    <li class="pagination-item">
        <a href="sanpham.php?trang=<?php echo $trang + 1 ?>" class="pagination-item__link
        <?php if($trang >= ceil($product_button)){
            echo "disabled"; 
        }
        ?>
        ">
            <i class="fa-solid fa-chevron-right page-right"></i>
        </a>
    </li>
</ul>

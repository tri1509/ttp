<?php
    $filepath = realpath(dirname(__FILE__));
    include_once ($filepath. '/../lib/database.php');
    include_once ($filepath. '/../helpers/format.php');
?>
<?php
    class brand {

        private $db;
        private $fm;
        public function __construct() {
            $this->db = new Database();
            $this->fm = new Format();
        }
        public function insert_brand($brand_name){
            $brand_name = $this->fm->validation($brand_name);
            $brand_name = mysqli_real_escape_string($this->db->link,$brand_name);
            if(empty($brand_name)) {
                $alert = "<span class='notok'>Không để trống</span>";
                return $alert;
            }else{
                $query = "INSERT INTO tbl_brand(brand_name) VALUES('$brand_name')";
                $result = $this->db->insert($query);
                if($result){
                    $alert= "<span class='success'>Them thanh cong</span>";
                    return $alert;
                }else{
                    $alert= "<span class='ok'>That bai</span>";
                    return $alert;

                }
            }
        }

        public function show_brand(){
            $query = "SELECT * FROM tbl_brand ORDER BY brand_id DESC";
            $result = $this->db->select($query);
            return $result;
        }

        public function show_brand_lv2($id_lv2){
            $query = "SELECT * FROM tbl_brand_lv2 WHERE brand_id = '$id_lv2' AND tinhtrang = '1' ORDER BY brand_id_lv2 DESC";
            $result = $this->db->select($query);
            return $result;
        }

        public function getbrandbyId($id){
            $query = "SELECT * FROM tbl_brand WHERE brand_id = '$id'";
            $result = $this->db->select($query);
            return $result;
        }

        public function update_brand($brand_name,$id) {
            $brand_name = $this->fm->validation($brand_name);
            $brand_name = mysqli_real_escape_string($this->db->link,$brand_name);
            $id = mysqli_real_escape_string($this->db->link,$id);
            if(empty($brand_name)) {
                $alert = "<span class='notok'>Sửa thất bại</span>";
                return $alert;
            }else{
                $query = "UPDATE tbl_brand SET brand_name = '$brand_name' WHERE brand_id='$id'";
                $result = $this->db->update($query);
                if($result){
                    $alert= "<span class='success'>Đã cập nhật</span>";
                    return $alert;
                }else{
                    $alert= "<span class='ok'>Cập nhật thất bại</span>";
                    return $alert;

                }
            }
        }

        
        public function del_brand($id) {
            $query = "DELETE FROM tbl_brand WHERE brand_id = '$id'";
            $result = $this->db->delete($query);
            if($result){
                $alert= "<span class='success'>Đã xoá</span>";
                return $alert;
            }else{
                $alert= "<span class='ok'>Chưa xoá được</span>";
                return $alert;
            }
        }

        public function get_product_by_brand($id) {
            $query = "SELECT * FROM tbl_sanpham WHERE brand_id = '$id' ORDER BY brand_id ASC";
            $result = $this->db->select($query);
            return $result;
        }

        public function get_name_by_brand($id) {
            $query = 
            "SELECT tbl_sanpham.*,tbl_brand.brand_name, tbl_brand.brand_id
            FROM tbl_sanpham,tbl_brand
            WHERE tbl_sanpham.brand_id = tbl_brand.brand_id
            AND tbl_sanpham.brand_id = '$id' ";
            $result = $this->db->select($query);
            return $result;
        }

        public function get_product_by_brand_lv2($id,$idlv2) {
            $query = "SELECT * FROM tbl_sanpham WHERE brand_id = '$id' AND brand_id_lv2 = '$idlv2' ORDER BY brand_id ASC";
            $result = $this->db->select($query);
            return $result;
        }

        public function get_name_by_brand_lv2($id,$idlv2) {
            $query = 
            "SELECT tbl_sanpham.*,tbl_brand_lv2.brand_name_lv2, tbl_brand_lv2.brand_id_lv2
            FROM tbl_sanpham,tbl_brand_lv2
            WHERE tbl_sanpham.brand_id = tbl_brand_lv2.brand_id
            AND tbl_sanpham.brand_id_lv2 = tbl_brand_lv2.brand_id_lv2
            AND tbl_sanpham.brand_id = '$id'
            AND tbl_sanpham.brand_id_lv2 = '$idlv2' ";
            $result = $this->db->select($query);
            return $result ;
        }
        
    }
?>

<?php
    $filepath = realpath(dirname(__FILE__));
    include_once ($filepath. '/../lib/database.php');
    include_once ($filepath. '/../helpers/format.php');
?>
<?php
    class post {
        private $db;
        private $fm;
        public function __construct() {
            $this->db = new Database();
            $this->fm = new Format();
        }

        public function get_post($id){
            $query = "SELECT * FROM tbl_baiviet WHERE baiviet_id='$id' ";
            $result = $this->db->select($query);
            return $result;
        }

        public function show_post(){
            $query = "SELECT * FROM tbl_baiviet ORDER BY baiviet_id DESC" ;
            $result = $this->db->select($query);
            return $result;
        }
    }
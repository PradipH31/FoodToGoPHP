<?php
    class MenuItem{

        private $conn;
        private $table_name = "menu_items";

        public $id;
        public $name;
        public $description;
        public $price;
        public $isSpecial;
        public $imageLink;

        public function __construct($db)
        {
            $this->conn = $db;
        }
    }
?>
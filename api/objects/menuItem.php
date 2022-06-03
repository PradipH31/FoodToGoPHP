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

        function read() {

            $query = "SELECT m.id, m.name, m.description, m.price, m.is_special, m.is_special, m.image_link
            FROM "
                . $this->table_name . " m ORDER BY m.id ASC";

            $stmt = $this->conn->prepare($query);

            $stmt->execute();

            return $stmt;

        }
    }
?>
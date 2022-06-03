<?php
// required headers
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
  
include_once '../config/database.php';
include_once '../objects/menuItem.php';

$database = new Database();
$db = $database->getConnection();

$menuItem = new MenuItem($db);

$stmt = $menuItem->read();
$num = $stmt->rowCount();

if($num > 0){

    $menuItems_arr = array();
    $menuItems_arr["records"]=array();

    while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
        extract($row);

        $menuItem_item = array(
            "id" =>  $id,
            "name" => $name,
            "description" => html_entity_decode($description),
            "price" => $price,
            "isSpecial" => $is_special,
            "imageLink" => $image_link
        );

        array_push($menuItems_arr["records"], $menuItem_item);
    }

    http_response_code(200);

    echo json_encode($menuItems_arr);

} else {

    http_response_code(404);

    echo json_encode(
        array("message" => "No products found.")
    );

}
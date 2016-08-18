
<?php


require("bd.php");
//echo "Connected successfully";

$id = mysqli_escape_string ($conn,$_GET["id"]);
$precio = mysqli_escape_string ($conn,$_GET["precio"]);

$query = "Update  `ps_product` set price=".$precio." where id_product =".$id;
$result = mysqli_query($conn,$query);
$query = "Update  `ps_product_shop` set price=".$precio." where id_product =".$id;
$result = mysqli_query($conn,$query);
echo $query;
echo mysqli_error ( $conn);
?>


<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "silverzum";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully";

$id = mysqli_escape_string ($conn,$_GET["id"]);
$precio = mysqli_escape_string ($conn,$_GET["precio"]);

$query = "Update  `ps_product` set price=".$precio." where id_product =".$id;
$result = mysqli_query($conn,$query);
echo $query;
?>

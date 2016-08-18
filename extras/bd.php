
<?php

$servername = "localhost";
$username = "silverzum";
$password = "1nTh3M00d";
$dbname = "silverzum";
/*
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "silverzum";
*/
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
?>

<html>
<head>
<style>
td{
	
    padding: 20px;
    text-align: center;
}

</style>

<script>
function showHint(str) {
    if (str.length == 0) { 
        document.getElementById("txtHint").innerHTML = "";
        return;
    } else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
            }
        };
        xmlhttp.open("GET", "gethint.php?q=" + str, true);
        xmlhttp.send();
    }
}
</script>

</head>
<body>
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

$from = ((isset($_GET["pag"])?$_GET["pag"]:0)-1)*50;


$result = mysqli_query($conn,"SELECT a.`id_product`, b.`name` AS `name`, `reference`, a.`price` AS `price`, sa.`active` AS `active` , shop.`name` AS `shopname`, a.`id_shop_default`, image_shop.`id_image` AS `id_image`, cl.`name` AS `name_category`, sa.`price`, 0 AS `price_final`, a.`is_virtual`, pd.`nb_downloadable`, sav.`quantity` AS `sav_quantity`, sa.`active`, IF(sav.`quantity`<=0, 1, 0) AS `badge_danger` FROM `ps_product` a LEFT JOIN `ps_product_lang` b ON (b.`id_product` = a.`id_product` AND b.`id_lang` = 1 AND b.`id_shop` = 1) LEFT JOIN `ps_stock_available` sav ON (sav.`id_product` = a.`id_product` AND sav.`id_product_attribute` = 0 AND sav.id_shop = 1 AND sav.id_shop_group = 0 ) JOIN `ps_product_shop` sa ON (a.`id_product` = sa.`id_product` AND sa.id_shop = a.id_shop_default) LEFT JOIN `ps_category_lang` cl ON (sa.`id_category_default` = cl.`id_category` AND b.`id_lang` = cl.`id_lang` AND cl.id_shop = a.id_shop_default) LEFT JOIN `ps_shop` shop ON (shop.id_shop = a.id_shop_default) LEFT JOIN `ps_image_shop` image_shop ON (image_shop.`id_product` = a.`id_product` AND image_shop.`cover` = 1 AND image_shop.id_shop = a.id_shop_default) LEFT JOIN `ps_image` i ON (i.`id_image` = image_shop.`id_image`) LEFT JOIN `ps_product_download` pd ON (pd.`id_product` = a.`id_product`) WHERE 1 ORDER BY a.`id_product` ASC LIMIT ".$from.", 50");
?>

<table border=1>
    <th>
    Editar
    </th>
    <th>
    ID
    </th>
    <th>
    Nombre
    </th>
    <th>
    Precio
    </th>
    <th>
    Imagen
    </th>
    <th colspan=2>
    Action
    </th>
<?php
function path($id){
	$r="../img/p/";
	for($i=0;$i<strlen($id);$i++){
		$r.=$id[$i]."/";
	}
	$r.=$id.".jpg";
	return $r;
}


while($row = mysqli_fetch_array($result))
{
    ?>
    <tr>
        <td>
             <input type="checkbox" name="product" value="  <?php
                echo $row['id_product'];
            ?>
        </td>"> 
        </td>
        <td>
            <?php
                echo $row['id_product'];
            ?>
        </td>
        <td>
            <?php
                echo $row['name'];
            ?>
        </td>

        <td>
            <?php
                echo $row['price'];
            ?>
        </td>
        <td><img width="200px" src="
            <?php
                echo path($row['id_image']);
            ?>"/>
        </td>
        <td>
            edit
        </td>
        <td>
            delete
        </td>
    </tr>
<?php
}
?>


</table>



</body>
</html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<?php

require "bd.php";
 
//echo "Connected successfully";

$num = ((isset($_GET["num"])?$_GET["num"]:50));
$current = isset($_GET["pag"])?$_GET["pag"]:1;
$from = ($current-1)*$num;


$result = mysqli_query($conn,"SELECT a.`id_product`, b.`name` AS `name`, `reference`, a.`price` AS `price`, sa.`active` AS `active` , shop.`name` AS `shopname`, a.`id_shop_default`, image_shop.`id_image` AS `id_image`, cl.`name` AS `name_category`, sa.`price`, 0 AS `price_final`, a.`is_virtual`, pd.`nb_downloadable`, sav.`quantity` AS `sav_quantity`, sa.`active`, IF(sav.`quantity`<=0, 1, 0) AS `badge_danger` FROM `ps_product` a LEFT JOIN `ps_product_lang` b ON (b.`id_product` = a.`id_product` AND b.`id_lang` = 1 AND b.`id_shop` = 1) LEFT JOIN `ps_stock_available` sav ON (sav.`id_product` = a.`id_product` AND sav.`id_product_attribute` = 0 AND sav.id_shop = 1 AND sav.id_shop_group = 0 ) JOIN `ps_product_shop` sa ON (a.`id_product` = sa.`id_product` AND sa.id_shop = a.id_shop_default) LEFT JOIN `ps_category_lang` cl ON (sa.`id_category_default` = cl.`id_category` AND b.`id_lang` = cl.`id_lang` AND cl.id_shop = a.id_shop_default) LEFT JOIN `ps_shop` shop ON (shop.id_shop = a.id_shop_default) LEFT JOIN `ps_image_shop` image_shop ON (image_shop.`id_product` = a.`id_product` AND image_shop.`cover` = 1 AND image_shop.id_shop = a.id_shop_default) LEFT JOIN `ps_image` i ON (i.`id_image` = image_shop.`id_image`) LEFT JOIN `ps_product_download` pd ON (pd.`id_product` = a.`id_product`) WHERE 1 ORDER BY a.`id_product` ASC LIMIT ".$from.", ".$num."");






$count_t = mysqli_query($conn,"SELECT count(*) as count FROM `ps_product` a LEFT JOIN `ps_product_lang` b ON (b.`id_product` = a.`id_product` AND b.`id_lang` = 1 AND b.`id_shop` = 1) LEFT JOIN `ps_stock_available` sav ON (sav.`id_product` = a.`id_product` AND sav.`id_product_attribute` = 0 AND sav.id_shop = 1 AND sav.id_shop_group = 0 ) JOIN `ps_product_shop` sa ON (a.`id_product` = sa.`id_product` AND sa.id_shop = a.id_shop_default) LEFT JOIN `ps_category_lang` cl ON (sa.`id_category_default` = cl.`id_category` AND b.`id_lang` = cl.`id_lang` AND cl.id_shop = a.id_shop_default) LEFT JOIN `ps_shop` shop ON (shop.id_shop = a.id_shop_default) LEFT JOIN `ps_image_shop` image_shop ON (image_shop.`id_product` = a.`id_product` AND image_shop.`cover` = 1 AND image_shop.id_shop = a.id_shop_default) LEFT JOIN `ps_image` i ON (i.`id_image` = image_shop.`id_image`) LEFT JOIN `ps_product_download` pd ON (pd.`id_product` = a.`id_product`) WHERE 1 ORDER BY a.`id_product` ");

$count = mysqli_fetch_array($count_t)['count'];
$total_pags = ceil ($count/$num);


?>

<style>
td{
	
    /*padding: 20px;*/
    text-align: center;
}

table{
    width: 100%;
    font-size: 24pt;
}

.header{
    /*width: 100%;*/
    height: 10%;
    font-size: 27pt;
    color: white;
    background-color: rgb(78, 76, 76);
    font-family: arial;
    padding: 20px;
}
select{
    /*width: 100%;
    height: 10%;*/
    font-size: 27pt;
    color: rgb(20, 20, 20);
    background-color: rgb(135, 135, 135);
    font-family: arial;
    padding: 2px;
}

th{
	height:40px;
}

input{
    width: 100%;
    height: 100%;
    text-align: center;
    font-size: 24pt;
}

button{
    border-radius: 21px;
    width: 25%;
    height: 67px;
    background-color: #84cf8f;
    font-size: 20pt;
    font-weight: bold;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
	
function enviar(id, precio) {
    if (precio != null) { 
        $.ajax({
	  url: "actualizar.php?id="+id+"&precio="+precio
	}).done(function() {
	  $( "#check_"+id ).prop('checked', false);
	  habilitar(id,false);
	});
     }    
}

function habilitar(id,flag){
	$("#check_"+id).prop('checked', flag);
}

function todos(){
	var p = $("tr td input:checked");
	for (var i=0;i<p.length;i++){
		var $p = $(p[i]);
		var id = $p.val();
		var precio = $("#precio_"+id).val();
		enviar(id,precio);
	}
	alert("Los "+p.length+" productos de la página han sido guardados exitosamente");
}

function goto(o)
{
	var num =<?=$num?>;
	var pag = $(o).val();
	window.location.href = "?pag="+pag+"&num="+num;
}

function num(o){
	var num = $(o).val();
	var pag =1;
	window.location.href = "?pag="+pag+"&num="+num;
}

</script>

</head>
<body>


<div class="header">
	<div class="contain_pag">
			<label for="pagina">Página: </label>
			<select name="pagina" class="paginador" onchange='goto(this)'>
			  <?php
				for($i=1;$i<$total_pags;$i++){
					echo "<option value='".$i."' ".($i==$current?"selected='selected'":"")." >".$i."</option>";			
				}
			  ?>
			</select>
			<label for="number">Elementos por página: </label>
			<select name="number" class="number" onchange='num(this)'>
			
			  <?php
				$array = [10,20,50,100];
				for($i=0;$i<4;$i++){
					echo "<option value='".$array[$i]."' ".($array[$i]==$num?"selected='selected'":"")." >".$array[$i]."</option>";			
				}
			  ?>

			</select>
	</div>
	
	<div>
	Total de productos: <?=$count?>
	</div>
	<div>
	<button onclick='todos()'>Guardar Todo</button>
	</div>

</div>


<table border=1>
    <th hidden="true">
    Editar
    </th>
    <th hidden="true">
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
	$id=$row['id_product'];
    ?>
    <tr>
        <td hidden="true">
             <input  id="check_<?=$id?>" value="<?=$id?>" type="checkbox" name="product" onclick="habilitar(<?=$id?>)"/>
        </td> 
        </td>
        <td hidden="true">
            <?php
                echo $id;
            ?>
        </td>
        <td>
            <?php
                echo $row['name'];
            ?>
        </td>

        <td >
	<input id="precio_<?=$id?>" type="text" onfocus="habilitar(<?=$id?>,true)"  value="<?php
                echo number_format ($row['price'],2);
            ?>" />
        </td>
        <td><img width="200px" src="
            <?php
                echo path($row['id_image']);
            ?>"/>
        </td>
    </tr>
<?php
}
?>


</table>


<div class="header">
	<div class="contain_pag">
			<label for="pagina">Página: </label>
			<select name="pagina" class="paginador" onchange='goto(this)'>
			  <?php
				for($i=1;$i<$total_pags;$i++){
					echo "<option value='".$i."' ".($i==$current?"selected='selected'":"")." >".$i."</option>";			
				}
			  ?>
			</select>
			<label for="number">Elementos por página: </label>
			<select name="number" class="number" onchange='num(this)'>
			
			  <?php
				$array = [10,20,50,100];
				for($i=0;$i<4;$i++){
					echo "<option value='".$array[$i]."' ".($array[$i]==$num?"selected='selected'":"")." >".$array[$i]."</option>";			
				}
			  ?>

			</select>
	</div>
	
	<div>
	Total de productos: <?=$count?>
	</div>
	<div>
	<button onclick='todos()'>Guardar Todo</button>
	</div>

</div>


</body>
</html>
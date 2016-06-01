<?php /* Smarty version Smarty-3.1.19, created on 2016-06-01 14:53:05
         compiled from "C:\xampp\htdocs\joyeria\pdf\\invoice.shipping-tab.tpl" */ ?>
<?php /*%%SmartyHeaderCode:25233574f3d2147d669-20367176%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '312ee3b84738ebe387423677943ba2638d05cabc' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\pdf\\\\invoice.shipping-tab.tpl',
      1 => 1460131476,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '25233574f3d2147d669-20367176',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'carrier' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_574f3d21485366_36516831',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_574f3d21485366_36516831')) {function content_574f3d21485366_36516831($_smarty_tpl) {?>
<table id="shipping-tab" width="100%">
	<tr>
		<td class="shipping center small grey bold" width="44%"><?php echo smartyTranslate(array('s'=>'Carrier','pdf'=>'true'),$_smarty_tpl);?>
</td>
		<td class="shipping center small white" width="56%"><?php echo $_smarty_tpl->tpl_vars['carrier']->value->name;?>
</td>
	</tr>
</table>
<?php }} ?>

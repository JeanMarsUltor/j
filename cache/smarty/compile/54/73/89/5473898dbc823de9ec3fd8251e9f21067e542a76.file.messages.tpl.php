<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:30:13
         compiled from "C:\xampp\htdocs\joyeria\modules\themeconfigurator\views\templates\admin\messages.tpl" */ ?>
<?php /*%%SmartyHeaderCode:91576360b5a0a624-71275826%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5473898dbc823de9ec3fd8251e9f21067e542a76' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\modules\\themeconfigurator\\views\\templates\\admin\\messages.tpl',
      1 => 1464909923,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '91576360b5a0a624-71275826',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'id' => 0,
    'text' => 0,
    'class' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_576360b5b52d17_02772250',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_576360b5b52d17_02772250')) {function content_576360b5b52d17_02772250($_smarty_tpl) {?>

<div id="<?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['id']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
-response" <?php if (!isset($_smarty_tpl->tpl_vars['text']->value)) {?>style="display:none;"<?php }?> class="message alert alert-<?php if (isset($_smarty_tpl->tpl_vars['class']->value)&&$_smarty_tpl->tpl_vars['class']->value=='error') {?>danger<?php } else { ?>success<?php }?>">
	<div><?php if (isset($_smarty_tpl->tpl_vars['text']->value)) {?><?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['text']->value, ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<?php }?></div>
</div><?php }} ?>

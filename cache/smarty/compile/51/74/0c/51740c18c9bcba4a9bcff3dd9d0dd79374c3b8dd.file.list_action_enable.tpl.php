<<<<<<< HEAD
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:25:41
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\list\list_action_enable.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2242957635fa52d4695-53966842%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
=======
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-07 16:38:42
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\list\list_action_enable.tpl" */ ?>
<?php /*%%SmartyHeaderCode:876957573ee28a2ea9-40494261%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '51740c18c9bcba4a9bcff3dd9d0dd79374c3b8dd' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\admin631gsbait\\themes\\default\\template\\helpers\\list\\list_action_enable.tpl',
      1 => 1460131476,
      2 => 'file',
    ),
  ),
<<<<<<< HEAD
  'nocache_hash' => '2242957635fa52d4695-53966842',
=======
  'nocache_hash' => '876957573ee28a2ea9-40494261',
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'ajax' => 0,
    'enabled' => 0,
    'url_enable' => 0,
    'confirm' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
<<<<<<< HEAD
  'unifunc' => 'content_57635fa53040d4_23850706',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57635fa53040d4_23850706')) {function content_57635fa53040d4_23850706($_smarty_tpl) {?>
=======
  'unifunc' => 'content_57573ee290c649_14690428',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57573ee290c649_14690428')) {function content_57573ee290c649_14690428($_smarty_tpl) {?>
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
<a class="list-action-enable<?php if (isset($_smarty_tpl->tpl_vars['ajax']->value)&&$_smarty_tpl->tpl_vars['ajax']->value) {?> ajax_table_link<?php }?><?php if ($_smarty_tpl->tpl_vars['enabled']->value) {?> action-enabled<?php } else { ?> action-disabled<?php }?>" href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['url_enable']->value, ENT_QUOTES, 'UTF-8', true);?>
"<?php if (isset($_smarty_tpl->tpl_vars['confirm']->value)) {?> onclick="return confirm('<?php echo $_smarty_tpl->tpl_vars['confirm']->value;?>
');"<?php }?> title="<?php if ($_smarty_tpl->tpl_vars['enabled']->value) {?><?php echo smartyTranslate(array('s'=>'Enabled'),$_smarty_tpl);?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'Disabled'),$_smarty_tpl);?>
<?php }?>">
	<i class="icon-check<?php if (!$_smarty_tpl->tpl_vars['enabled']->value) {?> hidden<?php }?>"></i>
	<i class="icon-remove<?php if ($_smarty_tpl->tpl_vars['enabled']->value) {?> hidden<?php }?>"></i>
</a>
<?php }} ?>

<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:31:43
         compiled from "C:\xampp\htdocs\joyeria\modules\blockfacebook\blockfacebook.tpl" */ ?>
<?php /*%%SmartyHeaderCode:178615763610f8d46d6-60301957%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '12f1ddfbffb2009cec83f5b43df31ec181706915' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\modules\\blockfacebook\\blockfacebook.tpl',
      1 => 1464909915,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '178615763610f8d46d6-60301957',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'facebookurl' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_5763610f8e4ff1_02192071',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5763610f8e4ff1_02192071')) {function content_5763610f8e4ff1_02192071($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['facebookurl']->value!='') {?>
<div id="fb-root"></div>
<div id="facebook_block" class="col-xs-4">
	<h4 ><?php echo smartyTranslate(array('s'=>'Follow us on Facebook','mod'=>'blockfacebook'),$_smarty_tpl);?>
</h4>
	<div class="facebook-fanbox">
		<div class="fb-like-box" data-href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['facebookurl']->value, ENT_QUOTES, 'UTF-8', true);?>
" data-colorscheme="light" data-show-faces="true" data-header="false" data-stream="false" data-show-border="false">
		</div>
	</div>
</div>
<?php }?>
<?php }} ?>

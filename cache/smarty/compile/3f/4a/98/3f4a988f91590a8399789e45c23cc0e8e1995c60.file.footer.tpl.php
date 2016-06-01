<?php /* Smarty version Smarty-3.1.19, created on 2016-06-01 14:53:04
         compiled from "C:\xampp\htdocs\joyeria\pdf\\footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:27299574f3d20c8bb70-01191444%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3f4a988f91590a8399789e45c23cc0e8e1995c60' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\pdf\\\\footer.tpl',
      1 => 1460131476,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '27299574f3d20c8bb70-01191444',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'available_in_your_account' => 0,
    'shop_address' => 0,
    'shop_phone' => 0,
    'shop_fax' => 0,
    'shop_details' => 0,
    'free_text' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_574f3d20cca391_74819553',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_574f3d20cca391_74819553')) {function content_574f3d20cca391_74819553($_smarty_tpl) {?>
<table style="width: 100%;">
	<tr>
		<td style="text-align: center; font-size: 6pt; color: #444;  width:100%;">
			<?php if ($_smarty_tpl->tpl_vars['available_in_your_account']->value) {?>
				<?php echo smartyTranslate(array('s'=>'An electronic version of this invoice is available in your account. To access it, log in to our website using your e-mail address and password (which you created when placing your first order).','pdf'=>'true'),$_smarty_tpl);?>

				<br />
			<?php }?>
			<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['shop_address']->value, ENT_QUOTES, 'UTF-8', true);?>
<br />

			<?php if (!empty($_smarty_tpl->tpl_vars['shop_phone']->value)||!empty($_smarty_tpl->tpl_vars['shop_fax']->value)) {?>
				<?php echo smartyTranslate(array('s'=>'For more assistance, contact Support:','pdf'=>'true'),$_smarty_tpl);?>
<br />
				<?php if (!empty($_smarty_tpl->tpl_vars['shop_phone']->value)) {?>
					<?php echo smartyTranslate(array('s'=>'Tel: %s','sprintf'=>array(htmlspecialchars($_smarty_tpl->tpl_vars['shop_phone']->value, ENT_QUOTES, 'UTF-8', true)),'pdf'=>'true'),$_smarty_tpl);?>

				<?php }?>

				<?php if (!empty($_smarty_tpl->tpl_vars['shop_fax']->value)) {?>
					<?php echo smartyTranslate(array('s'=>'Fax: %s','sprintf'=>array(htmlspecialchars($_smarty_tpl->tpl_vars['shop_fax']->value, ENT_QUOTES, 'UTF-8', true)),'pdf'=>'true'),$_smarty_tpl);?>

				<?php }?>
				<br />
			<?php }?>
			
			<?php if (isset($_smarty_tpl->tpl_vars['shop_details']->value)) {?>
				<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['shop_details']->value, ENT_QUOTES, 'UTF-8', true);?>
<br />
			<?php }?>

			<?php if (isset($_smarty_tpl->tpl_vars['free_text']->value)) {?>
				<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['free_text']->value, ENT_QUOTES, 'UTF-8', true);?>
<br />
			<?php }?>
		</td>
	</tr>
</table>

<?php }} ?>

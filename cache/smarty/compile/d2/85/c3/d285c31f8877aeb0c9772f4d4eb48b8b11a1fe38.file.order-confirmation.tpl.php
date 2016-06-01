<?php /* Smarty version Smarty-3.1.19, created on 2016-06-01 14:53:09
         compiled from "C:\xampp\htdocs\joyeria\modules\paypalmxcustom\views\templates\hook\order-confirmation.tpl" */ ?>
<?php /*%%SmartyHeaderCode:21193574f3d25611596-95541470%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd285c31f8877aeb0c9772f4d4eb48b8b11a1fe38' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\modules\\paypalmxcustom\\views\\templates\\hook\\order-confirmation.tpl',
      1 => 1464713990,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21193574f3d25611596-95541470',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'paypal_mx_order' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_574f3d25676eb6_04756774',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_574f3d25676eb6_04756774')) {function content_574f3d25676eb6_04756774($_smarty_tpl) {?>
<?php if ($_smarty_tpl->tpl_vars['paypal_mx_order']->value['valid']==1) {?>
<div class="conf confirmation">
	<?php echo smartyTranslate(array('s'=>'Congratulations! Your payment is pending verification, and your order has been saved under','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
<?php if (isset($_smarty_tpl->tpl_vars['paypal_mx_order']->value['reference'])) {?> <?php echo smartyTranslate(array('s'=>'the reference','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <b><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_order']->value['reference'], ENT_QUOTES, 'UTF-8', true);?>
</b><?php } else { ?> <?php echo smartyTranslate(array('s'=>'the ID','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <b><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_order']->value['id'], ENT_QUOTES, 'UTF-8', true);?>
</b><?php }?>.
</div>
<?php } else { ?>
<div class="error">
	<?php echo smartyTranslate(array('s'=>'Unfortunately, an error occurred during the transaction.','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
<br /><br />
	<?php echo smartyTranslate(array('s'=>'Please double-check your credit card details and try again. If you need further assistance, feel free to contact us anytime.','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
<br /><br />
<?php if (isset($_smarty_tpl->tpl_vars['paypal_mx_order']->value['reference'])) {?>
	(<?php echo smartyTranslate(array('s'=>'Your Order\'s Reference:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <b><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_order']->value['reference'], ENT_QUOTES, 'UTF-8', true);?>
</b>)
<?php } else { ?>
	(<?php echo smartyTranslate(array('s'=>'Your Order\'s ID:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <b><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_order']->value['id'], ENT_QUOTES, 'UTF-8', true);?>
</b>)
<?php }?>
</div>
<?php }?><?php }} ?>

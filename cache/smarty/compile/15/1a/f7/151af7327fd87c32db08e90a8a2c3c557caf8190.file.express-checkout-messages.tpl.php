<?php /* Smarty version Smarty-3.1.19, created on 2016-06-01 14:32:04
         compiled from "C:\xampp\htdocs\joyeria\modules\paypalmxcustom\views\templates\front\express-checkout-messages.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1116574f38346327c0-54450951%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '151af7327fd87c32db08e90a8a2c3c557caf8190' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\modules\\paypalmxcustom\\views\\templates\\front\\express-checkout-messages.tpl',
      1 => 1464707297,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1116574f38346327c0-54450951',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'paypal_mx_errors' => 0,
    'link' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_574f38346809e0_95643354',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_574f38346809e0_95643354')) {function content_574f38346809e0_95643354($_smarty_tpl) {?><h1><?php echo smartyTranslate(array('s'=>'Unexpected payment error','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</h1><?php if (isset($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_ERRORCODE0'])&&$_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_ERRORCODE0']==10486) {?>	<div class="pp_error">		<p><b><?php echo smartyTranslate(array('s'=>'Unfortunately, the payment was declined by PayPal for one of the following reasons:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</b></p>        <ul>        	<li><?php echo smartyTranslate(array('s'=>'Billing address could not be confirmed','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</li>            <li><?php echo smartyTranslate(array('s'=>'Transaction exceeds the card limit','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</li>            <li><?php echo smartyTranslate(array('s'=>'Transaction denied by the card issuer','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</li>        </ul>        <p><?php echo smartyTranslate(array('s'=>'Details:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
            <?php echo smartyTranslate(array('s'=>'Short Error Message:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_SHORTMESSAGE0'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<br />            <?php echo smartyTranslate(array('s'=>'Detailed Error Message:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_LONGMESSAGE0'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<br />            <?php echo smartyTranslate(array('s'=>'Error Code:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_ERRORCODE0'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
        </p>        <p><b><?php echo smartyTranslate(array('s'=>'Please click again on the PayPal Express Checkout button below and select another funding source on the PayPal website:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</b></p>        <?php echo $_smarty_tpl->getSubTemplate ('../hook/express-checkout.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('paypal_mx_from_error'=>1), 0);?>
    </div><?php } else { ?>    <p class="<?php if ($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['ACK']=='Failure') {?>error<?php } else { ?>info<?php }?>">    	<b><?php echo smartyTranslate(array('s'=>'Unfortunately, an error occured while communicating with PayPal.','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</b><br /><br />        <?php echo smartyTranslate(array('s'=>'Short Error Message:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_SHORTMESSAGE0'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<br />        <?php echo smartyTranslate(array('s'=>'Detailed Error Message:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_LONGMESSAGE0'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<br />        <?php echo smartyTranslate(array('s'=>'Error Code:','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <?php echo mb_convert_encoding(htmlspecialchars($_smarty_tpl->tpl_vars['paypal_mx_errors']->value['L_ERRORCODE0'], ENT_QUOTES, 'UTF-8', true), "HTML-ENTITIES", 'UTF-8');?>
<br />        <?php echo smartyTranslate(array('s'=>'Please','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
 <b><a href="<?php echo $_smarty_tpl->tpl_vars['link']->value->getPageLink('contact',true);?>
"><?php echo smartyTranslate(array('s'=>'contact our Customer service','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</a></b> <?php echo smartyTranslate(array('s'=>'and mention this error code to get this issue resolved.','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
<br />    </p><?php }?><?php }} ?>

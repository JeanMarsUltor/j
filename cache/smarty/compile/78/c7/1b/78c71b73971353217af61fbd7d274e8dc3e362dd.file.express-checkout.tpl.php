<?php /* Smarty version Smarty-3.1.19, created on 2016-06-17 11:06:26
         compiled from "C:\xampp\htdocs\joyeria\modules\paypalmxcustom\views\templates\hook\express-checkout.tpl" */ ?>
<?php /*%%SmartyHeaderCode:99657642002bea2a0-76122853%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '78c71b73971353217af61fbd7d274e8dc3e362dd' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\modules\\paypalmxcustom\\views\\templates\\hook\\express-checkout.tpl',
      1 => 1464713998,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '99657642002bea2a0-76122853',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'page_name' => 0,
    'paypal_mx_express_checkout_no_token' => 0,
    'paypal_mx_express_checkout_hook_payment' => 0,
    'paypal_mx_action_payment' => 0,
    'paypal_mx_merchant_country_is_mx' => 0,
    'module_dir' => 0,
    'lang_iso' => 0,
    'PS_CATALOG_MODE' => 0,
    'paypal_mx_action' => 0,
    'paypal_mx_from_error' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57642002d39f77_58124061',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57642002d39f77_58124061')) {function content_57642002d39f77_58124061($_smarty_tpl) {?>
" method="post">
img/boton_terminar_compra.png" alt="" class="ecb f_left" />
</p>

" method="post" onsubmit="$('#paypal_express_checkout_id_product_attribute').val($('#idCombination').val());                      $('#paypal_express_checkout_quantity').val($('#quantity_wanted').val());">
" />
/img/accpmark_tarjdeb_mx.png<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
/img/express_checkout_mx.png<?php }?>" alt=""/>
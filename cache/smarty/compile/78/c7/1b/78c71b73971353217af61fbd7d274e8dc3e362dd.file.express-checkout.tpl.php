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
<?php if ($_valid && !is_callable('content_57642002d39f77_58124061')) {function content_57642002d39f77_58124061($_smarty_tpl) {?><?php if (($_smarty_tpl->tpl_vars['page_name']->value=='order'&&(!isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)||!$_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)&&((isset($_GET['step'])&&$_GET['step']>1)||(isset($_POST['step'])&&$_POST['step']>1)))||($_smarty_tpl->tpl_vars['page_name']->value=='order-opc'&&isset($_GET['isPaymentStep'])&&$_GET['isPaymentStep']==true&&isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_hook_payment']->value))) {?>    <p class="payment_module row HERE">        <div id="paypal-express-checkout">            <form id="paypal-express-checkout-form" class="well payment_module" action="<?php echo $_smarty_tpl->tpl_vars['paypal_mx_action_payment']->value;?>
" method="post">                <?php if ($_smarty_tpl->tpl_vars['paypal_mx_merchant_country_is_mx']->value) {?>                    <input id="paypal-express-checkout-btn" type="image" name="submit" src="<?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
img/boton_terminar_compra.png" alt="" class="ecb f_left" />                    <p class="f_left"><?php echo smartyTranslate(array('s'=>'Da clic para confirmar tu compra con PayPal','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
</p>                    <div class="clearboth"></div>                <?php } else { ?>                    <input id="paypal-express-checkout-btn" type="image" name="submit" src="https://www.paypalobjects.com/<?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='en') {?>en_US<?php } else { ?><?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='fr') {?>fr_CA<?php } else { ?><?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='es') {?>es_ES<?php } else { ?>en_US<?php }?><?php }?><?php }?>/i/bnr/horizontal_solution_PPeCheck.gif" alt="" class="ecb" /> <?php echo smartyTranslate(array('s'=>'Complete your order with PayPal Express Checkout','mod'=>'paypalmxcustom'),$_smarty_tpl);?>
                <?php }?>            </form>        </div>    </p>    <?php } else { ?>                <div id="paypal-express-checkout" class="<?php if (isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)&&$_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value) {?>payment_module<?php }?>">           <?php if (!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value) {?>            <form id="paypal-express-checkout-form" class="well box-security <?php if (!isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)||!$_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value) {?> align_right <?php }?>" action="<?php echo $_smarty_tpl->tpl_vars['paypal_mx_action']->value;?>
" method="post" onsubmit="$('#paypal_express_checkout_id_product_attribute').val($('#idCombination').val());                      $('#paypal_express_checkout_quantity').val($('#quantity_wanted').val());">                <?php if ($_smarty_tpl->tpl_vars['page_name']->value=='product'&&isset($_GET['id_product'])) {?>                    <input type="hidden" id="paypal_express_checkout_id_product" name="paypal_express_checkout_id_product" value="<?php echo intval($_GET['id_product']);?>
" />                    <input type="hidden" id="paypal_express_checkout_id_product_attribute" name="paypal_express_checkout_id_product_attribute" value="0" />                    <input type="hidden" id="paypal_express_checkout_quantity" name="paypal_express_checkout_quantity" value="0" />                <?php }?>                <?php if ($_smarty_tpl->tpl_vars['paypal_mx_merchant_country_is_mx']->value) {?>                    <input id="paypal-express-checkout-btn-product" type="image" name="submit" src="<?php if (isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)&&$_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value) {?><?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
/img/accpmark_tarjdeb_mx.png<?php } else { ?><?php echo $_smarty_tpl->tpl_vars['module_dir']->value;?>
/img/express_checkout_mx.png<?php }?>" alt=""/>                <?php } else { ?>                    <input id="paypal-express-checkout-btn-product" type="image" name="submit" src="<?php if (isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)&&$_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value) {?>https://www.paypalobjects.com/<?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='en') {?>en_US<?php } else { ?><?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='fr') {?>fr_CA<?php } else { ?><?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='es') {?>es_ES<?php } else { ?>en_US<?php }?><?php }?><?php }?>/i/bnr/horizontal_solution_PPeCheck.gif<?php } else { ?>https://www.paypal.com/<?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='en') {?>en_US<?php } else { ?><?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='fr') {?>fr_CA<?php } else { ?><?php if ($_smarty_tpl->tpl_vars['lang_iso']->value=='es') {?>es_ES<?php } else { ?>en_US<?php }?><?php }?><?php }?>/i/btn/btn_xpressCheckout.gif<?php }?>" alt="" />                <?php }?>            </form>            <?php }?>        </div>        <div class="clearboth"></div>    <?php if (!isset($_smarty_tpl->tpl_vars['paypal_mx_from_error']->value)) {?>        <script type="text/javascript">                $(document).ready(function()        {                                    <?php if ($_smarty_tpl->tpl_vars['page_name']->value=='product'&&!$_smarty_tpl->tpl_vars['PS_CATALOG_MODE']->value) {?>                                $('#paypal-express-checkout-form').insertAfter('#buy_block');                            <?php } else { ?>                <?php if (!isset($_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value)||!$_smarty_tpl->tpl_vars['paypal_mx_express_checkout_no_token']->value) {?>                                        $('#paypal-express-checkout-btn-product').hide();                    $('#paypal-express-checkout').insertAfter('.cart_navigation .button_large');                    $('#paypal-express-checkout-btn-product').show();                                    <?php }?>            <?php }?>                    });            </script>    <?php }?><?php }?><?php }} ?>

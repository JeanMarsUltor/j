<<<<<<< HEAD
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:12:05
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\modules_list\list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1621557635c7525a835-92877123%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
=======
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-07 16:21:11
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\modules_list\list.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2959557573ac701bb04-93347390%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7e01f7a17edf618730877778b757fa34ee97a52c' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\admin631gsbait\\themes\\default\\template\\helpers\\modules_list\\list.tpl',
<<<<<<< HEAD
      1 => 1464909876,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1621557635c7525a835-92877123',
=======
      1 => 1460131476,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2959557573ac701bb04-93347390',
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'panel_title' => 0,
    'modules_list' => 0,
    'controller_name' => 0,
    'view_all' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
<<<<<<< HEAD
  'unifunc' => 'content_57635c752f6e58_98876816',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57635c752f6e58_98876816')) {function content_57635c752f6e58_98876816($_smarty_tpl) {?><?php if (!is_callable('smarty_function_counter')) include 'C:\\xampp\\htdocs\\joyeria\\tools\\smarty\\plugins\\function.counter.php';
=======
  'unifunc' => 'content_57573ac711d803_97932051',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57573ac711d803_97932051')) {function content_57573ac711d803_97932051($_smarty_tpl) {?><?php if (!is_callable('smarty_function_counter')) include 'C:\\xampp\\htdocs\\joyeria\\tools\\smarty\\plugins\\function.counter.php';
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
if (!is_callable('smarty_function_cycle')) include 'C:\\xampp\\htdocs\\joyeria\\tools\\smarty\\plugins\\function.cycle.php';
?>
<div class="panel">
	<h3>
		<i class="icon-list-ul"></i>
		<?php if (isset($_smarty_tpl->tpl_vars['panel_title']->value)) {?><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['panel_title']->value, ENT_QUOTES, 'UTF-8', true);?>
<?php } else { ?><?php echo smartyTranslate(array('s'=>'Modules list'),$_smarty_tpl);?>
<?php }?>
	</h3>
	<div class="modules_list_container_tab row">
		<div class="col-lg-12">
			<?php if (count($_smarty_tpl->tpl_vars['modules_list']->value)) {?>
				<table class="table">
					<?php echo smarty_function_counter(array('start'=>1,'assign'=>"count"),$_smarty_tpl);?>

						<?php  $_smarty_tpl->tpl_vars['module'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['module']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['modules_list']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['module']->key => $_smarty_tpl->tpl_vars['module']->value) {
$_smarty_tpl->tpl_vars['module']->_loop = true;
?>
							<?php ob_start();?><?php echo smarty_function_cycle(array('values'=>",row alt"),$_smarty_tpl);?>
<?php $_tmp1=ob_get_clean();?><?php echo $_smarty_tpl->getSubTemplate ('controllers/modules/tab_module_line.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, null, array('class_row'=>$_tmp1), 0);?>

						<?php echo smarty_function_counter(array(),$_smarty_tpl);?>

					<?php } ?>
				</table>
				<?php if ($_smarty_tpl->tpl_vars['controller_name']->value=='AdminPayment'&&isset($_smarty_tpl->tpl_vars['view_all']->value)) {?>
					<div class="panel-footer">
						<div class="col-lg-4 col-lg-offset-4">
							<a class="btn btn-default btn-block" href="index.php?tab=AdminModules&amp;token=<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['getAdminToken'][0][0]->getAdminTokenLiteSmarty(array('tab'=>'AdminModules'),$_smarty_tpl);?>
&amp;filterCategory=payments_gateways">
								<i class="process-icon-payment"></i>
								<?php echo smartyTranslate(array('s'=>'View all available payments solutions'),$_smarty_tpl);?>

							</a>
						</div>
					</div>
				<?php }?>
			<?php } else { ?>
				<table class="table">
					<tr>
						<td>
							<div class="alert alert-warning">
							<?php if ($_smarty_tpl->tpl_vars['controller_name']->value=='AdminPayment') {?>
							<?php echo smartyTranslate(array('s'=>'It seems there are no recommended payment solutions for your country.'),$_smarty_tpl);?>
<br />
							<a class="_blank" href="https://www.prestashop.com/en/contact-us"><?php echo smartyTranslate(array('s'=>'Do you think there should be one? Let us know!'),$_smarty_tpl);?>
</a>
							<?php } else { ?><?php echo smartyTranslate(array('s'=>'No modules available in this section.'),$_smarty_tpl);?>
<?php }?></div>
						</td>
					</tr>
				</table>
			<?php }?>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('.fancybox-quick-view').fancybox({
			type: 'ajax',
			autoDimensions: false,
			autoSize: false,
			width: 600,
			height: 'auto',
			helpers: {
				overlay: {
					locked: false
				}
			}
		});
	});
</script>
<?php }} ?>

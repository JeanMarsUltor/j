<<<<<<< HEAD
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:12:05
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\controllers\modules\tab_module_line.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1082057635c753c49b3-25382556%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
=======
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-07 16:21:11
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\controllers\modules\tab_module_line.tpl" */ ?>
<?php /*%%SmartyHeaderCode:901657573ac7144901-66447597%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5e49dfc1bf957a794f94d369d3aed16a8515d352' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\admin631gsbait\\themes\\default\\template\\controllers\\modules\\tab_module_line.tpl',
<<<<<<< HEAD
      1 => 1464909875,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1082057635c753c49b3-25382556',
=======
      1 => 1460131476,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '901657573ac7144901-66447597',
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module' => 0,
    'currentIndex' => 0,
    'token' => 0,
    'option' => 0,
    'key' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
<<<<<<< HEAD
  'unifunc' => 'content_57635c75501504_47196897',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57635c75501504_47196897')) {function content_57635c75501504_47196897($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_replace')) include 'C:\\xampp\\htdocs\\joyeria\\tools\\smarty\\plugins\\modifier.replace.php';
=======
  'unifunc' => 'content_57573ac7294801_58883113',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57573ac7294801_58883113')) {function content_57573ac7294801_58883113($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_replace')) include 'C:\\xampp\\htdocs\\joyeria\\tools\\smarty\\plugins\\modifier.replace.php';
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
?>
<tr>
	<td class="fixed-width-sm center">
		<img class="img-thumbnail" alt="<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
" src="<?php if (isset($_smarty_tpl->tpl_vars['module']->value->image)) {?><?php echo $_smarty_tpl->tpl_vars['module']->value->image;?>
<?php } else { ?><?php echo @constant('_MODULE_DIR_');?>
<?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
/<?php echo $_smarty_tpl->tpl_vars['module']->value->logo;?>
<?php }?>" />
	</td>
	<td>
		<div id="anchor<?php echo ucfirst($_smarty_tpl->tpl_vars['module']->value->name);?>
" title="<?php echo $_smarty_tpl->tpl_vars['module']->value->displayName;?>
">
			<div class="module_name">
				<span style="display:none"><?php echo $_smarty_tpl->tpl_vars['module']->value->name;?>
</span>
				<?php echo $_smarty_tpl->tpl_vars['module']->value->displayName;?>

				<small class="text-muted">v<?php echo $_smarty_tpl->tpl_vars['module']->value->version;?>
 - by <?php echo $_smarty_tpl->tpl_vars['module']->value->author;?>
</small>
				<?php if (isset($_smarty_tpl->tpl_vars['module']->value->type)&&$_smarty_tpl->tpl_vars['module']->value->type=='addonsBought') {?>
					- <span class="module-badge-bought help-tooltip text-warning" data-title="<?php echo smartyTranslate(array('s'=>"You bought this module on PrestaShop Addons. Thank You."),$_smarty_tpl);?>
"><i class="icon-pushpin"></i> <small><?php echo smartyTranslate(array('s'=>"Bought"),$_smarty_tpl);?>
</small></span>
				<?php } elseif (isset($_smarty_tpl->tpl_vars['module']->value->type)&&$_smarty_tpl->tpl_vars['module']->value->type=='addonsMustHave') {?>
					- <span class="module-badge-popular help-tooltip text-primary" data-title="<?php echo smartyTranslate(array('s'=>"This module is available on PrestaShop Addons"),$_smarty_tpl);?>
"><i class="icon-group"></i> <small><?php echo smartyTranslate(array('s'=>"Popular"),$_smarty_tpl);?>
</small></span>
				<?php } elseif (isset($_smarty_tpl->tpl_vars['module']->value->type)&&$_smarty_tpl->tpl_vars['module']->value->type=='addonsPartner') {?>
					- <span class="module-badge-partner help-tooltip text-warning" data-title="<?php echo smartyTranslate(array('s'=>"This module is available for free thanks to our partner."),$_smarty_tpl);?>
"><i class="icon-pushpin"></i> <small><?php echo smartyTranslate(array('s'=>"Official"),$_smarty_tpl);?>
</small></span>
				<?php } elseif (isset($_smarty_tpl->tpl_vars['module']->value->id)&&$_smarty_tpl->tpl_vars['module']->value->id>0) {?>
					<?php if (isset($_smarty_tpl->tpl_vars['module']->value->version_addons)&&$_smarty_tpl->tpl_vars['module']->value->version_addons) {?>
						<span class="label label-warning"><?php echo smartyTranslate(array('s'=>'Need update'),$_smarty_tpl);?>
</span>
					<?php }?>
				<?php }?>
			</div>
			<p class="module_description">
				<?php if (isset($_smarty_tpl->tpl_vars['module']->value->description)&&$_smarty_tpl->tpl_vars['module']->value->description!='') {?>
					<?php echo $_smarty_tpl->tpl_vars['module']->value->description;?>

				<?php }?>
				<?php if (isset($_smarty_tpl->tpl_vars['module']->value->show_quick_view)&&$_smarty_tpl->tpl_vars['module']->value->show_quick_view) {?>
					<br><a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['currentIndex']->value, ENT_QUOTES, 'UTF-8', true);?>
&amp;token=<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['token']->value, ENT_QUOTES, 'UTF-8', true);?>
&amp;ajax=1&amp;action=GetModuleQuickView&amp;module=<?php echo urlencode($_smarty_tpl->tpl_vars['module']->value->name);?>
" class="fancybox-quick-view"><i class="icon-search"></i> <?php echo smartyTranslate(array('s'=>'Read more'),$_smarty_tpl);?>
</a>
				<?php }?>
			</p>
			<?php if (isset($_smarty_tpl->tpl_vars['module']->value->message)&&(empty($_smarty_tpl->tpl_vars['module']->value->name)!==false)&&(!isset($_smarty_tpl->tpl_vars['module']->value->type)||($_smarty_tpl->tpl_vars['module']->value->type!='addonsMustHave'||$_smarty_tpl->tpl_vars['module']->value->type!=='addonsNative'))) {?><div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button><?php echo $_smarty_tpl->tpl_vars['module']->value->message;?>
</div><?php }?>
		</div>
	</td>
	<?php if (isset($_smarty_tpl->tpl_vars['module']->value->type)&&$_smarty_tpl->tpl_vars['module']->value->type=='addonsMustHave') {?>
		<td>&nbsp;</td>
		<td style="text-align: right;">
			<p>
				<a href="<?php echo htmlspecialchars(smarty_modifier_replace($_smarty_tpl->tpl_vars['module']->value->addons_buy_url,' ','+'), ENT_QUOTES, 'UTF-8', true);?>
" class="button updated _blank">
					<span class="btn btn-default">
						<i class="icon-shopping-cart"></i><?php if (isset($_smarty_tpl->tpl_vars['module']->value->price)) {?><?php if (floatval($_smarty_tpl->tpl_vars['module']->value->price)==0) {?><?php echo smartyTranslate(array('s'=>'Free'),$_smarty_tpl);?>
<?php } elseif (isset($_smarty_tpl->tpl_vars['module']->value->id_currency)) {?> &nbsp;&nbsp;<?php echo $_smarty_tpl->smarty->registered_plugins[Smarty::PLUGIN_FUNCTION]['displayPrice'][0][0]->displayPriceSmarty(array('price'=>$_smarty_tpl->tpl_vars['module']->value->price,'currency'=>$_smarty_tpl->tpl_vars['module']->value->id_currency),$_smarty_tpl);?>
<?php }?><?php }?>
					</span>
				</a>
			</p>
		</td>
	<?php } elseif (!isset($_smarty_tpl->tpl_vars['module']->value->not_on_disk)) {?>
		<td>&nbsp;</td>
		<td class="actions">
			<div class="btn-group-action">
				<?php if (count($_smarty_tpl->tpl_vars['module']->value->optionsHtml)>0) {?>
				<div class="btn-group">
					<?php $_smarty_tpl->tpl_vars['option'] = new Smarty_variable($_smarty_tpl->tpl_vars['module']->value->optionsHtml[0], null, 0);?>
					<?php echo $_smarty_tpl->tpl_vars['option']->value;?>

					<?php if (count($_smarty_tpl->tpl_vars['module']->value->optionsHtml)>1) {?>
					<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" >
						<span class="caret">&nbsp;</span>
					</button>
					<ul class="dropdown-menu pull-right">

					<?php  $_smarty_tpl->tpl_vars['option'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['option']->_loop = false;
 $_smarty_tpl->tpl_vars['key'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['module']->value->optionsHtml; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['option']->key => $_smarty_tpl->tpl_vars['option']->value) {
$_smarty_tpl->tpl_vars['option']->_loop = true;
 $_smarty_tpl->tpl_vars['key']->value = $_smarty_tpl->tpl_vars['option']->key;
?>
						<?php if ($_smarty_tpl->tpl_vars['key']->value!=0) {?>
							<?php if (strpos($_smarty_tpl->tpl_vars['option']->value,'title="divider"')!==false) {?>
								<li class="divider"></li>
							<?php } else { ?>
								<li><?php echo $_smarty_tpl->tpl_vars['option']->value;?>
</li>
							<?php }?>
						<?php }?>
					<?php } ?>
					</ul>
					<?php }?>
				</div>
				<?php }?>
			</div>
		</td>
	<?php } else { ?>
		<td>&nbsp;</td>
		<td style="text-align: right;">
			<p>
				<a href="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['module']->value->options['install_url'], ENT_QUOTES, 'UTF-8', true);?>
" class="btn btn-success">
					<i class="icon-plus-sign-alt"></i>
					<?php echo smartyTranslate(array('s'=>'Install'),$_smarty_tpl);?>

				</a>
			</p>
		</td>
	<?php }?>
</tr>
<?php }} ?>
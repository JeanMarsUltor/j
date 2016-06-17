<<<<<<< HEAD
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:12:14
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\kpi\row.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2870557635c7e42c667-65222220%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
=======
<?php /* Smarty version Smarty-3.1.19, created on 2016-06-08 14:22:44
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\kpi\row.tpl" */ ?>
<?php /*%%SmartyHeaderCode:372457587084d1f7e7-50546691%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd584dd9949996eaf127e97cad8ddf74c0efc015a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\admin631gsbait\\themes\\default\\template\\helpers\\kpi\\row.tpl',
      1 => 1460131476,
      2 => 'file',
    ),
  ),
<<<<<<< HEAD
  'nocache_hash' => '2870557635c7e42c667-65222220',
=======
  'nocache_hash' => '372457587084d1f7e7-50546691',
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'kpis' => 0,
    'col' => 0,
    'i' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
<<<<<<< HEAD
  'unifunc' => 'content_57635c7e44eb23_24403124',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57635c7e44eb23_24403124')) {function content_57635c7e44eb23_24403124($_smarty_tpl) {?>
=======
  'unifunc' => 'content_57587084e0dca0_65959663',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57587084e0dca0_65959663')) {function content_57587084e0dca0_65959663($_smarty_tpl) {?>
>>>>>>> 32619c462b8a879dec2ab16600dc740680ad7b38
<div class="panel kpi-container">
	<div class="kpi-refresh"><button class="close refresh" type="button" onclick="refresh_kpis();"><i class="process-icon-refresh" style="font-size:1em"></i></button></div>
	<div class="row">
		<?php $_smarty_tpl->tpl_vars['col'] = new Smarty_variable((int)(12/count($_smarty_tpl->tpl_vars['kpis']->value)), null, 0);?>
		<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['kpis']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['kpi']['iteration']=0;
foreach ($_from as $_smarty_tpl->tpl_vars['i']->key => $_smarty_tpl->tpl_vars['i']->value) {
$_smarty_tpl->tpl_vars['i']->_loop = true;
 $_smarty_tpl->tpl_vars['smarty']->value['foreach']['kpi']['iteration']++;
?>
			<?php if ($_smarty_tpl->getVariable('smarty')->value['foreach']['kpi']['iteration']>$_smarty_tpl->tpl_vars['col']->value+1) {?>
				</div>
				<div class="row">
			<?php }?>
			<div class="col-sm-6 col-lg-<?php echo $_smarty_tpl->tpl_vars['col']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</div>
		<?php } ?>
	</div>
</div>
<?php }} ?>

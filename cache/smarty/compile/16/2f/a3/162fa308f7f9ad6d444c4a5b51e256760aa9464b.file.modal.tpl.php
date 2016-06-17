<?php /* Smarty version Smarty-3.1.19, created on 2016-06-16 21:12:05
         compiled from "C:\xampp\htdocs\joyeria\admin631gsbait\themes\default\template\helpers\modules_list\modal.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1872957635c75d099d4-47816798%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '162fa308f7f9ad6d444c4a5b51e256760aa9464b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\joyeria\\admin631gsbait\\themes\\default\\template\\helpers\\modules_list\\modal.tpl',
      1 => 1464909876,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1872957635c75d099d4-47816798',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.19',
  'unifunc' => 'content_57635c75d0e667_49568514',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_57635c75d0e667_49568514')) {function content_57635c75d0e667_49568514($_smarty_tpl) {?><div class="modal fade" id="modules_list_container">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h3 class="modal-title"><?php echo smartyTranslate(array('s'=>'Recommended Modules and Services'),$_smarty_tpl);?>
</h3>
			</div>
			<div class="modal-body">
				<div id="modules_list_container_tab_modal" style="display:none;"></div>
				<div id="modules_list_loader"><i class="icon-refresh icon-spin"></i></div>
			</div>
		</div>
	</div>
</div>
<?php }} ?>

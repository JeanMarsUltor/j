<?php
if (!defined('_PS_VERSION_'))
  exit;
 
class MyModuleJM extends Module
{
  public function __construct()
  {
    $this->name = 'mymodulejm';
    $this->tab = 'front_office_features';
    $this->version = '1.0.0';
    $this->author = 'Juan Miguel';
    $this->need_instance = 0;
    $this->ps_versions_compliancy = array('min' => '1.6', 'max' => _PS_VERSION_); 
    $this->bootstrap = true;
 
    parent::__construct();
 
    $this->displayName = $this->l('My module JM');
    $this->description = $this->l('Description of my module JM.');
 
    $this->confirmUninstall = $this->l('Are you sure you want to uninstall?');
 
    if (!Configuration::get('MYMODULE_NAME'))      
      $this->warning = $this->l('No name provided');
  }
}
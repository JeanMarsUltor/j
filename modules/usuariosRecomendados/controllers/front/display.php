<?php
class usuariosRecomendadosdisplayModuleFrontController extends ModuleFrontController
{
  public function initContent()
  {
    parent::initContent();
	echo "HOLA";
    $this->setTemplate('display.tpl');
  }
}
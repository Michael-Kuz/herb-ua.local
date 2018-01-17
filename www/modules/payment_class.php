<?php

class Payment extends ModuleHornav{

	private $file_tpl;
	public function __construct( $name_tpl_file="payment" ){
		parent::__construct();
		$this->file_tpl = $name_tpl_file;
		$this->add("payment_card", Config::PRIVAT24_MASTERCARD);
	}
	
	public function getTmplFile(){
		return $this->file_tpl;
	}
}
?>
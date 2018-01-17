<?php

class SearchProduct extends ModuleHornav {
	
	public function __construct() {
		parent::__construct();
		$this->add("title");
		$this->add("auth_user");
		$this->add("query");
		$this->add("field");
		$this->add("error_len", false);
		$this->add("link_desc");
		$this->add("add_cart",URL::get("function.php", null, array("func"=>"add_cart") ) );
		$this->add("link_likes");
		$this->add("data",NULL,array() );
	}
		
	public function getTmplFile() {
		return "search_product";
	}
}
?>
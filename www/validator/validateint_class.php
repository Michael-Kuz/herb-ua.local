<?php

class ValidateInt extends Validator {
	
	protected function validate() {
		$data = (int) $this->data;
		if ( !is_int($data) || ($data < 0) ) $this->setError(self::CODE_UNKNOWN);
	}
	
}
?>
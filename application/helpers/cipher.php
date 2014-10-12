<?php
	class Cipher{
		private $key;
		private $IV;

    	function encrypt($input) {
        	return base64_encode(mcrypt_encrypt(MCRYPT_RIJNDAEL_256, $this->key, $input, MCRYPT_MODE_ECB, $this->IV));
    	}

	    function decrypt($input) {
	        return trim(mcrypt_decrypt(MCRYPT_RIJNDAEL_256, $this->key, base64_decode($input), MCRYPT_MODE_ECB, $this->IV));
	    }
	}
?>

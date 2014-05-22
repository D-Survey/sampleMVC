<?php

class Example_model extends Model {
	
	public function getSomething($id)
	{
		$id = $this->escapeString($id);
		$result = $this->query('SELECT * FROM tbl_users WHERE user_id="'. $id .'"');
		return $result;
	}

	public function login($username, $password){
		$username = $this->escapeString($username);
		$password = $this->escapeString($password);
		$result = $this->query('SELECT * FROM tbl_users WHERE username="'.$username.'" AND password="'.$password.'"');
		if($result){
			return true;
		}
		return false;
	}

}

?>

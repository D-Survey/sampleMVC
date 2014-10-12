<?php

class User_model extends Model {

	public function login($username, $password){
		$username = $this->escapeString($username);
		$password = $this->escapeString($password);
		$result = $this->query('SELECT * FROM tbl_users WHERE username="'.$username.'" AND password="'.$password.'"');
		if($result){
			return true;
		}
		return false;
	}

	public function sessionData($username, $password){
		$username = $this->escapeString($username);
		$password = $this->escapeString($password);
		$result = $this->query('SELECT * FROM tbl_users WHERE username="'.$username.'" AND password="'.$password.'"');
		foreach ($result as $key => $value) {
			$data[$key] = array('value' => $value );
			return $data[$key];
		}
	}

	public function signup($data){
        $result = $this->execute('INSERT INTO tbl_users (name, username, role, password, email, user_uid, created_date, last_login)
        	VALUES ("'.$data['name'].'", "'.$data['username'].'", "'.$data['role'].'",
        		"'.$data['password'].'", "'.$data['email'].'", "'.$data['user_uid'].'","'.$data['created_date'].'", "'.$data['last_login'].'")');

		if($result){
			return true;
		}
		return false;
	}

	public function find(){
		$result = $this->query('SELECT * FROM tbl_users');
		return $result;
	}

	public function findById($id){
		$id = $this->escapeString($id);
		$result = $this->query('SELECT * FROM tbl_users WHERE user_id="'. $id .'"');
		foreach ($result as $key => $value) {
			$data[$key] = array('value' => $value );
			return $data[$key];
		}
	}

	public function updateById($fld, $value, $id){
		$result = $this->execute('UPDATE tbl_users SET  '.$fld.'= "'.$value.'"
							WHERE user_id="'.$id.'"');
		return $result;
	}

    public function auditUpdate($data){
        $result = $this->execute('INSERT INTO tbl_audit (entity_id, action_type, entity_type, time_stamp, action_by)
                VALUES ("' .$data['user_id']. '","' .$data['action_type']. '","' .$data['entity_type']. '",
                "' .$data['time_stamp']. '","' .$data['action_by']. '")');

        return $result;
    }
}

?>

<?php

class Model {

	private $connection;

	public function __construct()
	{
		global $config;

		try {
		    $this->connection = new PDO('mysql:host='.$config['db_host'].';dbname='.$config['db_name'].'',
		    							$config['db_username'], $config['db_password']);
		    $this->connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
		    echo 'Connection failed: ' . $e->getMessage();
		}
	}

	public function escapeString($string)
	{
		return mysql_real_escape_string($string);
	}

	public function escapeArray($array)
	{
	    array_walk_recursive($array, create_function('&$v', '$v = mysql_real_escape_string($v);'));
		return $array;
	}
	
	public function to_bool($val)
	{
	    return !!$val;
	}
	
	public function to_date($val)
	{
	    return date('Y-m-d', $val);
	}
	
	public function to_time($val)
	{
	    return date('H:i:s', $val);
	}
	
	public function to_datetime($val)
	{
	    return date('Y-m-d H:i:s', $val);

	}
	
	public function query($qry)
	{
		try {
			$statment = $this->connection->query($qry);
			$result = $statment->fetchAll(PDO::FETCH_OBJ);
			return $result;
		} catch (PDOException $e) {
		    echo 'statement failed: ' . $e->getMessage();
		}
	}

	public function execute($qry)
	{
		try {
			$exec = $this->connection->query($qry);
			return $exec;
		} catch (PDOException $e) {
		    echo 'execution failed: ' . $e->getMessage();
		}
	}

	public function lastInsertId(){
		 return $this->connection->lastInsertId();
	}
    
}
?>

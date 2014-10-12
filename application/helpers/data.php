<?php
	class Data{
		function getdata($obj){
			foreach ($obj as $key => $value) {
				$data[$key] = array('value' =>$value);
			}
			return $data;
		}
	}
?>

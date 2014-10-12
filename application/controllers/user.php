<?php

	class User extends Controller {

		function index()
		{
			$template = $this->loadView('user_list_view');
			$user = $this->loadModel('user_model');
		    $userdata = $user->find();
		    $template->set('userdata', $userdata);
			$template->render();
		}

		function getEditList(){
			$user = $this->loadModel('user_model');
		    $template = $this->loadView('user_list_view');
		    $userEditData = $user->findById($_POST['user_uid']);
		    $template->set('userEditData', $userEditData);
		    echo json_encode($userEditData);
		}

		function audit(){
			$template = $this->loadView('user_audit_view');
			$user = $this->loadModel('user_model');
		    $userdata = $user->find();
		    $template->set('userdata', $userdata);
			$template->render();
		}

		function editProfile(){
			$user = $this->loadModel('user_model');
			$fld = $_POST['name'];
			$value = $_POST['value'];
			$id = $_POST['pk'];
		    $userdata = $user->updateById($fld, $value, $id);
		}
	}
?>

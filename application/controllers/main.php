	<?php

	class Main extends Controller {
		
		function index()
		{
			$template = $this->loadView('main_view');
			$template->render();
		}

		function login(){
			$main = $this->loadModel('user_model');
			$session = $this->loadHelper('session_helper');
			$cipher = $this->loadHelper('cipher');
			$cipher_password = $cipher->encrypt($_POST['password']);
		    $userdata = $main->login($_POST['username'], $cipher_password);
		    $template = $this->loadView('profile');

		    $name = $main->sessionData($_POST['username'], $cipher_password);
		    $template->set('userdata', $name);

		    if($userdata){
		    	$_SESSION['user_id'] = $name['value']->user_id;
                $data['user_id'] = $_SESSION['user_id'];
                $data['action_type'] = 'success';
                $data['entity_type'] = 'login';
                $data['time_stamp'] = strtotime(date('d-m-Y H:i:s'));

                $data['action_by'] = $name['value']->user_id;
                $auditData = $main->auditUpdate($data);

		    	$session->set("username", $_POST['username']);
		    	$session->set("name", $name['value']->name);
		    	$session->set("role", $name['value']->role);
		    	$session->set("user_uid", $name['value']->user_uid);
		    	$session->set("user_id", $name['value']->user_id);
		    	$template->render();
		    }
		}

		function sign_up(){
			$template = $this->loadView('main_view');
			$main = $this->loadModel('user_model');
	        $session = $this->loadHelper('session_helper');
	        $cipher = $this->loadHelper('cipher');
			$cipher_password = $cipher->encrypt($_POST['password']);
			$_POST['password'] = $cipher_password;
		    $_POST['email'] = $_POST['username'];
		    $_POST['role'] = "User";
		   	$_POST['user_uid'] = $this->generate_uid(5);
		   	$_POST['last_login'] = strtotime(date('d-m-Y H:i:s'));
		   	$_POST['created_date'] = strtotime(date('d-m-Y H:i:s'));
		    $userdata = $main->signup($_POST);
			$template->render();
		}

		function logout(){
            $user = $this->loadModel('user_model');
            $userdata['user_id'] = $_SESSION['user_id'];
            $userdata['action_type'] = 'success';
            $userdata['entity_type'] = 'logout';
            $userdata['time_stamp'] = strtotime(date('d-m-Y H:i:s'));
            $userdata['action_by'] = $_SESSION['user_id'];
            $auditData = $user->auditUpdate($userdata);

			$session = $this->loadHelper('session_helper');
			$session->set("user_uid", $name['value']->user_uid);
            session_destroy();
			$session->destroy();
			$this->redirect();
		}

		function generate_uid($length) {
			$chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			$password = substr( str_shuffle( $chars ), 0, $length );
			return $password;
		}

		function profileView(){
			$template = $this->loadView('profile');
			$main = $this->loadModel('user_model');
			$userdata = $main->findById($_SESSION['user_id']);
		    $template->set('userdata', $userdata);
			$template->render();
		}
	}
	?>

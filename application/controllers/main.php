	<?php

	class Main extends Controller {
		
		function index()
		{
			$template = $this->loadView('main_view');
			$template->render();
		}

		function login(){
			$example = $this->loadModel('Example_model');
			$session = $this->loadHelper('session_helper');
		    $userdata = $example->login($_POST['username'], $_POST['password']);	    
		    $template = $this->loadView('profile');
		    $template->set('someval', $userdata);
		    if($userdata){
		    	$session->set("username", $_POST['username']);
		    	$template->render();
		    }
		}

		function sign_up(){
	        $template = $this->loadView('profile');
	        $template->set('someval', $_POST);
			$template->render();
		}

		function logout(){
			$this->redirect();
		}
	}
	?>

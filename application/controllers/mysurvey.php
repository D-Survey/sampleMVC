	<?php

	class Mysurvey extends Controller {

		function index()
		{
			$template = $this->loadView('my_survey_view');
			$example = $this->loadModel('user_model');
		    $userdata = $example->find();
		    $template->set('userdata', $userdata);
		    /*echo "<pre>";
		    var_dump($userdata);
		    exit();*/
			$template->render();
		}

		function getUserList(){
			$example = $this->loadModel('user_model');
		    $template = $this->loadView('user_audit_view');
		    $userdata = $example->find();
		    $template->set('someval', $userdata);
		    $template->render();
		}
	}
	?>

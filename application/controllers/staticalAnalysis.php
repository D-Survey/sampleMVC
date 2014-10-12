<?php

	class StaticalAnalysis extends Controller {

	    function index(){
	    	$template = $this->loadView('report/test_report');

            $template->render();
	    }
	}

?>

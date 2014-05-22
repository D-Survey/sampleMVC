<?php

class Profile extends Controller {

    public function __construct()
    {
        parent::__construct();
        // Your own constructor code
    }

    function index()
    {
        $template = $this->loadView('main_view');
		$template->render();
    }
    
    function login()
    {
        echo 'Hello World!';
    }

}

?>
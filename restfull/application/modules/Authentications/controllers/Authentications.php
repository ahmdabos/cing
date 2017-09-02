<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//Authentications Controller
class Authentications extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('authentication');
    }

    public function get($username,$password)
    {
        return $this->authentication->login($username,$password);
    }



}

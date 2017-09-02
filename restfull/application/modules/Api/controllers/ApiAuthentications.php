<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'modules/Api/libraries/REST_Controller.php';
require_once APPPATH . 'helpers/jwt_helper.php';

class ApiAuthentications extends REST_Controller
{
    private $module;

    public function __construct()
    {
        parent::__construct();
        $this->module = modules::load('Authentications');
    }

    public function index_get()
    {
    }

    public function index_post()
    {
        $username = $this->post('username');
        $password = $this->post('password');
        $invalidLogin = ['invalid' => $username];
        if(!$username || !$password) {
            $this->response($invalidLogin, REST_Controller::HTTP_NOT_FOUND);
        }
        $id = $this->module->get($username,$password);
        if($id) {
            $token['id'] = $id;
            $token['username'] = $username;
            $date = new DateTime();
            $token['iat'] = $date->getTimestamp();
            $token['exp'] = $date->getTimestamp() + 60*60*5;
            $output['token'] = JWT::encode($token, "a");

            return $this->response($output, REST_Controller::HTTP_OK);
        }
        else {
            return $this->response($invalidLogin, REST_Controller::HTTP_NOT_FOUND);
        }

    }


}
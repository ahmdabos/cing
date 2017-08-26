<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'modules/Api/libraries/REST_Controller.php';


class ApiUpload extends REST_Controller
{
    private $module;

    public function __construct()
    {
        parent::__construct();
        $this->module = modules::load('Articles');
    }

    public function index_post()
    {
        $response = $this->module->uploadFile();

       return $this->response($response);
    }


}
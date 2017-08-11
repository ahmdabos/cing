<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'modules/Api/libraries/REST_Controller.php';


class ApiArticles extends REST_Controller
{
    private $module;

    public function __construct()
    {
        parent::__construct();
        $this->module = modules::load('Articles');
    }

    public function index_get()
    {

        $id = $this->get('id');
        $search = $this->get('search');
        $page = $this->get('page');
        $limit= $this->get('limit');
        $offset = $this->get('offset');
        $response = $this->module->get($id,$search,$page,$limit,$offset);
        return $this->response($response);
    }

    public function index_post()
    {
        $data = array(
            'title' => $this->post('title'),
            'content' => $this->post('content')
        );

        $response = $this->module->post($data);
       // print_r($response);exit;
        return $this->response($response);

    }

    public function index_put(){
        $id = $this->put('id');
        $data = array(
            'title' => $this->put('title'),
            'content' => $this->put('content')
        );
        $response = $this->module->update($id, $data);
        return $this->response($response);
    }

    public function index_delete($id)
    {
        $response = $this->module->delete($id);
        return $this->response($response);
    }

}
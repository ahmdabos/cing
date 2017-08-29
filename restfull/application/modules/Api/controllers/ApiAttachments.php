<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'modules/Api/libraries/REST_Controller.php';


class ApiAttachments extends REST_Controller
{
    private $module;

    public function __construct()
    {
        parent::__construct();
        $this->module = modules::load('Attachments');
    }

    public function index_get()
    {
        $id = $this->get('id');

        $response = $this->module->get($id);
        return $this->response($response);
    }

    public function index_post()
    {
        $data = array(
            'name' => $this->post('name'),
            'type' => $this->post('type'),
            'path' => $this->post('path')
        );

        $response = $this->module->post($data);
        // print_r($response);exit;
        return $this->response($response);

    }

    public function index_put()
    {
        $id = $this->put('id');
        $data = array(
            'name' => $this->put('name'),
            'type' => $this->put('type'),
            'path' => $this->put('path')
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
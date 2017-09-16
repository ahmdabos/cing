<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'modules/Api/libraries/REST_Controller.php';
require_once APPPATH . 'helpers/jwt_helper.php';

class ApiArticles extends REST_Controller
{
    private $module;
    protected $headers;

    public function __construct()
    {
        parent::__construct();
        $this->module = modules::load('Articles');
        $this->headers = apache_request_headers();
    }

    public function index_get()
    {
        if (isset($this->headers["Authorization"]) || !empty($this->headers["Authorization"])) {
            $token = explode(" ", $this->headers["Authorization"]);
            $user = JWT::decode(trim($token[1]), 'secret');
            print_r($user);
            $this->load->model("Authentications/Authentication", "auth");
            if ($this->auth->checkUser($user->id) !== false) {

                $id = $this->get('id');
                $search = $this->get('search');
                $page = $this->get('page');
                $limit = $this->get('limit');
                $offset = $this->get('offset');
                $response = $this->module->get($id, $search, $page, $limit, $offset);
                return $this->response($response);

            }
        } else {
            return $this->response('bad request', REST_Controller::HTTP_BAD_REQUEST);
        }

    }

    public function index_post()
    {
        if (isset($this->headers["Authorization"]) || !empty($this->headers["Authorization"])) {
            $token = explode(" ", $this->headers["Authorization"]);
            $user = JWT::decode(trim($token[1]), 'secret');
            $this->load->model("Authentications/Authentication", "auth");
            if ($this->auth->checkUser($user->id) !== false) {


                $data = array(
                    'title' => $this->post('title'),
                    'date' => $this->post('date'),
                    'content' => $this->post('content'),
                    'image' => $this->post('image')
                );
                $response = $this->module->post($data);
                return $this->response($response);


            } else {
                return $this->response('bad request', REST_Controller::HTTP_BAD_REQUEST);
            }

        }
    }

    public function index_put()
    {
        if (isset($this->headers["Authorization"]) || !empty($this->headers["Authorization"])) {
            $token = explode(" ", $this->headers["Authorization"]);
            $user = JWT::decode(trim($token[1]), 'secret');
            $this->load->model("Authentications/Authentication", "auth");
            if ($this->auth->checkUser($user->id) !== false) {


                $id = $this->put('id');
                $data = array(
                    'title' => $this->put('title'),
                    'date' => $this->put('date'),
                    'content' => $this->put('content'),
                    'image' => $this->put('image')
                );
                $response = $this->module->update($id, $data);
                return $this->response($response);
            }
        } else {
            return $this->response('bad request', REST_Controller::HTTP_BAD_REQUEST);
        }
    }

    public function index_delete($id)
    {

        if (isset($this->headers["Authorization"]) || !empty($this->headers["Authorization"])) {
            $token = explode(" ", $this->headers["Authorization"]);
            $user = JWT::decode(trim($token[1]), 'secret');
            $this->load->model("Authentications/Authentication", "auth");
            if ($this->auth->checkUser($user->id) !== false) {
                $response = $this->module->delete($id);
                return $this->response($response);
            }
        } else {
            return $this->response('bad request', REST_Controller::HTTP_BAD_REQUEST);
        }

    }


}
<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//Article Controller
class Articles extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('article');
        $this->load->helper('application_helper');
        $this->load->library('form_validation');
    }


    public function get($id,$search,$page,$limit,$offset)
    {
        return $this->article->get_article($id,$search,$page,$limit,$offset);
    }

    public function post($data)
    {
        return $this->article->post_article($data);
    }

    public function update($id, $data)
    {
        return $this->article->update_article($id, $data);
    }
    public function delete($id)
    {
        return $this->article->delete_article($id);
    }
}

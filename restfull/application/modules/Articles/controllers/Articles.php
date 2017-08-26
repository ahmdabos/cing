<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//Article Controller
class Articles extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('article');
    }

    public function get($id, $search, $page, $limit, $offset)
    {
        return $this->article->get_article($id, $search, $page, $limit, $offset);
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
    public function uploadFile()
    {
        $config["upload_path"] = FCPATH.'../uploads';
        $config['allowed_types'] = 'gif|jpg|jpeg|png';
        $config['max_size'] = 3000;
        $this->load->library('upload', $config);
        $this->upload->initialize($config);
        if (!$this->upload->do_upload('file')) {
            //return false;
           return $error = array('error' => $this->upload->display_errors());
        } else {
            //return true;
            return $data = array('upload_data' => $this->upload->data());
        }
    }
}

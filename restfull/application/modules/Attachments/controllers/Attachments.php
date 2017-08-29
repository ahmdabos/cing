<?php
defined('BASEPATH') OR exit('No direct script access allowed');

//Article Controller
class Attachments extends MY_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('attachment');
    }

    public function get($id)
    {
        return $this->attachment->get_attachment($id);
    }

    public function post($data)
    {
        return $this->attachment->post_attachment($data);
    }

    public function update($id, $data)
    {
        return $this->attachment->update_attachment($id, $data);
    }

    public function delete($id)
    {
        return $this->attachment->delete_attachment($id);
    }


}

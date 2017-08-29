<?php

//Article Model
class Attachment extends CI_Model
{
    private $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = "attachments";
    }

    public function get_attachment($id = NULL)
    {

        $query = $this->db->get($this->table);
        $data['result'] = $query->result();
        return $data;
    }

    public function post_attachment($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function update_attachment($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update($this->table, $data);
    }

    public function delete_attachment($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete($this->table);
    }


}

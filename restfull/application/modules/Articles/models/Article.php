<?php

//Article Model
class Article extends CI_Model
{
    private $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = "articles";
    }

    public function get_article($id = NULL, $search = NULL, $page = NULL, $limit = NULL, $offset = NULL)
    {
        if ($id != NULL) {
            $this->db->where('id', $id);
        }
        if ($search != NULL) {
            $this->db->like('title', $search);
        }

        $tempdb = clone $this->db;
        $data['length'] = $tempdb->from($this->table)->count_all_results();


        if ($page != NULL) {
            $this->db->limit($limit, ($page - 1) * $offset);
        }
        $query = $this->db->get($this->table);
        $data['result'] = $query->result();

        return $data;
    }

    public function post_article($data)
    {
        return $this->db->insert($this->table, $data);
    }

    public function update_article($id, $data)
    {
        $this->db->where('id', $id);
        return $this->db->update($this->table, $data);
    }

    public function delete_article($id)
    {
        $this->db->where('id', $id);
        return $this->db->delete($this->table);
    }


}

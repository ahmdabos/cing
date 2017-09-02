<?php

//Article Model
class Authentication extends CI_Model
{
    private $table;

    public function __construct()
    {
        parent::__construct();
        $this->table = "users";
    }


    public function login($username, $password) {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('username', $username);
        $query = $this->db->get();
        if ($query->num_rows() == 1) {
            $result = $query->result();
            return $result[0]->id;
        }
        return false;
    }
    public function checkUser($username)
    {

        $this->db->select('*');

        $this->db->from($this->table);
        $this->db->where('username', $username);
        $this->db->limit(1);
        $query = $this->db->get();



        return $query->num_rows() === 1;
    }
}

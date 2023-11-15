<?php

require_once 'Database.php';

class Login {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function getUser($username, $password) {
        $sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
        $result = $this->db->query($sql);

        if ($result->num_rows > 0) {
            return true;}
            else {
                return false;
            }
    }
}
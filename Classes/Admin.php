<?php
require_once 'Database.php';

class Admin {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function createAdmin($username, $password) {
        // Implement the logic to create a new admin
        $sql = "INSERT INTO admin (username, password) VALUES ('$username', '$password')";
        return $this->db->query($sql);
    }

    public function getAdminById($admin_id) {
        // Implement the logic to retrieve an admin by ID
        $sql = "SELECT * FROM admin WHERE id = $admin_id";
        return $this->db->query($sql)->fetch_assoc();
    }

    public function updateAdmin($admin_id, $newUsername, $newPassword) {
        // Implement the logic to update an admin's details
        $sql = "UPDATE admin SET username = '$newUsername', password = '$newPassword' WHERE id = $admin_id";
        return $this->db->query($sql);
    }

    public function getAllAdmins() {
    // Implement the logic to retrieve all admin records
    $sql = "SELECT * FROM admin";
    return $this->db->query($sql)->fetch_all(MYSQLI_ASSOC);
}


    public function deleteAdmin($admin_id) {
        // Implement the logic to delete an admin
        $sql = "DELETE FROM admin WHERE id = $admin_id";
        return $this->db->query($sql);
    }
}
?>

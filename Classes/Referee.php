<?php
require_once 'Database.php';

class Referee {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function createReferee($name, $nationality) {
        // Implement the logic to create a new referee
        $sql = "INSERT INTO referees (name, nationality) VALUES ('$name', '$nationality')";
        return $this->db->query($sql);
    }

    public function getRefereeById($referee_id) {
        // Implement the logic to retrieve a referee by ID
        $sql = "SELECT * FROM referees WHERE id = $referee_id";
        return $this->db->query($sql)->fetch_assoc();
    }

    public function updateReferee($referee_id, $newName, $newNationality) {
        // Implement the logic to update a referee's details
        $sql = "UPDATE referees SET name = '$newName', nationality = '$newNationality' WHERE id = $referee_id";
        return $this->db->query($sql);
    }

    public function deleteReferee($referee_id) {
        // Implement the logic to delete a referee
        $sql = "DELETE FROM referees WHERE id = $referee_id";
        return $this->db->query($sql);
    }
}
?>

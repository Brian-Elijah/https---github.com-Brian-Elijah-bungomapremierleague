<?php
require_once 'Database.php';

class Coach {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function createCoach($name, $team_id, $nationality) {
        // Implement the logic to create a new coach
        $sql = "INSERT INTO coaches (name, team_id, nationality) VALUES ('$name', $team_id, '$nationality')";
        return $this->db->query($sql);
    }

    public function getCoachById($coach_id) {
        // Implement the logic to retrieve a coach by ID
        $sql = "SELECT * FROM coaches WHERE id = $coach_id";
        return $this->db->query($sql)->fetch_assoc();
    }

    public function updateCoach($coach_id, $newName, $newNationality) {
        // Implement the logic to update a coach's details
        $sql = "UPDATE coaches SET name = '$newName', nationality = '$newNationality' WHERE id = $coach_id";
        return $this->db->query($sql);
    }

    public function deleteCoach($coach_id) {
        // Implement the logic to delete a coach
        $sql = "DELETE FROM coaches WHERE id = $coach_id";
        return $this->db->query($sql);
    }
}
?>

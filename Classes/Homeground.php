<?php
require_once 'Database.php';

class Homeground {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function createHomeground($team, $name, $location, $capacity) {
        // Implement the logic to create a new homeground
        $sql = "INSERT INTO homegrounds (team, name, location, capacity) VALUES ('$team','$name', '$location', $capacity)";
        return $this->db->query($sql);
    }

    public function getHomegroundById($homeground_id) {
        // Implement the logic to retrieve a homeground by ID
        $sql = "SELECT * FROM homegrounds WHERE id = $homeground_id";
        return $this->db->query($sql)->fetch_assoc();
    }

    public function updateHomeground($homeground_id, $newName, $newLocation, $newCapacity) {
        // Implement the logic to update a homeground's details
        $sql = "UPDATE homegrounds SET name = '$newName', location = '$newLocation', capacity = $newCapacity WHERE id = $homeground_id";
        return $this->db->query($sql);
    }

    public function deleteHomeground($homeground_id) {
        // Implement the logic to delete a homeground
        $sql = "DELETE FROM homegrounds WHERE id = $homeground_id";
        return $this->db->query($sql);
    }
}
?>

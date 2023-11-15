<?php
require_once 'Database.php';

class Player {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function createPlayer($name, $team_id, $age, $nationality, $position) {
        // Implement the logic to create a new player
        $sql = "INSERT INTO players (name, team_id, age, nationality, position) VALUES ('$name', $team_id, $age, '$nationality', '$position')";
        return $this->db->query($sql);
    }

    public function getPlayerById($player_id) {
        // Implement the logic to retrieve a player by ID
        $sql = "SELECT * FROM players WHERE id = $player_id";
        return $this->db->query($sql)->fetch_assoc();
    }

    public function updatePlayer($player_id, $newName, $newAge, $newNationality, $newPosition) {
        // Implement the logic to update a player's details
        $sql = "UPDATE players SET name = '$newName', age = $newAge, nationality = '$newNationality', position = '$newPosition' WHERE id = $player_id";
        return $this->db->query($sql);
    }

    public function deletePlayer($player_id) {
        // Implement the logic to delete a player
        $sql = "DELETE FROM players WHERE id = $player_id";
        return $this->db->query($sql);
    }
}
?>

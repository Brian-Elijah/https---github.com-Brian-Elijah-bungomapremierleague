<?php
require_once 'Database.php';

class LeagueTable {
    private $db;

    public function __construct() {
        $this->db = new Database();
    }

    public function updateTeamResult($team_id, $points) {
        // Implement the logic to update a team's points in the league table
        $sql = "UPDATE league_table SET points = $points WHERE team_id = $team_id";
        return $this->db->query($sql);
    }

    public function getLeagueTable() {
        // Implement the logic to retrieve the entire league table
        $sql = "SELECT * FROM league_table";
        return $this->db->query($sql)->fetch_all(MYSQLI_ASSOC);
    }

    // You can add more methods for league table operations as needed
}
?>

<?php
// require_once 'templates/header.php'; // Include the header template

// Include the Admin class and create an instance
require_once '../Classes/LeagueTable.php';
require_once '../Classes/PlaySchedule.php';
$leagueManager = new LeagueTable();
$playSchedule = new PlaySchedule();

// Check if a form for adding a new admin has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['newAdminUsername']) && isset($_POST['newAdminPassword'])) {
        $username = $_POST['newAdminUsername'];
        $password = $_POST['newAdminPassword'];

        // Call the method to create a new admin
        $result = $leagueManager->createAdmin($username, $password);
        if ($result) {
            echo 'Admin added successfully.';
        } else {
            echo 'Failed to add admin.';
        }
    }
}

// Fetch and display existing admin records
$leagueRecords = $leagueManager->getLeagueTable();
$schedule = $playSchedule->getPlaySchedule();

?>
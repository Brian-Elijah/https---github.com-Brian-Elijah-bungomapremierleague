<?php

require_once "Database.php";

class PlaySchedule{
	private $db;

	public function __construct(){
		$this->db = new Database;
	}

	public function getPlaySchedule()
	{
		$sql = "SELECT ps.match_id, ps.home_team_id, home_club.club_name AS home_team_name, ps.away_team_id, away_club.club_name AS away_team_name, ps.match_date, ps.match_time, ps.referee_id, ref.name AS referee_name FROM play_schedules AS ps JOIN clubs AS home_club ON ps.home_team_id = home_club.club_id JOIN clubs AS away_club ON ps.away_team_id = away_club.club_id JOIN referees AS ref ON ps.referee_id = ref.referee_id";
		
		return $this->db->query($sql);

	}
}
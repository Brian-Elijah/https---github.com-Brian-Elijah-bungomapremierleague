-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:46 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bungomapremierleague`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`) VALUES
(1, 'admin1', 'admin1password'),
(2, 'admin2', 'admin2password'),
(4, 'asf', 'sdfsf'),
(5, 'jhf', 'sfg');

-- --------------------------------------------------------

--
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `club_id` int(11) NOT NULL,
  `club_name` varchar(255) NOT NULL,
  `foundation_year` year(4) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `homeground_id` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`club_id`, `club_name`, `foundation_year`, `region`, `manager_id`, `homeground_id`) VALUES
(1, 'Kings United', 2000, 'North', 1, 1),
(2, 'Lions FC', 2005, 'South', 2, 2),
(3, 'Phoenix United', 1998, 'East', 3, 3),
(4, 'Pioneers FC', 2010, 'West', 4, 4),
(5, 'Eagles FC', 2003, 'Central', 5, 5),
(6, 'Thunderbolts', 1995, 'North', 6, 6),
(7, 'Emerald City FC', 2012, 'South', 7, 7),
(8, 'Wildcats FC', 2008, 'East', 8, 8),
(9, 'Harbor Stars', 2001, 'West', 9, 9),
(10, 'Golden Tigers', 1997, 'Central', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `coaches`
--

CREATE TABLE `coaches` (
  `coach_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `team_id` int(11) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coaches`
--

INSERT INTO `coaches` (`coach_id`, `name`, `team_id`, `nationality`) VALUES
(1, 'Linda Njoroge', 1, 'Kenya'),
(2, 'Abdul Bako', 2, 'Nigeria');

-- --------------------------------------------------------

--
-- Table structure for table `homegrounds`
--

CREATE TABLE `homegrounds` (
  `homeground_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `homegrounds`
--

INSERT INTO `homegrounds` (`homeground_id`, `name`, `location`, `capacity`) VALUES
(1, 'Kasarani Stadium', 'Nairobi', 30000),
(2, 'Nyayo National Stadium', 'Nairobi', 30000),
(3, 'Moi Stadium', 'Kisumu', 20000),
(4, 'Afraha Stadium', 'Nakuru', 15000),
(5, 'Machakos Stadium', 'Machakos', 15000),
(6, 'Kinoru Stadium', 'Meru', 12000),
(7, 'Ruaraka Sports Ground', 'Nairobi', 8000),
(8, 'Sudi Stadium', 'Bungoma', 10000),
(9, 'Kisumu Polytechnic Ground', 'Kisumu', 5000),
(10, 'Mbaraki Sports Club', 'Mombasa', 8000);

-- --------------------------------------------------------

--
-- Table structure for table `league_table`
--

CREATE TABLE `league_table` (
  `id` int(11) NOT NULL,
  `club` varchar(255) NOT NULL,
  `matches_played` int(11) NOT NULL,
  `wins` int(11) NOT NULL,
  `draws` int(11) NOT NULL,
  `losses` int(11) NOT NULL,
  `goals_for` int(11) NOT NULL,
  `goals_against` int(11) NOT NULL,
  `goal_difference` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `form` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `league_table`
--

INSERT INTO `league_table` (`id`, `club`, `matches_played`, `wins`, `draws`, `losses`, `goals_for`, `goals_against`, `goal_difference`, `points`, `form`) VALUES
(1, '1', 20, 14, 4, 2, 45, 15, 30, 46, 'WWL'),
(2, '2', 20, 12, 6, 2, 38, 18, 20, 42, 'WLW'),
(3, '3', 20, 10, 7, 3, 32, 20, 12, 37, 'LWL'),
(4, '4', 20, 9, 5, 6, 28, 24, 4, 32, 'WDL'),
(5, '5', 20, 7, 6, 7, 25, 22, 3, 27, 'LWW'),
(6, '6', 20, 8, 7, 5, 30, 21, 9, 31, 'WWW'),
(7, '7', 20, 6, 8, 6, 24, 22, 2, 26, 'WLD'),
(8, '8', 20, 5, 9, 6, 20, 25, -5, 24, 'DWW'),
(9, '9', 20, 7, 4, 9, 26, 30, -4, 25, 'LWL'),
(10, '10', 20, 4, 8, 8, 18, 27, -9, 20, 'LDL');

-- --------------------------------------------------------

--
-- Table structure for table `managers`
--

CREATE TABLE `managers` (
  `manager_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managers`
--

INSERT INTO `managers` (`manager_id`, `name`, `nationality`) VALUES
(1, 'John Smith', 'USA'),
(2, 'Maria Rodriguez', 'Spain'),
(3, 'Ahmed Hassan', 'Egypt'),
(4, 'Anna Müller', 'Germany'),
(5, 'Luca Bianchi', 'Italy'),
(6, 'Nakamura Yuki', 'Japan'),
(7, 'Marta Santos', 'Brazil'),
(8, 'Andrei Petrov', 'Russia'),
(9, 'Chen Wei', 'China'),
(10, 'Kwame Nkrumah', 'Ghana');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `player_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `team_id` int(11) NOT NULL,
  `dob` date NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `strong_foot` varchar(255) NOT NULL,
  `jersey_no` int(11) NOT NULL,
  `position` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`player_id`, `fname`, `lname`, `team_id`, `dob`, `nationality`, `strong_foot`, `jersey_no`, `position`) VALUES
(1, 'Michael', 'Johnson', 1, '1995-01-15', 'USA', 'Right', 19, 'Forward'),
(2, 'Sophie', 'Martin', 2, '1996-04-21', 'France', 'Left', 17, 'Midfielder'),
(3, 'Mohammed', 'Ali', 3, '1994-11-10', 'Egypt', 'Right', 14, 'Defender'),
(4, 'Luis', 'García', 4, '1993-07-27', 'Spain', 'Left', 16, 'Midfielder'),
(5, 'Giuseppe', 'Rossi', 5, '1997-12-05', 'Italy', 'Right', 18, 'Forward'),
(6, 'Takashi', 'Nakamura', 6, '1995-06-30', 'Japan', 'Left', 13, 'Defender'),
(7, 'Marcelo', 'Silva', 7, '1994-09-17', 'Brazil', 'Right', 21, 'Forward'),
(8, 'Dmitri', 'Ivanov', 8, '1993-02-08', 'Russia', 'Left', 15, 'Midfielder'),
(9, 'Xin', 'Chen', 9, '1996-01-14', 'China', 'Right', 18, 'Midfielder'),
(10, 'Moses', 'Owusu', 10, '1997-07-22', 'Ghana', 'Left', 12, 'Defender'),
(11, 'Alejandro', 'López', 1, '1994-05-16', 'Argentina', 'Right', 20, 'Forward'),
(12, 'Katarzyna', 'Nowak', 2, '1995-08-22', 'Poland', 'Left', 19, 'Midfielder'),
(13, 'Ahmed', 'Mohamed', 3, '1993-03-11', 'Egypt', 'Right', 16, 'Defender'),
(14, 'Dimitri', 'Ivanov', 4, '1992-11-28', 'Bulgaria', 'Left', 14, 'Midfielder'),
(15, 'Fabio', 'Rossi', 5, '1996-02-06', 'Brazil', 'Right', 17, 'Forward'),
(16, 'Hiroshi', 'Tanaka', 6, '1994-06-29', 'Japan', 'Left', 11, 'Defender'),
(17, 'Luis', 'Hernández', 7, '1993-09-18', 'Mexico', 'Right', 23, 'Forward'),
(18, 'Andrei', 'Popov', 8, '1992-04-09', 'Ukraine', 'Left', 16, 'Midfielder'),
(19, 'Marta', 'dos Santos', 9, '1995-01-15', 'Portugal', 'Right', 19, 'Midfielder'),
(20, 'Lucas', 'Fernández', 10, '1996-07-23', 'Chile', 'Left', 20, 'Defender'),
(21, 'David', 'Kimani', 2, '1995-08-12', 'Kenya', 'Right', 14, 'Midfielder'),
(22, 'Sophia', 'Adegoke', 3, '1994-03-07', 'Nigeria', 'Left', 19, 'Forward'),
(23, 'Mohammed', 'Abdullah', 4, '1993-11-29', 'Saudi Arabia', 'Right', 21, 'Forward'),
(24, 'Emma', 'Larsson', 5, '1997-05-16', 'Sweden', 'Left', 17, 'Midfielder'),
(25, 'Mario', 'Garcia', 6, '1995-10-20', 'Mexico', 'Right', 16, 'Defender'),
(26, 'Aisha', 'Said', 7, '1994-04-13', 'Tanzania', 'Left', 13, 'Midfielder'),
(27, 'Pierre', 'Lefebvre', 8, '1993-09-08', 'France', 'Right', 18, 'Forward'),
(28, 'Isabella', 'Ricci', 9, '1996-02-19', 'Italy', 'Left', 15, 'Midfielder'),
(29, 'Hassan', 'Ahmed', 10, '1997-08-25', 'Egypt', 'Right', 20, 'Forward'),
(30, 'Anita', 'Kovács', 1, '1994-07-11', 'Hungary', 'Left', 22, 'Defender'),
(31, 'Javier', 'González', 4, '1995-12-18', 'Spain', 'Right', 19, 'Forward'),
(32, 'Olga', 'Ivanova', 5, '1996-03-25', 'Russia', 'Left', 17, 'Midfielder'),
(33, 'Hiroto', 'Tanaka', 6, '1994-10-15', 'Japan', 'Right', 14, 'Defender'),
(34, 'Lorena', 'Fernández', 7, '1993-05-02', 'Spain', 'Left', 16, 'Midfielder'),
(35, 'Giovanni', 'Ricci', 8, '1992-12-07', 'Italy', 'Right', 18, 'Forward'),
(36, 'Jin', 'Chen', 9, '1996-08-10', 'China', 'Left', 21, 'Midfielder'),
(37, 'Kwame', 'Owusu', 10, '1994-09-28', 'Ghana', 'Right', 19, 'Defender');

-- --------------------------------------------------------

--
-- Table structure for table `play_schedules`
--

CREATE TABLE `play_schedules` (
  `match_id` int(11) NOT NULL,
  `home_team_id` int(11) DEFAULT NULL,
  `away_team_id` int(11) DEFAULT NULL,
  `match_date` date DEFAULT NULL,
  `match_time` time DEFAULT NULL,
  `referee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `play_schedules`
--

INSERT INTO `play_schedules` (`match_id`, `home_team_id`, `away_team_id`, `match_date`, `match_time`, `referee_id`) VALUES
(1, 1, 2, '2023-04-01', '15:00:00', 1),
(2, 3, 4, '2023-04-02', '16:30:00', 2),
(3, 5, 6, '2023-04-03', '14:15:00', 3),
(4, 7, 8, '2023-04-04', '17:00:00', 4),
(5, 9, 10, '2023-04-05', '18:45:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `referees`
--

CREATE TABLE `referees` (
  `referee_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nationality` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referees`
--

INSERT INTO `referees` (`referee_id`, `name`, `nationality`) VALUES
(1, 'Alejandro López', 'Argentina'),
(2, 'Katarzyna Nowak', 'Poland'),
(3, 'Ahmed Mohamed', 'Egypt'),
(4, 'Dimitri Ivanov', 'Bulgaria'),
(5, 'Fabio Rossi', 'Brazil'),
(6, 'Hiroshi Tanaka', 'Japan'),
(7, 'Luis Hernández', 'Mexico'),
(8, 'Andrei Popov', 'Ukraine'),
(9, 'Marta dos Santos', 'Portugal'),
(10, 'Lucas Fernández', 'Chile');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`club_id`);

--
-- Indexes for table `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`coach_id`);

--
-- Indexes for table `homegrounds`
--
ALTER TABLE `homegrounds`
  ADD PRIMARY KEY (`homeground_id`);

--
-- Indexes for table `league_table`
--
ALTER TABLE `league_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `managers`
--
ALTER TABLE `managers`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`player_id`);

--
-- Indexes for table `play_schedules`
--
ALTER TABLE `play_schedules`
  ADD PRIMARY KEY (`match_id`);

--
-- Indexes for table `referees`
--
ALTER TABLE `referees`
  ADD PRIMARY KEY (`referee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `club_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coaches`
--
ALTER TABLE `coaches`
  MODIFY `coach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `homegrounds`
--
ALTER TABLE `homegrounds`
  MODIFY `homeground_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `league_table`
--
ALTER TABLE `league_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `managers`
--
ALTER TABLE `managers`
  MODIFY `manager_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `player_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `play_schedules`
--
ALTER TABLE `play_schedules`
  MODIFY `match_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `referees`
--
ALTER TABLE `referees`
  MODIFY `referee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

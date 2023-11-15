<?php
require 'header.php';
require_once '../Execs/admin_exec.php';
 ?>
    <div class="container">
        <div class="header">
            <div class="nav">
                <div class="search">
                    <input type="text" placeholder="Search..">
                    <button type="submit"><img src="../Public/images/search.png" alt=""></button>
                </div>
                <div class="user">
                    <a href="#" class="btn">Add New</a>
                    <img src="../Public/images/notifications.png" alt="">
                    <div class="img-case">
                        <img src="../Public/images/user.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="cards">
                <div class="card">
                    <div class="box">
                        <h1>500</h1>
                        <h3>Active Players</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Public/images/students.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>53</h1>
                        <h3>Injured Playes</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Public/images/teachers.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>20</h1>
                        <h3>Coaches</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Public/images/schools.png" alt="">
                    </div>
                </div>
                <div class="card">
                    <div class="box">
                        <h1>50</h1>
                        <h3>Referees</h3>
                    </div>
                    <div class="icon-case">
                        <img src="../Public/images/income.png" alt="">
                    </div>
                </div>
            </div>
            <div class="content-2">
                <div class="recent-payments">
                    <div class="title">
                        <h2>League Table</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <tr>
                            <th>Club</th>
                            <th>MP</th>
                            <th>W</th>
                            <th>D</th>
                            <th>L</th>
                            <th>GF</th>
                            <th>GA</th>
                            <th>GD</th>
                            <th>Pts</th>
                            <th>Forms</th>
                            <th>Action</th>

                        </tr>
                        <?php foreach ($leagueRecords as $league) { ?>
                        <tr>

                            <td><span class="row-number"></span> <img src="../Public/teams/ars.png" style="width: 10%;height: 10%;"> <?php echo $league['club'] ?></td>
                            <td><?php echo $league['matches_played'] ?></td>
                            <td><?php echo $league['wins'] ?></td>
                            <td><?php echo $league['draws'] ?></td>
                            <td><?php echo $league['losses'] ?></td>
                            <td><?php echo $league['goals_for'] ?></td>
                            <td><?php echo $league['goals_against'] ?></td>
                            <td><?php echo $league['goal_difference'] ?></td>
                            <td><?php echo $league['points'] ?></td>
                            <td><?php echo $league['form'] ?></td>

                 <td><a href="#" class="btn">View</a></td>
                        </tr>
                    <?php } ?>
                        
                    </table>
                </div>
                <div class="new-students">
                    <div class="title">
                        <h2>Upcoming Games</h2>
                        <a href="#" class="btn">View All</a>
                    </div>
                    <table>
                        <tr>
                            <th>Teams</th>
                            <th>Date</th>
                            <th>Time</th>
                            <th>Referee</th>
                        </tr>
                        <?php foreach ($schedule as $item) { ?>
                            <tr>
                                <td><?php echo $item['home_team_name']." vs ". $item['away_team_name']; ?></td>
                                <td><?php echo $item['match_date']; ?></td>
                                <td><?php echo $item['match_time']; ?></td>
                                <td><?php echo $item['referee_name']; ?></td>
                            </tr>
                        <?php } ?>
                    </table>

                </div>
            </div>
        </div>
    </div>
<?php require 'footer.php'; ?>
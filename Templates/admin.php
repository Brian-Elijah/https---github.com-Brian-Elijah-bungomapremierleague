<?php
// require_once 'templates/header.php'; // Include the header template

// Include the Admin class and create an instance
require_once '../Classes/Admin.php';
$adminManager = new Admin();

// Check if a form for adding a new admin has been submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['newAdminUsername']) && isset($_POST['newAdminPassword'])) {
        $username = $_POST['newAdminUsername'];
        $password = $_POST['newAdminPassword'];

        // Call the method to create a new admin
        $result = $adminManager->createAdmin($username, $password);
        if ($result) {
            echo 'Admin added successfully.';
        } else {
            echo 'Failed to add admin.';
        }
    }
}

// Fetch and display existing admin records
$adminRecords = $adminManager->getAllAdmins();

?>
<main>
    <h2>Admin Management</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Username</th>
            <th>Action</th>
        </tr>
        <?php
        foreach ($adminRecords as $admin) {
            echo '<tr>';
            echo '<td>' . $admin['admin_id'] . '</td>';
            echo '<td>' . $admin['username'] . '</td>';
            echo '<td>
                    <button>Edit</button>
                    <button>Delete</button>
                </td>';
            echo '</tr>';
        }
        ?>
    </table>

    <!-- Form to add a new admin -->
    <h3>Add New Admin</h3>
    <form method="post">
        <label for="newAdminUsername">Username:</label>
        <input type="text" name="newAdminUsername" id="newAdminUsername">
        <label for="newAdminPassword">Password:</label>
        <input type="password" name="newAdminPassword" id="newAdminPassword">
        <button type="submit">Add Admin</button>
    </form>
</main>

<?php
// require_once 'templates/footer.php'; // Include the footer template
?>

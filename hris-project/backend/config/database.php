<?php
$host = "localhost";
$user = "root"; // MySQL username
$pass = ""; // MySQL password (empty in XAMPP)
$dbname = "hris"; // Your actual database name

$conn = new mysqli($host, $user, $pass, $dbname);

// Check connection
if ($conn->connect_error) {
    die(json_encode(["error" => "Database connection failed: " . $conn->connect_error]));
} else {
    error_log("Database connection successful."); // Debugging log
}
?>

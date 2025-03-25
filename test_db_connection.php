<?php
require_once __DIR__ . "/hris-project/backend/config/database.php";

if ($conn->connect_error) {
    die("Database connection failed: " . $conn->connect_error);
}
echo "Database connection successful!";
?>

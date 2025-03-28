<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);
require_once __DIR__ . "/../config/database.php"; // Correct path

header("Content-Type: application/json");

if (!isset($conn) || $conn->connect_error) {
    die(json_encode(["error" => "Database connection failed: " . ($conn->connect_error ?? "Unknown error")]));
}

// Fetch all employees from the employees table
$sql = "SELECT id, name, position, department, date_hired, address, status, telephone, cellphone, 
               birthdate, birthplace, tin_number, civil_status, sex, sss_number, nationality, weight, height, 
               educational_background, employment_record, training_records
        FROM employees";

$result = $conn->query($sql);

if (!$result) {
    die(json_encode(["error" => "SQL Error: " . $conn->error]));
}

$employees = [];

while ($row = $result->fetch_assoc()) {
    // Decode JSON fields if stored as JSON strings in DB
    $row['educational_background'] = !empty($row['educational_background']) 
        ? json_decode($row['educational_background'], true) 
        : [];
    $row['employment_record'] = !empty($row['employment_record']) 
        ? json_decode($row['employment_record'], true) 
        : [];
    $row['training_records'] = !empty($row['training_records']) 
        ? json_decode($row['training_records'], true) 
        : [];
    
    $employees[] = $row;
}

echo json_encode($employees);
?>

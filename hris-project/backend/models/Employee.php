<?php
require_once __DIR__ . "/../config/database.php";
require_once __DIR__ . "/EmploymentRecord.php"; // Include the file containing TrainingRecord class
error_reporting(E_ALL);
ini_set('display_errors', 1);


header("Content-Type: application/json");

$inputData = json_decode(file_get_contents("php://input"), true);
if (!$inputData) {
    echo json_encode(["success" => false, "message" => "No data received."]);
    exit;
}

// Debugging: Log received data
error_log("Received Data: " . print_r($inputData, true));

// Add CORS headers
header("Access-Control-Allow-Origin: *"); // Allow all origins (adjust as needed)
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");


// Handle preflight requests
if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

// Check database connection
if ($conn->connect_error) {
    echo json_encode(["error" => "Database connection failed: " . $conn->connect_error]);
    exit;
}

// Enable auto-commit (if disabled)
$conn->autocommit(true);

// Get the raw POST data
$json = file_get_contents("php://input");
$data = json_decode($json, true);

// Debug: Check if JSON decoding works
if (!$data) {
    echo json_encode([
        "success" => false,
        "message" => "Invalid JSON: " . json_last_error_msg()
    ]);
    exit;
}

// Escape and sanitize data
$name = $conn->real_escape_string($data['name'] ?? '');
$position = $conn->real_escape_string($data['position'] ?? '');
$department = $conn->real_escape_string($data['department'] ?? '');
$date_hired = $conn->real_escape_string($data['date_hired'] ?? '');
$address = $conn->real_escape_string($data['address'] ?? '');
$status = $conn->real_escape_string($data['status'] ?? '');
$telephone = $conn->real_escape_string($data['telephone'] ?? '');
$cellphone = $conn->real_escape_string($data['cellphone'] ?? '');
$birthdate = $conn->real_escape_string($data['birthdate'] ?? '');
$birthplace = $conn->real_escape_string($data['birthplace'] ?? '');
$tin_number = $conn->real_escape_string($data['tin_number'] ?? '');
$civil_status = $conn->real_escape_string($data['civil_status'] ?? '');
$sex = $conn->real_escape_string($data['sex'] ?? '');
$sss_number = $conn->real_escape_string($data['sss_number'] ?? '');
$nationality = $conn->real_escape_string($data['nationality'] ?? '');
$weight = $conn->real_escape_string($data['weight'] ?? '');
$height = $conn->real_escape_string($data['height'] ?? '');

// Ensure educational_background and employment_record are properly formatted
$educational_background = isset($data['educational_background']) && is_array($data['educational_background']) 
    ? json_encode($data['educational_background']) 
    : '[]';

$employment_record = isset($data['employment_record']) && is_array($data['employment_record']) 
    ? json_encode($data['employment_record']) 
    : '[]';

$training_records = isset($data['training_records']) && is_array($data['training_records']) 
    ? json_encode($data['training_records']) 
    : '[]';

// Escape JSON strings before inserting
$educational_background = $conn->real_escape_string($educational_background);
$employment_record = $conn->real_escape_string($employment_record);
$training_records = $conn->real_escape_string($training_records);

$sql = "INSERT INTO employees (name, position, department, date_hired, address, status, telephone, cellphone, birthdate, birthplace, tin_number, civil_status, sex, sss_number, nationality, weight, height, educational_background, employment_record, training_records) 
        VALUES ('$name', '$position', '$department', '$date_hired', '$address', '$status', '$telephone', '$cellphone', '$birthdate', '$birthplace', '$tin_number', '$civil_status', '$sex', '$sss_number', '$nationality', '$weight', '$height', '$educational_background', '$employment_record', '$training_records')";

// Log the query to a file for debugging
file_put_contents(__DIR__ . "/query.log", $sql . PHP_EOL, FILE_APPEND);

$response = ["success" => true, "message" => "Employee added successfully"];
$errors = [];

// Execute the query and handle errors
if ($conn->query($sql)) {
    $insertedId = $conn->insert_id; // Get the last inserted ID
    $response["id"] = $insertedId;


    // If there are errors in training records, include them in the response
    if (!empty($errors)) {
        $response["message"] = "Employee added successfully, but some training records failed.";
        $response["errors"] = $errors;
    }
} else {
    error_log("SQL Error: " . $conn->error); // Log SQL error
    $response = ["success" => false, "message" => "SQL Error: " . $conn->error, "query" => $sql];
}

// Send the final JSON response
echo json_encode($response);
?>

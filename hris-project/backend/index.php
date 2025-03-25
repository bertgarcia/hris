<?php
require_once 'config/database.php';
require_once 'controllers/EmployeeController.php';

// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Initialize database connection
$database = new Database();
$db = $database->getConnection();

// Initialize the EmployeeController
$employeeController = new EmployeeController($db);

// Set Content-Type header to application/json
header('Content-Type: application/json');

try {
    // Log the incoming request
    error_log("Incoming request: " . $_SERVER["REQUEST_METHOD"] . " " . $_SERVER["REQUEST_URI"]);

    // Handle incoming requests
    $requestMethod = $_SERVER["REQUEST_METHOD"];
    switch ($requestMethod) {
        case 'GET':
            if (isset($_GET['id'])) {
                $employeeController->getEmployee($_GET['id']);
            } else {
                $employeeController->getAllEmployees();
            }
            break;
        case 'POST':
            error_log("POST request received"); // Debugging log
            $employeeController->createEmployee();
            break;
        case 'PUT':
            $employeeController->updateEmployee();
            break;
        case 'DELETE':
            $employeeController->deleteEmployee();
            break;
        default:
            http_response_code(405);
            echo json_encode(["message" => "Method not allowed"]);
            break;
    }
} catch (Exception $e) {
    http_response_code(500);
    error_log("Exception: " . $e->getMessage());
    echo json_encode(["message" => "An unexpected error occurred.", "error" => $e->getMessage()]);
}
?>
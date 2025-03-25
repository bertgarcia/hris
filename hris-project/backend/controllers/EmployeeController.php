<?php
require_once '../config/database.php'; // Adjust path as needed

header("Content-Type: application/json");

// Create Database Connection
$conn = new mysqli(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if ($conn->connect_error) {
    die(json_encode(["error" => "Connection failed: " . $conn->connect_error]));
}

// Fetch Employees from Database
$sql = "SELECT * FROM employees ORDER BY id DESC";
$result = $conn->query($sql);

$employees = [];
while ($row = $result->fetch_assoc()) {
    $employees[] = $row;
}

echo json_encode($employees);
$conn->close();
?>
<?php
require_once './models/Employee.php';
require_once './models/EducationalBackground.php';
require_once './models/EmploymentRecord.php';

// Enable CORS
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header('Content-Type: application/json');

// Enable error reporting for debugging
ini_set('display_errors', 1);
error_reporting(E_ALL);

class EmployeeController {
    private $db;
    private $employee;
    private $educationalBackground;
    private $employmentRecord;

    public function __construct($db) {
        $this->db = $db;
        $this->employee = new Employee($db);
        $this->educationalBackground = new EducationalBackground($db);
        $this->employmentRecord = new EmploymentRecord($db);
    }

    public function getAllEmployees() {
        try {
            $query = "SELECT * FROM employees";
            $stmt = $this->db->prepare($query);
            $stmt->execute();
            $employees = $stmt->fetchAll(PDO::FETCH_ASSOC);

            http_response_code(200);
            echo json_encode($employees);
        } catch (Exception $e) {
            http_response_code(500);
            error_log("Error fetching employees: " . $e->getMessage());
            echo json_encode(["error" => "Failed to fetch employees.", "details" => $e->getMessage()]);
        }
    }

    public function getEmployee($id) {
        try {
            $query = "SELECT * FROM employees WHERE id = :id";
            $stmt = $this->db->prepare($query);
            $stmt->bindParam(':id', $id);
            $stmt->execute();
            $employee = $stmt->fetch(PDO::FETCH_ASSOC);

            if ($employee) {
                http_response_code(200);
                echo json_encode($employee);
            } else {
                http_response_code(404);
                echo json_encode(["error" => "Employee not found."]);
            }
        } catch (Exception $e) {
            http_response_code(500);
            error_log("Error fetching employee: " . $e->getMessage());
            echo json_encode(["error" => "Failed to fetch employee.", "details" => $e->getMessage()]);
        }
    }

    public function createEmployee() {
        try {
            $data = json_decode(file_get_contents("php://input"));

            if (!$data) {
                http_response_code(400);
                echo json_encode(["error" => "Invalid JSON input"]);
                return;
            }

            // Assign employee data
            $this->employee->name = $data->name ?? null;
            $this->employee->position = $data->position ?? null;
            $this->employee->department = $data->department ?? null;
            $this->employee->date_hired = $data->date_hired ?? null;
            $this->employee->address = $data->address ?? null;
            $this->employee->status = $data->status ?? null;
            $this->employee->telephone = $data->telephone ?? null;
            $this->employee->cellphone = $data->cellphone ?? null;
            $this->employee->birthdate = $data->birthdate ?? null;
            $this->employee->birthplace = $data->birthplace ?? null;
            $this->employee->tin_number = $data->tin_number ?? null;
            $this->employee->civil_status = $data->civil_status ?? null;
            $this->employee->sex = $data->sex ?? null;
            $this->employee->sss_number = $data->sss_number ?? null;
            $this->employee->nationality = $data->nationality ?? null;
            $this->employee->weight = $data->weight ?? null;
            $this->employee->height = $data->height ?? null;

            // Create Employee
            if ($this->employee->create()) {
                $employee_id = $this->db->lastInsertId();

                // Process Educational Background
                if (!empty($data->educational_background) && is_array($data->educational_background)) {
                    foreach ($data->educational_background as $education) {
                        $this->educationalBackground->employee_id = $employee_id;
                        $this->educationalBackground->level = $education->level ?? null;
                        $this->educationalBackground->school_name = $education->school_name ?? null;
                        $this->educationalBackground->date_attended = $education->date_attended ?? null;
                        $this->educationalBackground->degree_earned = $education->degree_earned ?? null;
                        $this->educationalBackground->create();
                    }
                }

                // Process Employment Record
                if (!empty($data->employment_record) && is_array($data->employment_record)) {
                    foreach ($data->employment_record as $employment) {
                        $this->employmentRecord->employee_id = $employee_id;
                        $this->employmentRecord->date = $employment->date ?? null;
                        $this->employmentRecord->company = $employment->company ?? null;
                        $this->employmentRecord->address = $employment->address ?? null;
                        $this->employmentRecord->position = $employment->position ?? null;
                        $this->employmentRecord->create();
                    }
                }

                http_response_code(201);
                echo json_encode(["message" => "Employee created successfully."]);
            } else {
                http_response_code(503);
                echo json_encode(["error" => "Unable to create employee."]);
            }
        } catch (Exception $e) {
            http_response_code(500);
            error_log("Error creating employee: " . $e->getMessage());
            echo json_encode(["error" => "Failed to create employee.", "details" => $e->getMessage()]);
        }
    }

    public function updateEmployee() {
        // TODO: Implement logic to update an existing employee
    }

    public function deleteEmployee() {
        // TODO: Implement logic to delete an employee
    }
}
?>

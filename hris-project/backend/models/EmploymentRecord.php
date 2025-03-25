<?php
class EmploymentRecord {
    private $conn;
    private $table_name = "employment_records";

    public $id;
    public $employee_id;
    public $date;
    public $company;
    public $address;
    public $position;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function create() {
        $query = "INSERT INTO " . $this->table_name . " SET
            employee_id=:employee_id, date=:date, company=:company, address=:address, position=:position";

        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":employee_id", $this->employee_id);
        $stmt->bindParam(":date", $this->date);
        $stmt->bindParam(":company", $this->company);
        $stmt->bindParam(":address", $this->address);
        $stmt->bindParam(":position", $this->position);

        if ($stmt->execute()) {
            return true;
        }

        // Log the error for debugging
        error_log("Error executing query: " . implode(":", $stmt->errorInfo()));
        return false;
    }
}
?>
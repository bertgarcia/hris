<?php
class EducationalBackground {
    private $conn;
    private $table_name = "educational_background";

    public $id;
    public $employee_id;
    public $level;
    public $school_name;
    public $date_attended;
    public $degree_earned;

    public function __construct($db) {
        $this->conn = $db;
    }

    public function create() {
        $query = "INSERT INTO " . $this->table_name . " SET
            employee_id=:employee_id, level=:level, school_name=:school_name, date_attended=:date_attended, degree_earned=:degree_earned";

        $stmt = $this->conn->prepare($query);

        $stmt->bindParam(":employee_id", $this->employee_id);
        $stmt->bindParam(":level", $this->level);
        $stmt->bindParam(":school_name", $this->school_name);
        $stmt->bindParam(":date_attended", $this->date_attended);
        $stmt->bindParam(":degree_earned", $this->degree_earned);

        if ($stmt->execute()) {
            return true;
        }

        // Log the error for debugging
        error_log("Error executing query: " . implode(":", $stmt->errorInfo()));
        return false;
    }
}
?>
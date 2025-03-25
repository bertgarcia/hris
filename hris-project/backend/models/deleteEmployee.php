<?php
require_once "database.php"; // Database connection

if (isset($_GET["id"])) {
    $id = intval($_GET["id"]);
    
    // Delete employee from the main table
    $sql = "DELETE FROM employees WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    
    if ($stmt->execute()) {
        echo "Employee deleted successfully.";
    } else {
        echo "Error deleting employee.";
    }
    
    $stmt->close();
    $conn->close();
}
?>

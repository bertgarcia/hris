<?php
require_once '../controllers/EmployeeController.php';

$employeeController = new EmployeeController();

$router = new Router();

$router->get('/api/employees', function() use ($employeeController) {
    return $employeeController->getEmployees();
});

$router->get('/api/employees/{id}', function($id) use ($employeeController) {
    return $employeeController->getEmployee($id);
});

$router->post('/api/employees', function() use ($employeeController) {
    return $employeeController->createEmployee();
});

$router->put('/api/employees/{id}', function($id) use ($employeeController) {
    return $employeeController->updateEmployee($id);
});

$router->delete('/api/employees/{id}', function($id) use ($employeeController) {
    return $employeeController->deleteEmployee($id);
});

$router->run();
?>
<?php
    include '../../backend/config/database.php';
    ?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HRIS - Employee Management</title>
    <link rel="stylesheet" href="../css/styles.css">
</head>
<body>
    <header>
        <h1>Human Resource Information System</h1>
    </header>
    <main>
         <h1>DASHBOARD</h1>
        <div id="dashboard" class="dashboard">
            <div class="card">
                <img src="../images/avatar.png" alt="Employee Icon">
                <h3>Number of Employee</h3>
                <?php
                    $sql = "SELECT * FROM employees";
                    $result = mysqli_query($conn, $sql);
                    if(mysqli_num_rows($result) > 0) {
                        $row = mysqli_fetch_assoc($result);
                       $employee_count = mysqli_num_rows($result);
                       echo $employee_count;
                    }
                    else {
                        echo "0";
                    }
                    
                ?>
            </div>
            <div class="card" onclick="location.href='employee.html'">
                <h3>ADD EMPLOYEE</h3>
                <p>+</p>
            </div>
            <div class="card" onclick="location.href='employee-list.html'">
                <h3>LIST OF EMPLOYEE</h3>
                <p>📋</p>
            </div>
        </div>
        <div id="employee-list"></div>
    </main>
       <script src="../js/scripts.js"></script>
</body>
</html>
# HRIS Project

## Overview
The Human Resource Information System (HRIS) project is designed to manage employee data efficiently. It provides a backend API for handling CRUD operations related to employee information and a frontend interface for user interaction.

## Project Structure
The project is organized into two main directories: `backend` and `frontend`.

### Backend
- **config/database.php**: Contains the database connection configuration.
- **controllers/EmployeeController.php**: Handles CRUD operations for employee data.
- **models/Employee.php**: Represents the employee data model.
- **routes/api.php**: Sets up API routes for employee-related operations.
- **index.php**: Entry point for the backend application.

### Frontend
- **css/styles.css**: Styles for the frontend application.
- **js/scripts.js**: JavaScript code for handling user interactions and API calls.
- **views/index.html**: Main HTML file for the frontend application.
- **views/employee.html**: HTML page for displaying and managing employee information.
- **assets/README.md**: Documentation related to frontend assets.

## Features
- Add, update, delete, and view employee information.
- Responsive frontend design for better user experience.
- API-driven architecture for seamless data handling.

## Setup Instructions
1. Clone the repository to your local machine.
2. Navigate to the `backend` directory and set up your database configuration in `config/database.php`.
3. Install dependencies using Composer:
   ```
   composer install
   ```
4. Start the backend server (e.g., using PHP's built-in server):
   ```
   php -S localhost:8000 -t backend
   ```
5. Open the `frontend/views/index.html` file in your web browser to access the application.

## Usage
- Use the frontend interface to manage employee data.
- Interact with the API through the provided frontend forms and views.

## Contributing
Contributions are welcome! Please submit a pull request or open an issue for any enhancements or bug fixes.
document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("employeeform");

    if (form) {
        form.addEventListener("submit", function (event) {
            event.preventDefault();

            const formData = new FormData(form);
            let data = Object.fromEntries(formData.entries());

            // Structuring Educational Background
            data.educational_background = [
                {
                    level: "Elementary",
                    name_of_school: data.elementary_school || "",
                    date_attended: data.elementary_date || "",
                    degree_earned: data.elementary_degree || ""
                },
                {
                    level: "High School",
                    name_of_school: data.high_school || "",
                    date_attended: data.high_school_date || "",
                    degree_earned: data.high_school_degree || ""
                },
                {
                    level: "Vocational",
                    name_of_school: data.vocational_school || "",
                    date_attended: data.vocational_date || "",
                    degree_earned: data.vocational_degree || ""
                },
                {
                    level: "College",
                    name_of_school: data.college || "",
                    date_attended: data.college_date || "",
                    degree_earned: data.college_degree || ""
                },
                {
                    level: "Post Graduate",
                    name_of_school: data.post_graduate || "",
                    date_attended: data.post_graduate_date || "",
                    degree_earned: data.post_graduate_degree || ""
                }
            ];

            // Structuring Employment Record
            data.employment_record = [
                {
                    date: data.employment_date || "",
                    company: data.company || "",
                    address: data.company_address || "",
                    position: data.employment_position || ""
                }
            ];

            // Structuring Training Records
            data.training_records = [
                {
                    date: data.training_date || "",
                    course_title: data.course_title || "",
                    address: data.training_address || "",
                    trainer: data.trainer || ""
                }
            ];

            // Remove individual input fields since they're now in arrays
            delete data.elementary_school;
            delete data.elementary_date;
            delete data.elementary_degree;
            delete data.high_school;
            delete data.high_school_date;
            delete data.high_school_degree;
            delete data.vocational_school;
            delete data.vocational_date;
            delete data.vocational_degree;
            delete data.college;
            delete data.college_date;
            delete data.college_degree;
            delete data.post_graduate;
            delete data.post_graduate_date;
            delete data.post_graduate_degree;
            delete data.employment_date;
            delete data.company;
            delete data.company_address;
            delete data.employment_position;
          

            // Validate data before sending
            try {
                const jsonData = JSON.stringify(data);
                fetch("http://localhost/hris/hris-project/backend/models/Employee.php", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                    },
                    body: jsonData,
                })
                .then(response => {
                    if (!response.ok) {
                        console.error("HTTP Error Response:", response);
                        throw new Error(`HTTP error! status: ${response.status}`);
                    }
                    return response.text().then(text => {
                        try {
                            return JSON.parse(text);
                        } catch (error) {
                            console.error("Invalid JSON Response:", text);
                            throw new Error("Invalid JSON response from server.");
                        }
                    });
                })
                .then(result => {
                    if (result.success) {
                        alert("Employee added successfully!");
                        form.reset();
                    } else {
                        console.error("Server Error Response:", result);
                        alert(`Failed to add employee. Error: ${result.message || "Unknown error"}`);
                    }
                })
                .catch(error => {
                    console.error("Fetch Error:", error.message);
                    alert(`An error occurred: ${error.message}`);
                });
            } catch (error) {
                console.error("JSON Error:", error.message);
                alert("Failed to process the form data. Please check your input.");
            }
        });
    }
});

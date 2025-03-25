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

            // Convert to JSON before sending
            fetch("http://localhost/hris/hris-project/backend/models/Employee.php", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                },
                body: JSON.stringify(data),
            })
            .then(response => response.json())
            .then(result => {
                if (result.success) {
                    alert("Employee added successfully!");
                    form.reset();
                } else {
                    console.error("Error:", result.error);
                    alert("Failed to add employee.");
                }
            })
            .catch(error => {
                console.error("Error:", error);
                alert("An error occurred while adding the employee.");
            });
        });
    }
});

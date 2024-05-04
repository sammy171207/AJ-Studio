<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AJ Studio Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
      <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css'>
    
    <style>
        /* CSS styles */
        body {
            margin: 0;
            font-family: "Lato", sans-serif;
        }

        /* Sidebar styles */
        .sidebar {
            width: 400px;
            background-color: #ed563b;
            position: fixed;
            height: 100%;
            overflow: auto;
        }

        .sidebar a {
            display: block;
            color: rgb(250, 245, 245);
            padding: 16px;
            text-decoration: none;
            margin-bottom: 10px;
            font-size: 30px;
            text-align: center;
        }

        .sidebar a.active {
            background-color: #d15828;
            color: white;
        }

        .sidebar a:hover:not(.active) {
            background-color: #d55a5a;
            color: white;
        }

        /* Profile styles */
       
        .profile {
            text-align: center;
            position: relative;
        }

        .profile img {
            width: 80%;
            border-radius: 50%;
            margin: 20px auto;
            display: block;
        }

        .view-profile {
            position: absolute;
            top: 50%;
            right: -8px;
            left: 6px;
            transform: translateY(-50%);
            font-size: 2px;
        }

        /* Content styles */
        .content {
            margin-left: 400px;
            padding: 20px 16px;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            gap: 20px; /* Spacing between cards */
        }

        .row {
    display: flex;
    justify-content: left;
    margin-bottom: 20px; /* Adjust as needed */
}

.card {
    width: 300px;
    background-color: #f8f9fa;
    border-radius: 10px;
    padding: 20px;
    margin-right: 20px; /* Adjust margin between cards */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.card:last-child {
    margin-right: 0; /* Remove right margin for last card in row */
}
 table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            justify-content: left;
        }

        th {
            background-color: #ed563b;
            color: #fff;
        }
        .schedule-filter{ margin-top: 20px;
        font-size:25px}
      .schedule-table {
    margin-top: 20px;
}

.schedule-table table {
    width: 100%;
}

.schedule-table th,
.schedule-table td {
    padding: 12px;
    text-align: left;
}

/* Increase width of table columns */
.schedule-table th:first-child,
.schedule-table td:first-child {
    width: 70%;
}

.schedule-table th:nth-child(2),
.schedule-table td:nth-child(2) {
    width: 70%;
}

.schedule-table th:last-child,
.schedule-table td:last-child {
    width: 70%;
}


        /* Media queries for responsiveness */
        @media screen and (max-width: 700px) {
            .sidebar {
                width: 100%;
                height: auto;
                position: relative;
            }
            .sidebar a {
                float: left;
            }
            .content {
                margin-left: 0;
            }
            .card {
                width: 90%; /* Adjusted width for smaller screens */
            }
        }

        @media screen and (max-width: 400px) {
            .sidebar a {
                text-align: center;
                float: none;
            }
        }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="profile">
        <img src="assets\images\pink.jpg" alt="Profile Image">
        <a href="profile" class="view-profile">View Profile</a>
    </div>
    <a class="active" href="#home"><h2 style="text-align: center; margin-top: 20px; font-size: 30px; font-weight: 100%;">
        <span style="color: #ec1010;">AJ</span> <span style="color: white;">Studio</span>
    </h2>
    <a href="#home">Medical Test <i class="bi bi-heart-pulse"></i></a>
    <a href="#news">Active Packs and Subscription <i class="bi bi-person-fill-check"></i></a>
    
    <a href="support.jsp">Support <i class="bi bi-person-lines-fill"></i></a>
    <a href="logout">Logout <i class="bi bi-box-arrow-right"></i></a>
</div>

<!-- Content -->
<!-- Content -->
<div class="content">
    <!-- First row -->
    <div class="row">
        <div class="con">
            <h2>Welcome <%= session.getAttribute("username") %></h2>
            <p>This is your personalized dashboard.</p>
            <p>You can manage your medical records, subscriptions, vouchers, and get support here.</p>
            <p>Explore the menu on the left to get started.</p>
        </div>
    </div>

    <!-- Second row for cards -->
    <div class="row">
        <div class="card">
           <i class="fa-solid fa-dumbbell"></i>
            <h3>Workout</h3>
            <p>Track your workouts here</p>
        </div>
        <div class="card">
            <i class="bi bi-egg-fried"></i>
            <h3>Diet</h3>
            <p>Manage your diet plan</p>
        </div>
        <div class="card">
           <a href="bmi.html"> <i class="bi bi-calculator"></i></a>
            <h3>BMI</h3>
            <p>Calculate your Body Mass Index</p>
        </div>
    </div>
      <div class="row"  style="width: 100%;"><h2>asdfgh</h2></div>
     <div class="row"  style="width: 100%;">
     
        <div class="col-lg-12"> 
            <div class="filters " style="text-align: left;">
           
                <ul class="schedule-filter" style="list-style: none; padding: 0;">
                    <li class="active" data-tsfilter="monday"><button style="background: none; border: none; cursor: pointer;">Monday</button></li>
                    <li data-tsfilter="tuesday"><button style="background: none; border: none; cursor: pointer;">Tuesday</button></li>
                    <li data-tsfilter="wednesday"><button style="background: none; border: none; cursor: pointer;">Wednesday</button></li>
                    <li data-tsfilter="thursday"><button style="background: none; border: none; cursor: pointer;">Thursday</button></li>
                    <li data-tsfilter="friday"><button style="background: none; border: none; cursor: pointer;">Friday</button></li>
                </ul>
            </div>
        </div>
        <div class="col-lg-12">
            <div class="schedule-table filtering" style="width: 100%;">
                <table id="scheduleTable" style="width: 100%;">
                    <thead>
                        <tr>
                            <th>Time</th>
                            <th>Class</th>
                            <th>Instructor</th>
                        </tr>
                    </thead>
                    <tbody style="width: 100%;">
                        <!-- Table content will be dynamically added here -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
    // Schedule data
    var schedule = {
        monday: [
            { time: "10:00AM - 11:30AM", class: "Fitness Class", instructor: "William G. Stewart" },
            { time: "2:00PM - 3:30PM", class: "Body Building", instructor: "Boyd C. Harris" }
        ],
        tuesday: [
            { time: "10:00AM - 11:30AM", class: "Muscle Training", instructor: "Paul D. Newman" },
            { time: "2:00PM - 3:30PM", class: "Body Building", instructor: "Boyd C. Harris" }
        ],
        wednesday: [
            { time: "10:00AM - 11:30AM", class: "Yoga Training Class", instructor: "Hector T. Daigle" },
            { time: "2:00PM - 3:30PM", class: "Advanced Training", instructor: "Bret D. Bowers" }
        ],
        thursday: [
            { time: "10:00AM - 11:30AM", class: "Advanced Training", instructor: "Bret D. Bowers" },
            { time: "2:00PM - 3:30PM", class: "Muscle Training", instructor: "Paul D. Newman" }
        ],
        friday: [
            { time: "10:00AM - 11:30AM", class: "Fitness Class", instructor: "William G. Stewart" },
            { time: "2:00PM - 3:30PM", class: "Yoga Training Class", instructor: "Hector T. Daigle" }
        ]
    };

    // Function to change schedule based on selected day
    function changeSchedule(day) {
        var tableBody = document.querySelector("#scheduleTable tbody");
        tableBody.innerHTML = "";

        schedule[day].forEach(function (entry) {
            var row = "<tr><td>" + entry.time + "</td><td>" + entry.class + "</td><td>" + entry.instructor + "</td></tr>";
            tableBody.innerHTML += row;
        });
    }

    // Event listener to change the table content when a day button is clicked
    var days = document.querySelectorAll(".schedule-filter li button");
    days.forEach(function (day) {
        day.addEventListener("click", function () {
            // Remove active class from all day buttons
            days.forEach(function (d) {
                d.classList.remove("active");
            });
            // Add active class to the clicked day button
            day.classList.add("active");
            // Change the schedule based on the clicked day
            changeSchedule(day.parentElement.getAttribute("data-tsfilter"));
        });
    });

    // Set Monday as active by default and display its schedule
    var defaultDay = "monday";
    var defaultButton = document.querySelector("[data-tsfilter='" + defaultDay + "'] button");
    defaultButton.classList.add("active");
    changeSchedule(defaultDay);
</script>

    
    
   
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Diagnosis Test Reservation Form</title>
    <link rel="stylesheet" href="appointment.css">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,700&display=swap" rel="stylesheet">
</head>
<body>
    <section id="header">
    <div class="header container">
      <div class="nav-bar">
        <div class="brand">
          <a href="pro.html" style="text-decoration: none;"><h1><span>B</span>ala  <span>D</span>iagnostics</h1></a>
        </div>
      </div>
    </div>
  </section>
    <main>
        <div class="background">
            <div class="text">
                <h1>Diagnosis Test Reservation</h1>
                <p>Diagnosed result? Click Here <a href="login.html">Login</a></p>
            </div>
            <div class="box">
                <form action="Appointment" method="get">
                    <div class="form">
                    <input type="text" name="name" style="color:black; font-weight:500;border-bottom: 1px solid white" placeholder="Name" required>
                    <input type="text" name="age" style="color:black; font-weight:500;border-bottom: 1px solid white" placeholder="Age" required>
                    <input type="email" name="email" placeholder="Email ID" style="color:black; font-weight:500;border-bottom: 1px solid white" required>
                    <input type="text" name="contact" placeholder="Contact Number" style="color:black; font-weight:500;border-bottom: 1px solid white" required>
                    <select name="bg">
                      <option value="A+ve">A+ve</option>
                      <option value="A-ve">A-ve</option>
                      <option value="B+ve">B+ve</option>
                      <option value="B-ve">B-ve</option>
                      <option value="AB+ve">AB+ve</option>
                      <option value="AB-ve">AB-ve</option>
                      <option value="O+ve">O+ve</option>
                      <option value="O-ve">O-ve</option>
                     </select>
                     <br>
                     <select name="gender">
	                  <option value="Male">Male</option>
	                  <option value="Female">Female</option>
	                  <option value="Other">Other</option>
	                 </select>
	                 <br>
                    <select name="test">
                      <option value="PET/CT Scan">PET/CT Scan</option>
                      <option value=Nuclear Medicine">Nuclear Medicine</option>
                      <option value="MRI/CT Scan">MRI/CT Scan</option>
                      <option value="ULTRA Scan">ULTRA Scan</option>
                      <option value="Mammogram">Mammogram</option>
                      <option value="DEXA Scan">DEXA Scan</option>
                      <option value="X-Ray">X-Ray</option>
                      <option value="Labaratory">Labaratory</option>
                      <option value="Health Check">Health Check</option>
                      <option value="Genetics">Genetics</option>
                      <option value="Pathology">Pathology</option>
                    </select> 
                    <input type="date" name="date" style="color:black; font-weight:500;border-bottom: 1px solid white" placeholder="dd-mm-yy" required>
                    <input type="time" name="time" style="color:black; font-weight:500;border-bottom: 1px solid white" placeholder="Time Slot" required>  
                    <input type="text" rows="5" cols="55" name="message" style="color:black; font-weight:500;border-bottom: 1px solid white" placeholder="Message" required>  
                    <input type="submit" class="button" value="Submit">
                    </div>
                </form>
            </div>
        </div>
    </main>
    <footer>
<div class="bottom">
<center>
          <span class="credit">Designed and developed by <a href="https://www.instagram.com/_sb_07_/">ShreyanthBalasubramanian</a> | </span>
          <span class="far fa-copyright"></span> 2020 All rights reserved by Bala Diagnostics.
        </center>
</div>
</footer>
</body>
</html>
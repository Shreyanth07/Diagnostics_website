<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Diagnosis Home Service Form</title>
    <link rel="stylesheet" href="consult.css">
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
                <h1>Diagnosis Home Service</h1>
            </div>
            <div class="box">
                <form action="Consult" method="get">
                    <div class="form">
                    <input type="text" name="name" style="border-bottom: 1px solid white" placeholder="Name" required>
                    <input type="text" name="age" style="border-bottom: 1px solid white" placeholder="Age" required>
                    <input type="email" name="email" style="border-bottom: 1px solid white" placeholder="Email ID" required>
                    <input type="text" name="contact" style="border-bottom: 1px solid white" placeholder="Contact Number" required>
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
                    <input type="date" name="date" style="border-bottom: 1px solid white" placeholder="dd-mm-yy" required>
                    <input type="text" rows="5" cols="55" name="message" style="border-bottom: 1px solid white" placeholder="Address" required>
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
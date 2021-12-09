<?php
	
	session_start();


	$servername = "localhost";
	$username = "root";
	$password = "";
	$dbname = "gymsystem_db";

	// Create connection
	$conn = new mysqli($servername, $username, $password, $dbname);

	// Check connection
	if ($conn->connect_error) {
	  die("Connection failed: " . $conn->connect_error);
	}
	
	$Username = $_POST['Username'];
	$Password = $_POST['Password'];
	
	$sql = "SELECT * from login_tbl where Username ='$Username' and Password ='$Password'";
	$result = $conn->query($sql);

	// for login
	if ($result->num_rows > 0)
	 {
	  // output data of each row
		while($row = $result->fetch_assoc())
	   {
		//$_SESSION["User_ID"] = $row['User_ID'];
		//$_SESSION["First_Name"] =$row['First_Name'];
	   	header("location: index.html");
	  }
	} else {
	  	
	  	header("location: log-in.php");	  	
	}	
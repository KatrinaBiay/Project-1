<?php

	$mysqli = new mysqli("localhost", "root", "", "gymsystem_db");
	
	if($mysqli === false){
	die("ERROR: Could not connect. " . $mysqli->connect_error);
	}

	$username = $_POST['Username'];
	$password= $_POST['Password'];
	$fname = $_POST['First_Name'];
	$lname = $_POST['Last_Name'];
	$address = $_POST['Address'];
	$email = $_POST['Email'];
	$weight = $_POST['Weight'];
	$height = $_POST['Height'];
	$gender = $_POST['Gender'];
	$message = "Username already taken! ugh";


	$s = "SELECT * FROM login_tbl where Username = '$username' and Password = '$password'";

	$result = $mysqli->query($s);
	
	$num = mysqli_num_rows($result);
	
	if($result->num_rows > 0)
	{	
		while($row = $result->fetch_assoc()) {

		header("location: log-in.php");
	  }
	  	alert("Hello World");

		function alert($msg) {
		    echo "<script type='text/javascript'>alert('$msg');</script>";
		}
		header("location: sign-up.php");
		
	}
	
	else {
		$reg = "INSERT INTO login_tbl (Username, Password, First_Name, Last_Name, Address, Email, Weight, Height, Gender)
	    VALUES ('$username' ,'$password', '$fname ',  '$lname ' ,'$address','$email', '$weight', '$height', '$gender')";
	    mysqli_query($mysqli, $reg);
	   
	    header("location: log-in.php");
	}

?>
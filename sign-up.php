<html>
<head>
	<meta name="viewport" content="width-device-width, initial-scale=1">
	<link rel="stylesheet" href="css/Sign-up.css">
</head>
<body style="background-image: url('image/gym bg.jpg'); background-repeat: no-repeat; background-size: cover;">
	
	<center>
	<div class="square">

		<form method="POST" action="insert.php">
		<a href="index.html"><img src="image/gym logo.png" class="img"></a>
		<p class="head-text"> Sign up to Buff Me Up Gym! </p>
		
		<input type="text" placeholder="Username" name="Username" class="username" value="">
		<input type="text" placeholder="Password" name="Password"class="password" value="">
		
		<hr>
		<input type="text" placeholder="First Name" class="username" name="First_Name" value="">
		<input type="text" placeholder="Last Name" class="password" name="Last_Name" value="">
		<input type="text" placeholder="Address" class="password" name="Address" value="">
		<input type="text" placeholder="Email" class="password" name="Email" value="">

		<hr>
		<input type="text" placeholder="Weight in kg" class="password" name="Weight" value="">
		<input type="text" placeholder="Height in cm" class="password" name="Height" value="">
		<input type="text" placeholder="Gender" class="password" name="Gender" value="">

		<input type="submit" class="log-in-button" name="submit" value="Sign-up">
		<a href="log-in.php"><p class="sign-up"><u> Already have an account? Log in here.</u></p></a>
		</form>

	</div>
	</center>



</body>
</html>
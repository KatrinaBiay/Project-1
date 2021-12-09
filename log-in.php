<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width-device-width, initial-scale=1">
	<link rel="stylesheet" href="css/Log-in Page.css">
</head>
<body style="background-image: url('image/gym bg.jpg'); background-repeat: no-repeat; background-size: cover;">
	
	<center>
	<div class="square">

		<form method="POST" action="connections.php">

		<a href="index.html"><img src="image/gym logo.png" class="img"></a>
		<p class="head-text"> Sign in to Buff Me Up Gym! </p>
		<input type="text" name="Username" placeholder="Username" class="Username" value="">
		<input type="password" name="Password" placeholder="Password" class="Password" value="">
		<input type="submit" name="submit" value="Log-in" class="log-in-button">
		<a href="sign-up.php"><p class="sign-up"><u> Doesn't have an account? Sign up here.</u></p></a>

		</form>

	</div>
	</center>

</body>
</html>
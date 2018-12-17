<!DOCTYPE html>
<html>
<head>
	<title>Sign-Up</title>

	<style>
		div {
			margin-top: 20px;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>

<?php
		
	
	$firstName= $_POST['nameFirst'];

	//echo "First Name: $firstName <br><br>";

 	 $lastName= $_POST['nameLast'];

	//echo "Last Name: $lastName <br><br>";

 	 $email= $_POST['email'];

	//echo "Email Address: $email <br><br>";

 	 $username= $_POST['username'];

	//echo "Username: $username <br><br>";

 	 $password= $_POST['password'];

	$link = mysqli_connect("localhost", "monty", "password", "377project");

	// Check connection
	if($link === false){
    	die("ERROR: Could not connect. " . mysqli_connect_error());
	}
	// Attempt select query execution
	$sql = "INSERT INTO `user_info` (first_name, last_name, email_address, password, username) VALUES ('$firstName', '$lastName', '$email', '$password', '$username')";

	$result = mysqli_query($link, $sql) or die(mysql_error());

	// Close connection
	mysqli_close($link);



	?>
</body>
</html>

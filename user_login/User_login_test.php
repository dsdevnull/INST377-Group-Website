<!DOCTYPE html>
<html>
<head>
	<title>Team Peer Evaluation - Processor</title>

	<style>
		div {
			margin-top: 20px;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>

<?php


	echo "<h1> Form Output </h1>";

	$firstName= $_POST['nameFirst'];

	echo "First Name: $firstName <br><br>";

  $lastName= $_POST['nameLast'];

	echo "Last Name: $lastName <br><br>";

  $email= $_POST['email'];

	echo "Email Address: $email <br><br>";

  $username= $_POST['username'];

	echo "Username: $username <br><br>";

  $password= $_POST['password'];

	echo "Password: $password <br><br>";


	?>
</body>
</html>

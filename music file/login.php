<!DOCTYPE html>
<html>
<head>
	<title>Music Share</title>

	<style>
		div {
			margin-top: 20px;
			margin-bottom: 20px;
		}
	</style>
</head>
<body>
<br>
<?php

	header('Location: newfeed file/newsfeed.html');

  $username = $_POST["email"];
  $password = $_POST["password"];

  //select database
  //check if form is submitted
  //check if password is correct
  //we need to make a separate form for signup, so we might want the log-in to post to itself
  //log them in and show news feed pages
  //MAKE SURE WE SANITIZE CODE and VALIDATE CODE


echo "<br>";
?>
</body>
</html>

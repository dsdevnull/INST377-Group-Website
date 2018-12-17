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

	header('Location: newfeed_file/newsfeed.html');

  $username = $_POST["email"];
  $password = $_POST["password"];


  if($username = '' && $password = ''){
	echo "Username and Password cannot be blank";
  }

	$link = mysqli_connect("localhost", "monty", "password", "377project");

      	// Check connection
        if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        // Attempt select query execution
        $sql = "";

        $result = mysqli_query($link, $sql) or die(mysql_error());

        // Close connection
        mysqli_close($link);

	

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

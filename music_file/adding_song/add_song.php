<!DOCTYPE html>
<html>
<head>
	<title>Song Form Processor</title>

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

	$songName= $_POST['song'];

	echo "Song Name: $songName <br><br>";

  	$bandName= $_POST['band'];

	echo "Band Name: $bandName <br><br>";

  	$albumName= $_POST['album'];

	echo "Album Name: $albumName <br><br>";

  	$genreName= $_POST['genre'];

	echo "Genre: $genreName <br><br>";

  	$link = mysqli_connect("localhost", "monty", "password", "377project");

        // Check connection
        if($link === false){
        die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        // Attempt select query execution
	$sql1 = "SELECT genre_id FROM genre WHERE genre_type = '$genreName';";
        $result1 = mysqli_query($link, $sql1) or die(mysql_error());
	//echo "SQL1: $sql1";
	while($row = mysqli_fetch_array($result1)){
        	$genreid = $row['genre_id'];
	}
	//echo "RESULT1: $genreid";

       	$sql2 = "INSERT INTO band(genre_id, band_name) VALUES ('$genreid','$bandName');";
        $result2 = mysqli_query($link, $sql2) or die(mysql_error());

	$sql3 = "SELECT band_id FROM band WHERE band_name = '$bandName';";
        $result3 = mysqli_query($link, $sql3) or die(mysql_error());
	while($row = mysqli_fetch_array($result3)){
        	$bandid = $row['band_id'];
	}

       	$sql4 = "INSERT INTO album(band_id, album_name) VALUES ('$bandid','$albumName');";
        $result4 = mysqli_query($link, $sql4) or die(mysql_error());

	$sql5 = "SELECT album_id FROM album WHERE album_name = '$albumName';";
        $result5 = mysqli_query($link, $sql5) or die(mysql_error());
	while($row = mysqli_fetch_array($result5)){
        	$albumid = $row['album_id'];
	}

       	$sql6 = "INSERT INTO song(album_id, song_name) VALUES ('$albumid','$songName');";
        $result6 = mysqli_query($link, $sql6) or die(mysql_error());


        // Close connection
        mysqli_close($link);
	

	?>
</body>
</html>

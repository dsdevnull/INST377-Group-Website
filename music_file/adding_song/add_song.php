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



	?>
</body>
</html>

<?php
	include("login_functions.php");
	if(loggedin()){
	include("connect.php");
			
		$username = $_SESSION['username']; 
		$name = $_GET['name'];
		$artist = $_GET['artist'];
		$youtube = $_GET['youtube'];
		$tuning = $_GET['tuning'];
		$genre = $_GET['genre'];
		$spotify = $_GET['spotify'];
		$date = date("Y-m-d");
				
		$insert = mysql_query("INSERT INTO tutorial (YouTube_URL, Date, Title, Artist, Tuning, Genre, Spotify_URL, Username) VALUES ('$youtube', '$date', '$name', '$artist', '$tuning', '$genre', '$spotify', '$username')") or die("Could not insert.");
				
		header("Location: user_xml.php");
	}
	else header("Location: index.php");
?>
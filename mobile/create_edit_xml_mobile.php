<?php
	include("login_functions.php");
	if(loggedin()){
		include("connect.php");
				
			$id = $_GET['id'];
			$username = $_SESSION['username']; 
			$name = $_GET['name'];
			$artist = $_GET['artist'];
			$youtube = $_GET['youtube'];
			$tuning = $_GET['tuning'];
			$genre = $_GET['genre'];
			$date = date("Y-m-d");
					
			$insert = mysql_query("UPDATE tutorial
			SET YouTube_URL='$youtube', Title='$name', Artist='$artist', Tuning='$tuning', Genre='$genre', Username='$username'
			WHERE Id='$id'") or die("Could not update.");
					
			header("Location: xml_tutorial_mobile.php?id=$id");
	}
	else header("Location: index.php");	

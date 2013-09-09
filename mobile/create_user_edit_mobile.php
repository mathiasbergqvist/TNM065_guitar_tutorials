<?php
	include("login_functions.php");
	if(loggedin()){
		include("connect.php");
			
			$currentname = $_GET['currentname'];	
			$username = $_GET['username']; 
			$pwd = $_GET['pwd'];
			$mail= $_GET['mail'];
					
			$insert = mysql_query("UPDATE user
			SET Username='$username', Password='$pwd', Mail='$mail'
			WHERE Username='$currentname'") or die("Could not update.");
					
			header("Location: user_profile.php");
	}
	else header("Location: index.php");	
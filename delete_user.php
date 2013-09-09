<?php
	include("login_functions.php");
	if(loggedin()){
	include("connect.php");
			
		$username = $_GET['username']; 
		
		mysql_query("DELETE FROM user
					WHERE Username='$username'");
				
		header("Location: user_xml.php");
	}
	else header("Location: index.php");
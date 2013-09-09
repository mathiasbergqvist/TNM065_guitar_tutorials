<?php
	include("login_functions.php");
	if(loggedin()){
	include("connect.php");
			
		$username = $_SESSION['username']; 
		$id = $_GET['id'];
			
		echo $id;
		
		mysql_query("DELETE FROM tutorial
					WHERE Id='$id'");
				
		header("Location: user_xml.php");
	}
	else header("Location: index.php");
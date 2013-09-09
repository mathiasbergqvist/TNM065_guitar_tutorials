<?php
	include("login_functions.php");
	if(loggedin()){
		session_destroy();
		header("Location: index.php");
	}
	else header("Location: index.php");

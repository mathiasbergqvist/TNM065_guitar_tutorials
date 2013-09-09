<?php
	//Uppkopplingslänk.
	$DBlink = mysql_connect("localhost", "root", "localhost_pwd") or die("Could not connect");
	
	//Väljer databas.
	mysql_select_db("tnm065_project_db") or die("Database not found.");
?>
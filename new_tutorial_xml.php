<?php
	include("login_functions.php");
	if(loggedin()){
		header("Content-type:text/xml;charset=utf-8");
		
		echo '<?xml version="1.0"?>';
		echo '<?xml-stylesheet type="text/xsl" href="new_tutorial.xsl"?>';
		echo "<user>";
	
		include("connect.php");
	
		if(isset($_SESSION['username'])){
				
					$username = $_SESSION['username']; 
					$XMLcontent = "";
					$query = "SELECT * FROM user WHERE Username='$username'";
					$result = mysql_query($query) or die("Query failed.");
				
				while ($row = mysql_fetch_object($result)){
				
					$user = $row->Username;
					$mail = $row->Mail;
					$pwd = $row->Password;
					
					$XMLcontent = $XMLcontent . "<username>$username</username>";
					$XMLcontent = $XMLcontent . "<mail>$mail</mail>";
					$XMLcontent = $XMLcontent . "<password>$pwd</password>";
	
				}	
				echo utf8_encode($XMLcontent);
			}		
			echo "</user>";
	}
	else header("Location: index.php");
?>
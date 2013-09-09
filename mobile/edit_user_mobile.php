<?php
include("login_functions.php");
include("connect.php");
	if(loggedin()){
		header("Content-type:text/xml;charset=utf-8");
		
		echo '<?xml version="1.0"?>';
		echo '<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">';
		echo '<?xml-stylesheet type="text/xsl" href="edit_user_mobile.xsl"?>';
		
		
		echo "<user>";
		
		$admin = $_SESSION['username'];
		echo "<admin>$admin</admin>";
		
		$XMLcontent = "";
		$username = $_GET['username'];
		$query = "SELECT * FROM user WHERE Username='$username'";
		$result = mysql_query($query) or die("Query failed.");
		
		while ($row = mysql_fetch_object($result)){
			
			$mail = $row->Mail;
			$pwd = $row->Password;
		
			$XMLcontent = $XMLcontent . "<username><![CDATA[$username]]></username>";
			$XMLcontent = $XMLcontent . "<password><![CDATA[$pwd]]></password>";
			$XMLcontent = $XMLcontent . "<mail><![CDATA[$mail]]></mail>";
				
		}
		echo utf8_encode($XMLcontent);
		echo "</user>";
	}
	else header("Location: index.php");
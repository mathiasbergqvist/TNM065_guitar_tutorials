<?php
	include("connect.php");
	include("login_functions.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">';
	
	if(loggedin()){
		echo '<?xml-stylesheet type="text/xsl" href="loggedin/index_mobile_loggedin.xsl"?>';
		echo "<tutorials>";
		$username = $_SESSION['username'];
		echo "<username>$username</username>";
	}
	else{
			echo '<?xml-stylesheet type="text/xsl" href="index_mobile.xsl"?>';
			echo "<tutorials>";	
	}
	
	$query = "";
	$XMLcontent = "";	
	$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Title";	
	$result = mysql_query($query) or die("Query failed.");
		
	while ($row = mysql_fetch_object($result)){
				
			$title = $row->Title;
			$artist = $row->Artist;
			$id = $row->Id;
	
			$XMLcontent = $XMLcontent . "<tutorial>";
			$XMLcontent = $XMLcontent . "<id>$id</id>";
			$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
			$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
			$XMLcontent = $XMLcontent . "</tutorial>";
		}			
		echo utf8_encode($XMLcontent);
		echo "</tutorials>";
?>
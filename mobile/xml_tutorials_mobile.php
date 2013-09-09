<?php
	include("login_functions.php");
	include("connect.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">';
	
	$query = "";
	$XMLcontent = "";	
	
	if(loggedin()){
		echo '<?xml-stylesheet type="text/xsl" href="loggedin/view_tutorials_mobile_loggedin.xsl"?>';
		$username = $_SESSION['username'];
		echo "<tutorials>";	
		echo "<username>$username</username>";
	}
	else{
		echo '<?xml-stylesheet type="text/xsl" href="view_tutorials_mobile.xsl"?>';
		echo "<tutorials>";	
	}
	
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
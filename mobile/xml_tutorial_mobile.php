<?php
	include("connect.php");
	include("login_functions.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	
	if(loggedin()){
		echo '<?xml-stylesheet type="text/xsl" href="loggedin/display_tutorial_mobile_loggedin.xsl"?>';
		$username = $_SESSION['username'];
		echo "<tutorial>";	
		echo "<sessionuser>$username</sessionuser>";
	}
	else{
		echo '<?xml-stylesheet type="text/xsl" href="display_tutorial_mobile.xsl"?>';
		echo "<tutorial>";
	}
	
	$XMLcontent = "";
	
	$tutorialID = $_GET['id'];
	$query = "SELECT * FROM tutorial WHERE Id=$tutorialID";
	$result = mysql_query($query) or die("Query failed.");
	
	while ($row = mysql_fetch_object($result)){
			
		$id = $row->Id;
		$url = $row->YouTube_URL;
		$date = $row->Date;
		$title = $row->Title;
		$artist = $row->Artist;
		$tuning = $row->Tuning;
		$genre = $row->Genre;
		$spotify = $row->Spotify_URL;
		$user = $row->Username;
		
		$XMLcontent = $XMLcontent . "<id>$id</id>";
		$XMLcontent = $XMLcontent . "<username>$user</username>";
		$XMLcontent = $XMLcontent . "<youtube>$url</youtube>";
		$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
		$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
		$XMLcontent = $XMLcontent . "<date>$date</date>";
		$XMLcontent = $XMLcontent . "<genre>$genre</genre>";
		$XMLcontent = $XMLcontent . "<spotify>$spotify</spotify>";
		$XMLcontent = $XMLcontent . "<tuning>$tuning</tuning>";
			
	}
	echo utf8_encode($XMLcontent);
	echo "</tutorial>";
?>
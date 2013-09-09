<?php
include("login_functions.php");
	if(loggedin()){
		header("Content-type:text/xml;charset=utf-8");
		
		echo '<?xml version="1.0"?>';
		echo '<?xml-stylesheet type="text/xsl" href="edit_tutorial.xsl"?>';
		echo "<tutorial>";
	
		include("connect.php");
		
		$XMLcontent = "";
		$tutorialID = $_GET['id'];
		$query = "SELECT * FROM tutorial WHERE Id=$tutorialID";
		$result = mysql_query($query) or die("Query failed.");
		
		while ($row = mysql_fetch_object($result)){
			
			$url = $row->YouTube_URL;
			$id = $row->Id;
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
	}
	else header("Location: index.php");
?>
<?php
	include("connect.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0" encoding="ISO-8859-1" ?>';
	echo '<rss version="2.0">';
	echo '<channel>';
	echo "<title>Guitar Tutorials RSS feed</title>";
	echo "<link>http://www.mathiasbergqvist.se/TNM065</link>";
	echo "<description>Learn how to play all your favourite songs on guitar from YouTube videos!</description>";
	
	
	$XMLcontent = "";	
	

	$query = "SELECT Id, Title, Artist, Date, Username FROM tutorial ORDER BY Date DESC";		
	

	$result = mysql_query($query) or die("Query failed.");


		while ($row = mysql_fetch_object($result)){
		
			$id = $row->Id;
			$title = $row->Title;
			$artist = $row->Artist;
			$date = $row->Date;
			$username = $row->Username;
			
			$XMLcontent = $XMLcontent . "<item>";
			$XMLcontent = $XMLcontent . "<title><![CDATA[$artist - $title]]></title>";
			$XMLcontent = $XMLcontent . "<link>http://www.mathiasbergqvist.se/TNM065/xml_tutorial.php?id=$id</link>";
			$XMLcontent = $XMLcontent . "<description><![CDATA[Learn how to play $title by $artist. Tutorial added $date by $username.]]></description>";
			$XMLcontent = $XMLcontent . "</item>";
			
		}
		echo utf8_encode($XMLcontent);
		echo "</channel>";
		echo "</rss>";
?>
<?php
	include("login_functions.php");
	include("connect.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	
	$query = "";
	$XMLcontent = "";	
	
	if(loggedin()){
		if(isset($_GET['sort'])){
			$sort = $_GET['sort'];
			if($sort == "artist"){
				echo '<?xml-stylesheet type="text/xsl" href="loggedin/view_tutorials_loggedin_artist_sort.xsl"?>';
				$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Artist";	
			}
			else{
				echo '<?xml-stylesheet type="text/xsl" href="loggedin/view_tutorials_loggedin.xsl"?>';	
				$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Title";	
			}	
		}
		else{
			echo '<?xml-stylesheet type="text/xsl" href="loggedin/view_tutorials_loggedin.xsl"?>';
			$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Title";
		}
		$username = $_SESSION['username'];
		echo "<tutorials>";	
		echo "<username>$username</username>";
	}
	else{
		if(isset($_GET['sort'])){
			$sort = $_GET['sort'];
			if($sort == "artist"){
				echo '<?xml-stylesheet type="text/xsl" href="view_tutorials_artist_sort.xsl"?>';
				$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Artist";	
			}
			else{
				echo '<?xml-stylesheet type="text/xsl" href="view_tutorials.xsl"?>';	
				$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Title";	
			}	
		}
		else{
			echo '<?xml-stylesheet type="text/xsl" href="view_tutorials.xsl"?>';
			$query = "SELECT Id, Title, Artist FROM tutorial ORDER BY Title";
		}
		echo "<tutorials>";	
	}
	

	$result = mysql_query($query) or die("Query failed.");
		
	if(isset($_GET['search'])){
		$letter = $_GET['search'];
		while ($row = mysql_fetch_object($result)){
				
			$title = $row->Title;
			$artist = $row->Artist;
			$id = $row->Id;
			
			if(isset($_GET['sort'])&&$_GET['sort']=="artist"){
										
					if(strncasecmp($letter,$artist,1) == 0){
	
						$XMLcontent = $XMLcontent . "<tutorial>";
						$XMLcontent = $XMLcontent . "<id>$id</id>";
						$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
						$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
						$XMLcontent = $XMLcontent . "</tutorial>";
					}			
				}
			else{
					if(strncasecmp($letter,$title,1) == 0){
						
						$XMLcontent = $XMLcontent . "<tutorial>";
						$XMLcontent = $XMLcontent . "<id>$id</id>";
						$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
						$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
						$XMLcontent = $XMLcontent . "</tutorial>";
					}	
			}
		}
		echo utf8_encode($XMLcontent);
		echo "</tutorials>";	
	}
	else{
		while ($row = mysql_fetch_object($result)){
		
			$id = $row->Id;
			$title = $row->Title;
			$artist = $row->Artist;
			
			$XMLcontent = $XMLcontent . "<tutorial>";
			$XMLcontent = $XMLcontent . "<id>$id</id>";
			$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
			$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
			$XMLcontent = $XMLcontent . "</tutorial>";
			
		}
		echo utf8_encode($XMLcontent);
		echo "</tutorials>";	
	}
?>
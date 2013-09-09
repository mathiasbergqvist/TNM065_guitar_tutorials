<?php
	include("connect.php");
	include("login_functions.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	
	if(loggedin()){
		echo '<?xml-stylesheet type="text/xsl" href="loggedin/search_result_loggedin.xsl"?>';
		$username = $_SESSION['username'];
		echo "<searchcontent>";
		echo "<sessionuser>$username</sessionuser>";
	}
	else{
		echo '<?xml-stylesheet type="text/xsl" href="search_result.xsl"?>';
		echo "<searchcontent>";	
	}
	
	$search = $_GET['search'];
	$type = $_GET['search_type'];
	$XMLcontent = "";
	
	if(isset($search)&&isset($type)){
		if($type == "song"){
			
			$query = "SELECT Artist, Title, Id FROM tutorial WHERE Title='$search'";
			$result = mysql_query($query) or die("Query failed.");
			
			while ($row = mysql_fetch_object($result)){
				
					$id = $row->Id;
					$artist = $row->Artist;
					$title = $row->Title;
					
					$XMLcontent = $XMLcontent . "<tutorial>";		
					$XMLcontent = $XMLcontent . "<id>$id</id>";			
					$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
					$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
					$XMLcontent = $XMLcontent . "</tutorial>";
			}	
			echo utf8_encode($XMLcontent);
			echo "</searchcontent>";
		}
		else if($type == "artist"){
				
			$query = "SELECT Artist, Title, Id FROM tutorial WHERE Artist='$search'";
			$result = mysql_query($query) or die("Query failed.");
			
			while ($row = mysql_fetch_object($result)){
				
					$id = $row->Id;
					$artist = $row->Artist;
					$title = $row->Title;
					
					$XMLcontent = $XMLcontent . "<tutorial>";		
					$XMLcontent = $XMLcontent . "<id>$id</id>";			
					$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
					$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
					$XMLcontent = $XMLcontent . "</tutorial>";
			}	
			echo utf8_encode($XMLcontent);
			echo "</searchcontent>";
		}
		else if($type == "genre"){
					
			$query = "SELECT Artist, Title, Id FROM tutorial WHERE Genre='$search'";
			$result = mysql_query($query) or die("Query failed.");
			
			while ($row = mysql_fetch_object($result)){
				
					$id = $row->Id;
					$artist = $row->Artist;
					$title = $row->Title;
					
					$XMLcontent = $XMLcontent . "<tutorial>";		
					$XMLcontent = $XMLcontent . "<id>$id</id>";			
					$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
					$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
					$XMLcontent = $XMLcontent . "</tutorial>";
			}	
			echo utf8_encode($XMLcontent);
			echo "</searchcontent>";
		}
		else{
					
			$query = "SELECT Artist, Title, Id FROM tutorial WHERE Username='$search'";
			$result = mysql_query($query) or die("Query failed.");
			
			while ($row = mysql_fetch_object($result)){
				
					$id = $row->Id;
					$artist = $row->Artist;
					$title = $row->Title;
					
					$XMLcontent = $XMLcontent . "<tutorial>";		
					$XMLcontent = $XMLcontent . "<id>$id</id>";			
					$XMLcontent = $XMLcontent . "<artist><![CDATA[$artist]]></artist>";
					$XMLcontent = $XMLcontent . "<title><![CDATA[$title]]></title>";
					$XMLcontent = $XMLcontent . "</tutorial>";
			}	
			echo utf8_encode($XMLcontent);
			echo "</searchcontent>";
		}
	}
	
	
	
	
?>

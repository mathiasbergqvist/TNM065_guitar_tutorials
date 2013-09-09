<?php
	include("login_functions.php");
	include("connect.php");
		
	if(loggedin()){
		
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	echo '<!DOCTYPE html PUBLIC "-//WAPFORUM//DTD XHTML Mobile 1.0//EN" "http://www.wapforum.org/DTD/xhtml-mobile10.dtd">';
	
	if(isset($_SESSION['username'])){
		$username = $_SESSION['username'];
		$XMLcontent = "";	
		
		if($username == 'Admin'){
			
			echo '<?xml-stylesheet type="text/xsl" href="user_admin_mobile.xsl"?>';
			echo "<user_content>";
							
			$query = "SELECT * FROM tutorial ORDER BY Title";
			$result = mysql_query($query) or die("Query failed.");
			
			echo "<username>$username</username>";
			
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
			
			$query_users = "SELECT Username FROM user ORDER BY Username";
			$result_users = mysql_query($query_users) or die("Query failed.");
			$allusers = "";
			
			while($row_users = mysql_fetch_object($result_users)){
				$user = $row_users->Username;
				
				$allusers = $allusers . "<user>";
				$allusers = $allusers . "<name><![CDATA[$user]]></name>";
				$allusers = $allusers . "</user>";	
			}
			echo utf8_encode($allusers);
		}
		else{
				
			echo '<?xml-stylesheet type="text/xsl" href="user_mobile.xsl"?>';
			echo "<user_content>";
						
			$query = "SELECT * FROM tutorial WHERE Username='$username' ORDER BY Date";
			$result = mysql_query($query) or die("Query failed.");
			
			echo "<username>$username</username>";
			
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
		}
		}		
		echo "</user_content>";
	}
	else header("Location: index.php");

?>
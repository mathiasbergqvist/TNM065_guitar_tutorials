<?php

	header("Content-type:text/xml;charset=utf-8");
	
	print '<?xml-stylesheet type="text/xsl" href="view_users.xsl"?>';
	print "<users>";

	include("connect.php");
	
	$XMLcontent = "";
	$query = "SELECT * FROM user";
	$result = mysql_query($query) or die("Query failed.");
	
	while ($row = mysql_fetch_object($result)){
		
		$username = $row->Username;
		$pwd = $row->Password;
		$mail = $row->Mail;
		
		$XMLcontent = $XMLcontent . "<user>";
		$XMLcontent = $XMLcontent . "<username>$username</username>";
		$XMLcontent = $XMLcontent . "<password>$pwd</password>";
		$XMLcontent = $XMLcontent . "<mail>$mail</mail>";
		$XMLcontent = $XMLcontent . "</user>";
			
	}
	print utf8_encode($resultString);
	print "</users>";
?>
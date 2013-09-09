<?php
	include("login_functions.php");
	include("connect.php");
	
	header("Content-type:text/xml;charset=utf-8");
	
	echo '<?xml version="1.0"?>';
	
	if(loggedin()){
		echo '<?xml-stylesheet type="text/xsl" href="loggedin/index_loggedin.xsl"?>';
		echo "<start_page_tutorials>";	
		$username = $_SESSION['username'];
		echo "<username>$username</username>";
	}
	else{
		echo '<?xml-stylesheet type="text/xsl" href="index.xsl"?>';
		echo "<start_page_tutorials>";
	}

			
			$XMLcontent_new_tutorails = "";
			$query_newest = "SELECT Id, Title, Artist FROM tutorial ORDER BY Date DESC LIMIT 5";
			$result_newest = mysql_query($query_newest) or die("Query failed.");
			
			echo "<latest_tutorials>";
			
			while ($row = mysql_fetch_object($result_newest)){
				$id = $row->Id;
				$title = $row->Title;
				$artist = $row->Artist;
				
				$XMLcontent_new_tutorails = $XMLcontent_new_tutorails . "<new_tutorial>";
				$XMLcontent_new_tutorails = $XMLcontent_new_tutorails . "<id>$id</id>";;
				$XMLcontent_new_tutorails = $XMLcontent_new_tutorails . "<title><![CDATA[$title]]></title>";
				$XMLcontent_new_tutorails = $XMLcontent_new_tutorails . "<artist><![CDATA[$artist]]></artist>";
				$XMLcontent_new_tutorails = $XMLcontent_new_tutorails . "</new_tutorial>";
			}	
			
			echo utf8_encode($XMLcontent_new_tutorails);
			
			echo "</latest_tutorials>";	
			echo "<random_tutorials>";
			
			$XMLcontent_random_tutorails = "";
			$query_random = "SELECT Id, Title, Artist FROM tutorial ORDER BY RAND() LIMIT 5";
			$result_random = mysql_query($query_random) or die("Query failed.");
			
			while ($row = mysql_fetch_object($result_random)){
				$id = $row->Id;
				$title = $row->Title;
				$artist = $row->Artist;
				
				$XMLcontent_random_tutorails = $XMLcontent_random_tutorails . "<random_tutorial>";
				$XMLcontent_random_tutorails = $XMLcontent_random_tutorails . "<id>$id</id>";
				$XMLcontent_random_tutorails = $XMLcontent_random_tutorails . "<title><![CDATA[$title]]></title>";
				$XMLcontent_random_tutorails = $XMLcontent_random_tutorails . "<artist><![CDATA[$artist]]></artist>";
				$XMLcontent_random_tutorails = $XMLcontent_random_tutorails . "</random_tutorial>";
			}
			echo utf8_encode($XMLcontent_random_tutorails);
			echo "</random_tutorials>";	
			echo "</start_page_tutorials>";		
?>
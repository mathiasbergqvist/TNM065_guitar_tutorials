<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="tutorials">
		
		<html xmlns="http://www.w3.org/1999/xhtml">
  		<head>
   				<title>Guitar Tutorials</title>
				<link rel="stylesheet" type="text/css" href="stylesheet_mobile.css"/>
  		</head>

  		<body>
  			<div id="header">
  				<a href="index.php">
  					<img src="images/mainlogo.png" alt="main_logo" height="48px" />
  				</a>
  				<div id="headertext">Guitar Tutorials</div>
  			</div>
	  			<div id="loginstatus">
	  				<a id="loginlink" href="login_mobile.php">
						Log in
					</a>
	  			</div>
				<br />
				<div id="content">
					<div id="contentframe">
						<form action="search_result_xml_mobile.php" method="get">
							<input type="text" name="search"/><input type="submit" value="Search"/><br />
							Search for: <select name="search_type">
								<option value="song" selected="selected">Song</option>
								<option value="artist">Artist</option>
								<option value="user">User</option>
								<option value="genre">Genre</option>
							</select>
						</form>
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
  		</body>
		</html>
		
	</xsl:template>
	
</xsl:stylesheet>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="tutorials">
		
		<html xmlns="http://www.w3.org/1999/xhtml">
  		<head>
   				<title>Guitar Tutorials</title>
				<link rel="stylesheet" type="text/css" href="stylesheet_mobile.css"/>
				<link rel="shortcut icon" href="images/small_logo.png"/>
  		</head>

  		<body>
  			<div id="header">
  				<a href="index.php">
  					<img src="images/mainlogo.png" alt="main_logo" height="48px" />
  				</a>
  				<div id="headertext">Guitar Tutorials</div>
  			</div>
	  			<div id="loginstatus">
	  				<a id="loginlink" href="logout_mobile.php">
						Log out
					</a>
	  			</div>
				<br />
				<div id="content">
					<div id="contentframe">
						<a href="user_profile.php">
							<img src="images/profilelogo.png" alt="search_logo" height="32px"/>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
							<b style="font-size: 14px;"><xsl:apply-templates select="username"/></b>
						</a>
						<hr />
						<a href="xml_tutorials_mobile.php">
							<img src="images/tutorialslogo.png" alt="tutorials_logo" height="32px"/>&#160;&#160;
							<b style="font-size: 14px;">Tutorials</b>
						</a>
						<hr />
						<a href="search_mobile.php">
							<img src="images/searchlogo.png" alt="search_logo" height="32px"/>&#160;&#160;
							<b style="font-size: 14px;">Search</b>
						</a>
						<hr />
						<a href="new_tutorial_mobile.php">
							<img src="images/newlogo.png" alt="search_logo" height="32px"/>&#160;
							<b style="font-size: 14px;">New tutorial</b>
						</a>
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
  		</body>
		</html>
		
	</xsl:template>
	
	<xsl:template match="username">
			<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
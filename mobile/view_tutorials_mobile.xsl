<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="tutorials">
		
		<html>
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
	  				<a id="loginlink" href="login_mobile.php">
						Log in
					</a>
	  			</div>
				<br />
				<div id="content">
					<div id="contentframe">
						<a class="listlink" href="index.php">
							&#60;- Back
						</a>
						<hr />
						<xsl:apply-templates select="tutorial"/>		
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
  		</body>
		</html>
		
	</xsl:template>
	
	<xsl:template match="tutorial">
				<a class="listlink">
					<xsl:attribute name="href">
							xml_tutorial_mobile.php?id=<xsl:apply-templates select="id"/>
					</xsl:attribute>
					<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/>
					<div class="arrow">></div>
				</a>
			<hr  />
	</xsl:template>
	
	<xsl:template match="title">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="artist">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="id">
			<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
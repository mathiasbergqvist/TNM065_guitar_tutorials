<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="tutorial">
		
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
	  				<a id="loginlink" href="logout_mobile.php">
						Log out
					</a>
	  			</div>
				<br />
				<div id="content">
					<div id="contentframe">
						<a class="listlink" href="xml_tutorials_mobile.php">
							&#60;- Back
						</a>
						<hr />
						<h2><xsl:apply-templates select="artist"/> - <xsl:apply-templates select="title"/></h2> 
							<object width="560" height="315">
								<param name="movie">
									<xsl:attribute name="value">
										http://www.youtube.com/v/<xsl:apply-templates select="youtube"/>
									</xsl:attribute>
								</param>
								<param name="allowFullScreen" value="true">
									
								</param><param name="allowscriptaccess" value="always"></param>
								<embed type="application/x-shockwave-flash" width="280" height="157,5" allowscriptaccess="always" allowfullscreen="true">	
									<xsl:attribute name="src">
										http://www.youtube.com/v/<xsl:apply-templates select="youtube"/>
									</xsl:attribute>
								</embed>
							</object>
							<br />
							<br />
							<div id="attributes">
								<strong>Genre: </strong>
								<xsl:apply-templates select="genre"/>
								<br  />
								<strong>Tuning: </strong>
								<xsl:apply-templates select="tuning"/>
								<br  />	
								<strong>Turorial added by: </strong> <xsl:apply-templates select="username"/>
							</div>		
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
  		</body>
		</html>
		
	</xsl:template>
	
	<xsl:template match="id">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="username">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="artist">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="title">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="youtube">
			<xsl:value-of select="."/>
	</xsl:template>
	
		<xsl:template match="genre">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="tuning">
			<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
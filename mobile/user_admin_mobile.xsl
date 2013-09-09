<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="user_content">
		
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
						<h2>
							<xsl:apply-templates select="username"/>
						</h2>
						<b>All tutorials: </b><br />
						<xsl:apply-templates select="tutorial"/>
						<a href="new_tutorial_xml.php">	
							Add new tutorial
						</a><br /><br />
						<b>All users: </b><br />
						<xsl:apply-templates select="user" />
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
  		</body>
		</html>
		
	</xsl:template>
	
	
	
	<xsl:template match="tutorial">
		<div id="all_tutorials">
			<button type="button" class="styledbutton">
				<xsl:attribute name="onclick">
					window.location='edit_tutorial_xml_mobile.php?id=<xsl:apply-templates select="id"/>'
				</xsl:attribute>
				Edit
			</button>&#160;	
			<a>
				<xsl:attribute name="href">
					xml_tutorial_mobile.php?id=<xsl:apply-templates select="id"/>
				</xsl:attribute>
				<strong><xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/></strong>
			</a>
			<br  />
		</div>
	</xsl:template>
	
	<xsl:template match="user">
		<div id="all_users">
			
			<button type="button" class="styledbutton">
				<xsl:attribute name="onclick">
					window.location='edit_user_mobile.php?username=<xsl:apply-templates select="name"/>'
				</xsl:attribute>
				Edit
			</button>
			<strong><xsl:apply-templates select="name"/></strong>
			<br  />
		</div>
	</xsl:template>
	
	<xsl:template match="username">
			<xsl:value-of select="."/>
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
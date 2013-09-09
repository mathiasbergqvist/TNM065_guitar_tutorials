<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="user">
		
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
							<h1>Edit <xsl:apply-templates select="username"/></h1>
							<b>You need to fill in all fields marked with *.</b><br />
							<form action="create_user_edit_mobile.php" method="get">
								Username:* <input type="text" name="username" >
									<xsl:attribute name="value">
										<xsl:apply-templates select="username"/>
									</xsl:attribute>
								</input><br />
								Password:* <input type="text" name="pwd" >
									<xsl:attribute name="value">
										<xsl:apply-templates select="password"/>
									</xsl:attribute>
								</input><br />
								E-mail:* <input type="text" name="mail" >
									<xsl:attribute name="value">
										<xsl:apply-templates select="mail"/>
									</xsl:attribute>
								</input>
								<br /> 
								<input type="submit" value="Submit edit" />
								<input type="text" name="currentname" style="visibility:hidden">
									<xsl:attribute name="value">
										<xsl:apply-templates select="username"/>
									</xsl:attribute>
								</input>
							</form>
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
  		</body>
		</html>
		
	</xsl:template>
	
	<xsl:template match="admin">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="username">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="password">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="mail">
			<xsl:value-of select="."/>
	</xsl:template>
</xsl:stylesheet>
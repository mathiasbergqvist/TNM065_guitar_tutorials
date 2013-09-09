<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="tutorial">
		
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
							<h1>Edit tutorial</h1>
							<b>You need to fill in all fields marked with *.</b><br />
							<form action="create_edit_xml_mobile.php" method="get">
							<table>
								<tr>
									<td>Song name:* </td>
									<td>
										<input type="text" name="name" >
											<xsl:attribute name="value">
												<xsl:apply-templates select="title"/>
											</xsl:attribute>
										</input><br />
									</td>
								</tr>
									<tr>
										<td>Name of artist:*</td>
										<td>
											 <input type="text" name="artist" >
												<xsl:attribute name="value">
													<xsl:apply-templates select="artist"/>
												</xsl:attribute>
											</input><br />
										</td>
									</tr>
									<tr>
										<td>YouTube link ID:* </td>
										<td>
											<input type="text" name="youtube" >
												<xsl:attribute name="value">
													<xsl:apply-templates select="youtube"/>
												</xsl:attribute>
											</input>ex. DzSgy9XLbZI<br />
										</td>
									</tr>
									<tr>
										<td>Tuning: </td>
										<td>
											<input type="text" name="tuning" >
												<xsl:attribute name="value">
													<xsl:apply-templates select="tuning"/>
												</xsl:attribute>
											</input> ex. standard, drop d, ½ step down...<br />
										</td>
									</tr>
									<tr>
										<td>Genre: </td>
										<td>
											<select name="genre"><br />
												<option selected="selected">
													<xsl:attribute name="value">
														<xsl:apply-templates select="genre"/>
													</xsl:attribute>
													<xsl:apply-templates select="genre"/>
												</option>
												<option value="rock" >Rock</option>
												<option value="pop">Pop</option>
												<option value="metal">Metal</option>
												<option value="acuostic">Acuostic</option>
												<option value="blues">Blues</option>
												<option value="funk">Funk</option>
												<option value="soul">Soul</option>
												<option value="jazz">Jazz</option>
												<option value="reggae">Reggae</option>
												<option value="other">Other</option>
											</select><br /> 
										</td>
									</tr>
							</table>
					
								<input type="submit" class="styledbutton" value="Submit edit" />
								<input type="text" name="id" style="visibility:hidden;">
									<xsl:attribute name="value">
											<xsl:apply-templates select="id"/>
									</xsl:attribute>
								</input>
							</form>
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
	
	<xsl:template match="title">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="artist">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="youtube">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="tuning">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="genre">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="spotify">
			<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
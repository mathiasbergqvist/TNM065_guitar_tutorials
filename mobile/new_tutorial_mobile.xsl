<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="user">
		
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
						<h1>New Tutorial</h1>
							<form action="create_tutorial_xml_mobile.php" method="get">
								<b>You need to fill in all fields marked with *.</b><br />
								<table>
									<tr>
										<td>Song name:*</td>
										<td><input type="text" name="name" /></td>
									</tr>
									<tr>
										<td>Name of artist:*</td>
										<td><input type="text" name="artist" /></td>
									</tr>
									<tr>
										<td>YouTube link ID:*</td>
										<td><input type="text" name="youtube" /> ex. "s3Hs1Rp1aus""</td>
									</tr>
									<tr>
										<td>Tuning:</td>
										<td><input type="text" name="tuning" /> ex. "standard", "drop d", "½ step down"...</td>
									</tr>
									<tr>
										<td>Genre:</td>
										<td>		
											 <select name="genre"><br />
												<option value="rock" selected="selected">Rock</option>
												<option value="pop">Pop</option>
												<option value="metal">Metal</option>
												<option value="acuostic">Acuostic</option>
												<option value="blues">Blues</option>
												<option value="country">Country</option>
												<option value="funk">Funk</option>
												<option value="soul">Soul</option>
												<option value="jazz">Jazz</option>
												<option value="reggae">Reggae</option>
												<option value="other">Other</option>
											</select>
										</td>
									</tr>
									<tr>
										<td><input class="styledbutton" type="submit" value="Add tutorial" /></td>
									</tr>
								</table>							
							</form>
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
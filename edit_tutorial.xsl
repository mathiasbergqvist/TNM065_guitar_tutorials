<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="tutorial">
	<html>
		<head>
			<title>Guitar Tutorials</title>
			<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
			<link rel="shortcut icon" href="images/small_logo.png"/>
		</head>
		<body>
			<div id="pagewrap">
					<header>
						<div id="rss">
							<a href="rss.php" target="_blank">
										<img src="images/rsslogo.png" alt="rss_logo" width="32px" height="32px" />
							</a>
						</div>
						<div id="loginstatus">
							<a href="user_xml.php"><xsl:apply-templates select="username"/></a> | <a href='logout.php'>Log out</a>
						</div>
						<div id="searchfield">
			       				<form action="search_result_xml.php" method="get">
									<input type="text" id="searchbox" name="search" />
									<input type="submit" id="searchbtn" value=""/><br />
									
									<div id="searchdropdown">
										<b>Search for:</b>&#160;
										<select name="search_type">
											<option value="song" selected="selected">Song</option>
											<option value="artist">Artist</option>
											<option value="user">User</option>
											<option value="genre">Genre</option>
										</select>
									</div>
								</form>
			       			</div>
						<nav> 
							<b>
								<a class="navigation" href="index.php" style="color: #cf701e;">START</a>&#160;
		            			<a class="navigation" href="xml_tutorials.php">TUTORIALS</a>&#160;
		            			<a class="navigation" href="new_tutorial_xml.php">NEW TUTORIAL</a>&#160;
		            			<a class="navigation" href="user_xml.php"><xsl:apply-templates select="username"/></a>
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>Edit tutorial</h1>
							<b>You need to fill in all fields marked with *.</b><br />
							<form action="create_edit_xml.php" method="get">
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
										<td>Name of artist:* </td>
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
											</input> ex. DzSgy9XLbZI<br />
										</td>
									</tr>
									<tr>
										<td>Tuning: </td>
										<td><input type="text" name="tuning" >
											<xsl:attribute name="value">
												<xsl:apply-templates select="tuning"/>
											</xsl:attribute>
										</input> ex. standard, drop d, ½ step down...<br /></td>
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
									<tr>
										<td>Spotify URI: </td>
										<td>
											<input type="text" name="spotify" >
													<xsl:attribute name="value">
														<xsl:apply-templates select="spotify"/>
													</xsl:attribute>
											</input> ex. spotify:track:2JPceo9bJGGwiwjspYLhad	
											<br /> 
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
					<footer>
						<p>&#169; Copyright  2012, Guitar Tutorials. Intellectual property of Mathias Bergqvist.</p>
					</footer>
				</div>
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
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="user">
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
							<a href="user_xml.php"><xsl:apply-templates select="admin"/></a> | <a href='logout.php'>Log out</a>
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
		            			<a class="navigation" href="user_xml.php"><xsl:apply-templates select="admin"/></a>
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>Edit <xsl:apply-templates select="username"/></h1>
							<b>You need to fill in all fields marked with *.</b><br />
							<form action="create_user_edit_xml.php" method="get">
								<table>
									<tr>
										<td>Username:* </td>
										<td>
											<input type="text" name="username" >
												<xsl:attribute name="value">
													<xsl:apply-templates select="username"/>
												</xsl:attribute>
											</input>
										</td>
									</tr>
									<tr>
										<td>Password:* </td>
										<td>
											<input type="text" name="pwd" >
												<xsl:attribute name="value">
													<xsl:apply-templates select="password"/>
												</xsl:attribute>
											</input>
										</td>
									</tr>
									<tr>
										<td>E-mail:* </td>
										<td>
											<input type="text" name="mail" >
												<xsl:attribute name="value">
													<xsl:apply-templates select="mail"/>
												</xsl:attribute>
											</input>
										</td>
									</tr>
								</table>
						
								<input type="submit" value="Submit edit" />
								<input type="text" name="currentname" style="visibility:hidden">
									<xsl:attribute name="value">
										<xsl:apply-templates select="username"/>
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
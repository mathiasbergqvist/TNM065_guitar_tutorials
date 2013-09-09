<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="searchcontent">
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
							<a href='login.php'>Log in</a>
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
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>Search results</h1> 			
							<div class="styledboarder">
								<b>
									<xsl:apply-templates select="tutorial"/>
								</b>
							</div>		
						</div>
					</div>
					<footer>
						<p>&#169; Copyright  2012, Guitar Tutorials. Intellectual property of Mathias Bergqvist.</p>
					</footer>
				</div>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="tutorial">
			<a>
				<xsl:attribute name="href">
						xml_tutorial.php?id=<xsl:apply-templates select="id"/>
				</xsl:attribute>
				<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/>
			</a>
			<br  />
	</xsl:template>
	
	<xsl:template match="id">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="title">
			<xsl:value-of select="."/>
	</xsl:template>
	
		<xsl:template match="artist">
			<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
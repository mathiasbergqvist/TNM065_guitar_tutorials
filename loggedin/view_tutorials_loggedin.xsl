<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="tutorials">
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
								<a class="navigation" href="index.php">START</a>&#160;
		            			<a class="navigation" href="xml_tutorials.php"  style="color: #cf701e;">TUTORIALS</a>&#160;
		            			<a class="navigation" href="new_tutorial_xml.php">NEW TUTORIAL</a>&#160;
		            			<a class="navigation" href="user_xml.php"><xsl:apply-templates select="username"/></a>
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>Tutorials</h1>
							<div id="letter_sitemap">
								<a href="xml_tutorials.php">All tutorials</a>
								<br  />
								<a href="xml_tutorials.php?search=A">A</a>&#160; 
								<a href="xml_tutorials.php?search=B">B</a>&#160;
								<a href="xml_tutorials.php?search=C">C</a>&#160;
								<a href="xml_tutorials.php?search=D">D</a>&#160;
								<a href="xml_tutorials.php?search=E">E</a>&#160;
								<a href="xml_tutorials.php?search=F">F</a>&#160;
								<a href="xml_tutorials.php?search=G">G</a>&#160;
								<a href="xml_tutorials.php?search=H">H</a>&#160;
								<a href="xml_tutorials.php?search=I">I</a>&#160;
								<a href="xml_tutorials.php?search=J">J</a>&#160;
								<a href="xml_tutorials.php?search=K">K</a>&#160;
								<a href="xml_tutorials.php?search=L">L</a>&#160;
								<a href="xml_tutorials.php?search=M">M</a>&#160;
								<a href="xml_tutorials.php?search=N">N</a>&#160;
								<a href="xml_tutorials.php?search=O">O</a>&#160;
								<a href="xml_tutorials.php?search=P">P</a>&#160;
								<a href="xml_tutorials.php?search=Q">Q</a>&#160;
								<a href="xml_tutorials.php?search=R">R</a>&#160;
								<a href="xml_tutorials.php?search=S">S</a>&#160;
								<a href="xml_tutorials.php?search=T">T</a>&#160;
								<a href="xml_tutorials.php?search=U">U</a>&#160;
								<a href="xml_tutorials.php?search=V">V</a>&#160;
								<a href="xml_tutorials.php?search=X">X</a>&#160;
								<a href="xml_tutorials.php?search=Y">Y</a>&#160;
								<a href="xml_tutorials.php?search=Z">Z</a>&#160;

								|Sort by: 	
								<form  id="sortform" action="xml_tutorials.php" method="get">
									<input type="radio" name="sort" value="song" checked="true"/> Song
									<input type="radio" name="sort" value="artist" /> Artist
									<input class="styledbutton" type="submit" value="Sort" />
								</form>	
							</div>
					
							<br />
							<div class="styledboarder">
								<xsl:apply-templates select="tutorial"/>
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
			<b>
				<a>
					<xsl:attribute name="href">
							xml_tutorial.php?id=<xsl:apply-templates select="id"/>
					</xsl:attribute>
					<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/>
				</a>
			</b>
			<br  />
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
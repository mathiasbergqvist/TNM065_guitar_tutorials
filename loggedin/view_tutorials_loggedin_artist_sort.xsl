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
									
									<a href="xml_tutorials.php?sort=artist">All tutorials</a>
									<br  />
									<a href="xml_tutorials.php?search=A&#38;sort=artist">A</a>&#160; 
									<a href="xml_tutorials.php?search=B&#38;sort=artist">B</a>&#160;
									<a href="xml_tutorials.php?search=C&#38;sort=artist">C</a>&#160;
									<a href="xml_tutorials.php?search=D&#38;sort=artist">D</a>&#160;
									<a href="xml_tutorials.php?search=E&#38;sort=artist">E</a>&#160;
									<a href="xml_tutorials.php?search=F&#38;sort=artist">F</a>&#160;
									<a href="xml_tutorials.php?search=G&#38;sort=artist">G</a>&#160;
									<a href="xml_tutorials.php?search=H&#38;sort=artist">H</a>&#160;
									<a href="xml_tutorials.php?search=I&#38;sort=artist">I</a>&#160;
									<a href="xml_tutorials.php?search=J&#38;sort=artist">J</a>&#160;
									<a href="xml_tutorials.php?search=K&#38;sort=artist">K</a>&#160;
									<a href="xml_tutorials.php?search=L&#38;sort=artist">L</a>&#160;
									<a href="xml_tutorials.php?search=M&#38;sort=artist">M</a>&#160;
									<a href="xml_tutorials.php?search=N&#38;sort=artist">N</a>&#160;
									<a href="xml_tutorials.php?search=O&#38;sort=artist">O</a>&#160;
									<a href="xml_tutorials.php?search=P&#38;sort=artist">P</a>&#160;
									<a href="xml_tutorials.php?search=Q&#38;sort=artist">Q</a>&#160;
									<a href="xml_tutorials.php?search=R&#38;sort=artist">R</a>&#160;
									<a href="xml_tutorials.php?search=S&#38;sort=artist">S</a>&#160;
									<a href="xml_tutorials.php?search=T&#38;sort=artist">T</a>&#160;
									<a href="xml_tutorials.php?search=U&#38;sort=artist">U</a>&#160;
									<a href="xml_tutorials.php?search=V&#38;sort=artist">V</a>&#160;
									<a href="xml_tutorials.php?search=X&#38;sort=artist">X</a>&#160;
									<a href="xml_tutorials.php?search=Y&#38;sort=artist">Y</a>&#160;
									<a href="xml_tutorials.php?search=Z&#38;sort=artist">Z</a>&#160;
									
									|Sort by: 	
									<form  id="sortform" action="xml_tutorials.php" method="get">
										<input type="radio" name="sort" value="song" /> Song
										<input type="radio" name="sort" value="artist" checked="true"/> Artist
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
					<xsl:apply-templates select="artist"/> - <xsl:apply-templates select="title"/>
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
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="tutorial">
		<html>
			<head>
				<title>Guitar Tutorials</title>
				<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
				<link rel="shortcut icon" href="images/small_logo.png"/>
				<meta property="og:title" >
					<xsl:attribute name="content">
						<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/> 
					</xsl:attribute>
				</meta>
				<meta property="og:url">
					<xsl:attribute name="content">
						http://www.mathiasbergqvist.se/TNM065/xml_tutorial.php?id=<xsl:apply-templates select="id"/>
					</xsl:attribute>
				</meta>
				<meta property="og:type" content="song" />
				<meta property="og:image" content="images/gtlogo.png" />
				<meta property="og:site_name" content="Guitar Tutorials" />
				<meta property="fb:admins" content="529114929" />
			</head>
			<body>
				<div id="fb-root"></div>
				<script>(function(d, s, id) {
				  var js, fjs = d.getElementsByTagName(s)[0];
				  if (d.getElementById(id)) return;
				  js = d.createElement(s); js.id = id;
				  js.src = "//connect.facebook.net/sv_SE/all.js#xfbml=1";
				  fjs.parentNode.insertBefore(js, fjs);
				}(document, 'script', 'facebook-jssdk'));</script>
				<div id="pagewrap">
					<header>
						<div id="rss">
							<a href="rss.php" target="_blank">
										<img src="images/rsslogo.png" alt="rss_logo" width="32px" height="32px" />
							</a>
						</div>
						<div id="loginstatus">
							<a href="user_xml.php"><xsl:apply-templates select="sessionuser"/></a> | <a href='logout.php'>Log out</a>
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
		            			<a class="navigation" href="user_xml.php"><xsl:apply-templates select="sessionuser"/></a>
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1><xsl:apply-templates select="artist"/> - <xsl:apply-templates select="title"/></h1> 
							<object width="560" height="315">
								<param name="movie">
									<xsl:attribute name="value">
										http://www.youtube.com/v/<xsl:apply-templates select="youtube"/>
									</xsl:attribute>
								</param>
								<param name="allowFullScreen" value="true">
									
								</param><param name="allowscriptaccess" value="always"></param>
								<embed type="application/x-shockwave-flash" width="560" height="315" allowscriptaccess="always" allowfullscreen="true">	
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
								<strong>Listen to the song on Spotify: </strong>
								<a>
									<xsl:attribute name="href">
											<xsl:apply-templates select="spotify"/>
									</xsl:attribute>
									<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/>
								</a>
								<br />
								<strong>Turorial added by: </strong> <xsl:apply-templates select="username"/>	
								<br />
								<br />
								<div class="fb-like" data-send="false" data-width="450" data-show-faces="true" data-font="verdana">
									<xsl:attribute name="data-href">
											http://www.mathiasbergqvist.se/TNM065/xml_tutorial.php?id=<xsl:apply-templates select="id"/>
									</xsl:attribute>
								</div>
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
	
	<xsl:template match="sessionuser">
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
	
	<xsl:template match="spotify">
			<xsl:value-of select="."/>
	</xsl:template>
	
</xsl:stylesheet>
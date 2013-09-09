<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="start_page_tutorials">
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
							<h1>Welcome to Guitar Tutorials</h1>
							<div id="twitterbtn">
								<a href="https://twitter.com/GuitarTSwe" class="twitter-follow-button" data-show-count="false">Follow @GuitarTSwe</a>
								<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
							</div>
							<div id="lorem_ipsum">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam eleifend enim quis arcu vehicula mollis. In at lacinia enim. 
								Pellentesque interdum venenatis mi, ut dapibus enim rhoncus a. Donec consectetur sollicitudin venenatis. Aliquam erat volutpat. 
								Cras tristique purus quis dolor laoreet varius. Suspendisse ac lorem tortor, ut sollicitudin nibh. Sed.
							</div>
							<div id="twitter_widget">
								<script src="http://widgets.twimg.com/j/2/widget.js"></script>
								<script>
								new TWTR.Widget({
								  version: 2,
								  type: 'profile',
								  rpp: 5,
								  interval: 30000,
								  width: 250,
								  height: 200,
								  theme: {
								    shell: {
								      background: '#a1a1a1',
								      color: '#000000'
								    },
								    tweets: {
								      background: '#dddddd',
								      color: '#000000',
								      links: '#cf711e'
								    }
								  },
								  features: {
								    scrollbar: false,
								    loop: false,
								    live: true,
								    behavior: 'all'
								  }
								}).render().setUser('GuitarTSwe').start();
								</script>
							</div>
							<br />
							<div id="container">
								<div class="column">
									<h3>Random tutorials</h3>
									<xsl:apply-templates select="random_tutorials"/>
								</div>
								<div class="column">
									<h3>Latest additions</h3>
									<xsl:apply-templates select="latest_tutorials"/>
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
	
	<xsl:template match="username">
			<xsl:value-of select="."/>
	</xsl:template>
	
		<xsl:template match="random_tutorials">
			<b>
				<xsl:apply-templates select="random_tutorial"/>
			</b>
	</xsl:template>
	
	<xsl:template match="random_tutorial">
		<a>
			<xsl:attribute name="href">
				xml_tutorial.php?id=<xsl:apply-templates select="id"/>
			</xsl:attribute>
			<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/>
		</a>
		<br />
	</xsl:template>
	
	<xsl:template match="latest_tutorials">
			<b>
				<xsl:apply-templates select="new_tutorial"/>
			</b>
	</xsl:template>
	
	<xsl:template match="new_tutorial">
		<a>
			<xsl:attribute name="href">
				xml_tutorial.php?id=<xsl:apply-templates select="id"/>
			</xsl:attribute>
			<xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/>
		</a>
		<br />
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
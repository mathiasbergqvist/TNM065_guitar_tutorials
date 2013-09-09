<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	
	<xsl:template match="user_content">
		<html>
			<head>
				<title>Guitar Tutorials</title>
				<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
				<link rel="shortcut icon" href="images/small_logo.png"/>
				<script type="text/javascript">
					
					function confirm_delete(id) {
						var answer = confirm("Do you want to delete this tutorial?")
						if (answer){
							var url = "delete_tutorial.php?id=" + id;
							window.location = url;
						}
						else{
							alert("The tutorial will not be deleted.");
						}
					}
				</script>
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
		            			<a class="navigation" href="xml_tutorials.php">TUTORIALS</a>&#160;
		            			<a class="navigation" href="new_tutorial_xml.php">NEW TUTORIAL</a>&#160;
		            			<a class="navigation" href="user_xml.php" style="color: #cf701e;" ><xsl:apply-templates select="username"/></a>
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>
								<xsl:apply-templates select="username"/>
							</h1>
							<h3>All tutorials </h3>
							<xsl:apply-templates select="tutorial"/>
							<br />
							<a href="new_tutorial_xml.php">	
								<b>Add new tutorial</b>
							</a>
							
							<h3>All users </h3>
							<xsl:apply-templates select="user" />
							<br />
							
							
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
		<div id="all_tutorials">
			<button type="button" class="styledbutton">
				<xsl:attribute name="onclick">
					window.location='edit_tutorial_xml.php?id=<xsl:apply-templates select="id"/>'
				</xsl:attribute>
				Edit
			</button>
			<button type="button" class="styledbutton">
				<xsl:attribute name="onclick">
					confirm_delete(<xsl:apply-templates select="id"/>)
				</xsl:attribute>
				Delete
			</button>&#160;	
			<a>
				<xsl:attribute name="href">
					xml_tutorial.php?id=<xsl:apply-templates select="id"/>
				</xsl:attribute>
				<strong><xsl:apply-templates select="title"/> by <xsl:apply-templates select="artist"/></strong>
			</a>
			<br  />
		</div>
	</xsl:template>
	
	<xsl:template match="user">
		<div id="all_users">
			
			<button type="button" class="styledbutton">
				<xsl:attribute name="onclick">
					window.location='edit_user_xml.php?username=<xsl:apply-templates select="name"/>'
				</xsl:attribute>
				Edit
			</button>
			<button type="button" class="styledbutton">
				<xsl:attribute name="onclick">
					window.location='delete_user.php?username=<xsl:apply-templates select="name"/>'
				</xsl:attribute>
				Delete
			</button>&#160;
			<strong><xsl:apply-templates select="name"/></strong>
			<br  />
		</div>
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
	
	<xsl:template match="id">
			<xsl:value-of select="."/>
	</xsl:template>
	
	<xsl:template match="name">
			<xsl:value-of select="."/>
	</xsl:template>

</xsl:stylesheet>
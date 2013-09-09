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
		            			<a class="navigation" href="new_tutorial_xml.php" style="color: #cf701e;">NEW TUTORIAL</a>&#160;
		            			<a class="navigation" href="user_xml.php"><xsl:apply-templates select="username"/></a>
							</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>New Tutorial</h1>
							<form action="create_tutorial_xml.php" method="get">
								<b>You need to fill in all fields marked with *.</b><br />
								<table>
									<tr>
										<td>Song name:* </td>
										<td><input type="text" name="name" /></td>
									</tr>
									<tr>
										<td>Name of artist:* </td>
										<td><input type="text" name="artist" /></td>
									</tr>
									<tr>
										<td>YouTube link ID:* </td>
										<td><input type="text" name="youtube" /> ex. s3Hs1Rp1aus</td>
									</tr>
									<tr>
										<td>Tuning: </td>
										<td><input type="text" name="tuning" /> ex. standard, drop d, ½ step down...</td>
									</tr>
									<tr>
										<td>Genre: </td>
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
										<td>Spotify URI: </td>
										<td><input type="text" name="spotify" /> ex. spotify:track:7fGwROu7fgPGy0Ru8Q5nBJ</td>
									</tr>
								</table>
								<input class="styledbutton" type="submit" value="Add tutorial" />
							</form>
						</div>
					</div>
				</div>
		</body>
</html>
</xsl:template>

<xsl:template match="username">
		<xsl:value-of select="."/>
</xsl:template>


</xsl:stylesheet>
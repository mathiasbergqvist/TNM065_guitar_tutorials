<?php
	include("login_functions.php");
	include("connect.php");
	if(!loggedin()){
		
	if(isset($_GET['login'])){
		
		$password = $_POST['password'];
		$username = mysql_real_escape_string($_POST['username']);
		
		if($username&&$password){
			
			//$password = md5($password);
			$query = mysql_query("SELECT * FROM user WHERE Username='$username'");
			$numrows = mysql_num_rows($query);
			
			if($numrows!=0){
				
				while($fetch = mysql_fetch_assoc($query)){
						
					$db_user = $fetch['Username'];
					$db_pwd = $fetch['Password'];
					
					echo $db_user." ".$db_pwd;
					
					if($password==$db_pwd){
						$_SESSION['username'] = $username;
						header("Location: index.php");
					}
					else echo "Invalid password for this username.";
				}
			}
			else echo "Username not found.";	
		}
		else echo "You need to enter both username and password.";
	}
	}
	else header("Location: index.php");
?>

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
							<a class="navigation" href="index.php">START</a>&#160;
		            		<a class="navigation" href="xml_tutorials.php">TUTORIALS</a>&#160;
						</b>
		       			</nav>
					</header>
					<div id="content">
						<div id="padding">
							<h1>Log in</h1>
								<form action="login.php?login=true" method="post">
									<table>
										<tr><td>Username:</td><td><input type="text" name="username"/></td></tr>
										<tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
										<tr><td><input type="submit" value="Log in"/></td></tr>	
									</table>	
								</form>	
						</div>
					</div>
			<footer>
				<p>&#169; Copyright  2012, Guitar Tutorials. Intellectual property of Mathias Bergqvist.</p>
			</footer>
		</div>
	</body>
</html>

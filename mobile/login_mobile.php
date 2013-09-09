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
				<link rel="stylesheet" type="text/css" href="stylesheet_mobile.css"/>
				<link rel="shortcut icon" href="images/small_logo.png"/>
			</head>
			<body>
				<div id="header">
		  				<a href="index.php">
  							<img src="images/mainlogo.png" alt="main_logo" height="48px" />
  						</a>
		  				<div id="headertext">Guitar Tutorials</div>
		  		</div>
	  			<div id="loginstatus">
	  				<a id="loginlink" href="login_mobile.php">
						Log in
					</a>
	  			</div>
				<br />
				<div id="content">
					<div id="contentframe">
						<h1>Log in</h1>
							<form action="login_mobile.php?login=true" method="post">
								<table>
									<tr><td>Username:</td><td><input type="text" name="username"/></td></tr>
									<tr><td>Password:</td><td><input type="password" name="password"/></td></tr>
									<tr><td><input type="submit" value="Log in"/></td></tr>	
								</table>	
							</form>	
					</div>
	  			</div>
	  			<div id="footer">&#169; Copyright  2012, Guitar Tutorials.</div>
		</div>
	</body>
</html>

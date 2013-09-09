<!DOCTYPE HTML>
<html>
	<head>
		<title>Guitar Tutorials</title>
		<link rel="stylesheet" type="text/css" href="stylesheet.css"/>
		<?php
			include("login_functions.php");
		?>
	</head>
	<body>
		<div id="bodyshadow">
			<header>
				<div id="loginstatus">
					<?php
						//if(loggedin()){
						if(isset($_SESSION['username'])){
							echo "<a href='index.php?site=home'>".$_SESSION['username']."</a> | <a href='logout.php'>Log out</a>";
						}
						else echo "<a href='index.php?site=login'>Log in</a>";
					?>
				</div>
  					<nav >
  						<b>  
  						<a class="navidation" href="index.php?site=start" class="active" 
  						<?php
							if(!isset($_GET['site']))
							{					
								?> style="color: #cf701e;"  <?php
							}elseif($_GET['site'] == 'start')
							{
								?> style="color: #cf701e;"  <?php
							}
						?>>START</a> 
            			<a class="navidation" href="index.php?site=tutorials"
            			<?php 
							if(isset($_GET['site'])&&$_GET['site'] == 'tutorials') 
							{ 
								?> style="text-decoration:underline" <?php 
							}?>>
            			TUTORIALS</a>
            			<?php
            				if(loggedin()){
            					echo "<a class='navidation' href='index.php?site=new_tutorial'";
            					if(isset($_GET['site'])&&$_GET['site'] == 'new_tutorial') 
								{ 
									echo "style='color: #cf701e;'"; 
								}
            					echo ">NEW TUTORIAL</a>";
								echo "<a class='navidation' href='index.php?site=home'>".$_SESSION['username']."</a>";
							}
            			?>
            			</b>
       				</nav>
			</header>
			<div id="content">
				<?php
					if(isset($_GET['site'])){
						switch($_GET['site']){
							case 'start':
								include("start.php");
								break;
							case 'tutorials':
								include("xml_tutorials.php");
								break;
							case 'home':
								include("user_xml.php");
								break;
							case 'new_tutorial':
								include("new_tutorial_xml.php");
								break;
							case 'login':
								include("login.php");
								break;
						}
					}
					else include("start.php"); 
				?>
			</div>
		</div>
	</body>
</html>
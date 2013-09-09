<?php
	ob_start();
	session_start();
	function loggedin(){
		if(isset($_SESSION['username'])){
			$loggedin = true;
			return $loggedin;
		}
	}
	



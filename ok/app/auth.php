<?php 
require_once('../app/db.php');

function islog(){
	if(isset($_SESSION['Auth']) && isset($_SESSION['Auth']['username']) && isset($_SESSION['Auth']['password'])){
		$sql = "SELECT
	            	`username`,
	            	`password`
	          	FROM
	            	`users`
	          	WHERE
	            	`username` = '".$_SESSION['Auth']['username']."'
	          	AND
	            	`password` = '".$_SESSION['Auth']['password']."';";

	    $req = $db->query($sql);
	    $count = $req->rowCount($sql);

	    if ($count == 1) {
	    	return true;
	    }else{
	    	return false;
	    }
	}else{
		return false;
	}
}
?>
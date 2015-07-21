<?php
	header( "Content-type: text/css" );
	require('../../app/db.php');
	$sql = "SELECT
				`img`
			FROM
				`lieux`
			WHERE
				`titre` = '".$_GET['p']."';";

	if(!($result = $db->query($sql))){
		die( $db->error );
	}

	$row = $result->fetch_assoc();
?>
.affiche {
	position: relative;
	background: url(../img/fond/<?php echo $row['img']; ?>.jpg) no-repeat;
	width: 750px;
	height: 490px;
}

<?php
	$sql = "SELECT
				`actif`
			FROM
				`object`;";

	if(!($result = $db->query($sql))){
            die( $db->error );
	}

	$row = $result->fetch_assoc();

	$actif = $row['actif'];

	if ($actif == 0) {
?>

<?php
    }
?>
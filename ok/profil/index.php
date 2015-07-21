<?php
    session_start();
    require('auth.php');
    if (islog()) {
        
    }else{
        header('Location: ../index.php');
    }
?>
<!-- Begin Head -->
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="UTF-8" />
<title>Le ManWare</title>
<link href="css/reset.css" rel="stylesheet" type="text/css" />
<link href="css/styles.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/css.php?p=<?php echo $_GET['p']; ?>">
<link rel="icon" href="favicon.ico" />
    <!--Begin Font-->
    <link href='http://fonts.googleapis.com/css?family=Slabo+27px' rel='stylesheet' type='text/css'>
    <!--End Font-->
</head>
<!-- End Head -->
    
<body>
<div id="main">

<div class="game">
     <div class="quetes">
        <h3>Quètes</h3>
        <p>Aider Mr Lerdorf à retrouver les composants de son PC pour renvoyer les forces maléfiques dans internet</p>
    </div>
     
<?php
    if (!empty($_GET['obj'])){
        $sql = "INSERT INTO
                    `possede`(
                        `id`,
                        `ref_users`,
                        `ref_object`
                    )
                VALUES (
                    '',
                    '".$_SESSION['Auth']['id']."',
                    '".$_GET['obj']."'
                );";
        if( !$db->query( $sql )){
        die( $db->error );
        }
    }
?>
<div class="ecran">
<div class="affiche">
    <?php
        $sql = "SELECT
                    `id`,
                    `img`,
                    `lien`,
                    `x`,
                    `y`,
                    `lieu`,
                    `msg`
                FROM
                    `object`
                WHERE
                    `lieu` = '".$_GET['p']."';";

        if(!($result = $db->query($sql))){
            die( $db->error );
        }

        while ($row = $result->fetch_assoc()) {
            $obj = $row['id'];
            $img = $row['img'];
            $x = $row['x'];
            $y = $row['y'];
            $lieu = $row['lieu'];
            $lien = $row['lien'];
            $msg = $row['msg'];
                if (!empty($lien)) {
    ?>
    <a href="index.php?p=<?php echo $lien; ?>">
        <div style="position: absolute; top: <?php echo $x; ?>px; left: <?php echo $y; ?>px;"><?php echo $img; ?>
        </div>
        <span style="top: <?php echo $x; ?>px; left: <?php echo $y; ?>px;"><?php echo $msg; ?></span>
    </a>
    <?php
                }else{    
    ?>
    <a href="index.php?p=<?php echo $lieu; ?>&obj=<?php echo $obj; ?>">
        <div style="position: absolute; top: <?php echo $x; ?>px; left: <?php echo $y; ?>px;">
            <?php echo $img; ?>
        </div>
    </a>
    <?php
            }
        }
    ?>
    </div>
    </div>
    <div class="inventaire">
         <h3>Inventaire</h3>
         <ul>
        <?php
            $sql = "SELECT
                        `icone`
                    FROM
                        `object`
                    INNER JOIN
                        `possede`
                    ON
                        object.id = possede.ref_object
                    WHERE
                        possede.ref_users = '".$_SESSION['Auth']['id']."';";

            if(!($result = $db->query($sql))){
                die( $db->error );
            }

            while ($row = $result->fetch_assoc()){
                $icone = $row['icone'];
        ?>
        <li><img src="img/objet/icone/<?php echo $icone; ?>.png" alt="" /></li>
        <?php
            }
        ?>
        </ul>
    </div>
    
    <div class="option">
        <h3>Bonjour <?php echo $_SESSION['Auth']['username']; ?></h3>
        <a href="../logout.php">Déconnexion</a>
    </div>
    
    <div class="interaction">
        <?php
            $sql = "SELECT
                        `msg`
                    FROM
                        `object`
                    WHERE
                        `titre` = '".$_GET['obj']."'
                    AND
                        `actif` = '1';";

            if(!($result = $db->query($sql))){
                die( $db->error );
            }

            $row = $result->fetch_assoc();

            $msg = $row['msg'];
        ?>
        <p><?php echo $msg; ?></p>
    </div>
    
    <div class="info">
            <a href="https://www.youtube.com/watch?v=WGmHaMRAXuI" target="youtube">
            Musique
            <img src="img/son.png">
    </div>
    
</div>
</body>
</html>
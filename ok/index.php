<?php
session_start();
require_once('app/db.php');

if(!empty($_POST)){
  $username = htmlspecialchars(htmlentities(trim($_POST['username'])));
  $password = sha1($_POST['password']);

  $sql = "SELECT
            `id`,
            `username`,
            `password`
          FROM
            `users`
          WHERE
            `username` = '".$username."'
          AND
            `password` = '".$password."';";

  $req = $db->query($sql);
  $count = $req->num_rows;

  if ($count == 1){
    $row = $req->fetch_assoc();

    $id = $row['id'];
    $_SESSION['Auth'] = array(
      'username' => $username,
      'password' => $password,
      'id' => $id
      );
    header('Location: profil/index.php?p=exte');
  }
}else{
  $error_unknow = "Utilisateur inexistant !";
}
?>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Connexion</title>
    <link href="css/styles.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
        <h1>Le ManWare</h1>
        <div class="log">
        <img src="img/vecteur1.png" class="engrenage">
      <form class="form-signin" method="post" action="">
        <?php
          if (!empty($_GET['msg'])) {
        ?>
        <div class="alert alert-success alert-dismissible" role="alert">
        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <?php echo $_GET['msg']; ?>
        </div>
        <?php
          }
        ?>
        <label for="username" class="sr-only"></label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Nom d'utilisateur" required autofocus>
        <label for="password" class="sr-only"></label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Mot de passe" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Se connecter</button>
        <a href="register.php">S'inscrire</a>
      </form>
        </div>
    </div> <!-- /container -->
  </body>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
</html>
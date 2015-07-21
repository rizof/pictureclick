<?php
require_once('app/db.php');

if(isset($_POST['username']) && isset($_POST['email']) && isset($_POST['password'])){
	$username = htmlspecialchars(htmlentities(trim($_POST['username'])));
	$email = htmlspecialchars(htmlentities(trim($_POST['email'])));
	$password = sha1($_POST['password']);

	$sql = "INSERT INTO
				`users`(
					`id`,
					`username`,
					`password`,
					`email`
				)
			VALUES (
				'',
				'".$username."',
				'".$password."',
				'".$email."'
				);";

	$req = $db->query($sql);
	header('Location: index.php?msg=Inscription réussie');
}
?>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>S'inscrire</title>
    <link href="css/styles.css" rel="stylesheet">
  </head>
  <body>
    <div class="container">
        <h1>Le ManWare</h1>


    <div class="log"> 
      <img src="img/vecteur1.png" class="engrenage">
      <form class="form-signin" method="post" action="">
        <label for="username" class="sr-only"></label>
        <input type="text" id="username" name="username" class="form-control" placeholder="Nom d'utilisateur" required autofocus>
        <label for="email" class="sr-only"></label>
        <input type="email" id="email" name="email" class="form-control" placeholder="Adresse email" required>
        <label for="password" class="sr-only"></label>
        <input type="password" id="password" name="password" class="form-control" placeholder="Mot de passe" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">S'inscrire</button>
      </form>
        </div>
    </div> <!-- /container -->
  </body>
</html>
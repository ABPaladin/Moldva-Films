<?php
include './config.php';


if(count($_POST)>0){
    $sql = "SELECT * FROM users WHERE email = '{$_POST['email']}'";

   $result = $connection -> query($sql);
   $user = mysqli_fetch_assoc($result);

   if (password_verify ($_POST['password'], $user['password'])){
    $_SESSION['id']= $user['id'];
    echo "<h2>Welcome</h2>";
    }
    else {
        header("Location: ./registration.php");
    }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel = "stylesheet" href ="styles.css">
    <style>
        <?php include "styles.css" ?>
    </style>
</head>
<body>
<!-- <a href="./index.php" id="icon">Cineplex</a> -->
    <div class="login">
    <h1>Autentificare</h1>
    <form action=" ./login.php" method ="POST">
        <input type="email" name="email" placeholder ="email">
        <input type="password" name="password" placeholder ="password">
        <label for="agree"> <input type="checkbox" name="agree" value="yes" id="agree" /> Tine-ma minte</label>
        <a href="./passwordreset.php" title="ati uitat parola"> Ati uitat parola?</a>
        <button type="submit">Autentificare</button>
        Nu aveti cont pe site?<a href="./registration.php" title="inregistrare"> Inregistrare</a>
    </form>
    </div>
    
</body>
</html>
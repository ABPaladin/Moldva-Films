<?php
include './config.php';


if(count ($_POST) >0) {
    if (isset($_POST['conditii']) && $_POST['conditii'] == 'yes') {

        if($_POST['password'] == $_POST['confirm-password']){
            $hashedPassword = password_hash($_POST['password'], PASSWORD_DEFAULT);
    
        $createSql= "INSERT INTO users (firstname, lastname, email, phone, password) 
        VALUES ('{$_POST['firstname']}', '{$_POST['lastname']}', '{$_POST['email']}', '{$_POST['phone']}', '{$hashedPassword}')";
    
        $connection -> query($createSql);
    
        header("Location: ./login.php");}
      }



}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <h1>ÎNREGISTRARE</h1>
    <p>Hai să pregătim totul pentru prima comandă!</p>
    <link rel = "stylesheet" href ="styles.css">
    <style>
        <?php include "styles.css" ?>
    </style>
</head>
<body>
<!-- <a href="./index.php" id="icon">XmasShop</a> -->
<div class="create">
    <h1>CREATE</h1>
    <form action="./registration.php" method ="POST">
    <input type="text" name="firstname" placeholder="firstname" required>
    <br>
    <input type="text" name="lastname" placeholder="lastname" required>
    <br>
    <input type="text" name="email" placeholder="email" required>
    <br>
    <input type="number" name="phone" placeholder="phone" min=0 required>
    <br>
    <input type="text" name="password" placeholder="parola" required>
    <br>
    <input type="text" name="confirm-password" placeholder="confirma parola" required>
    <br>

    <label for="abonare"> <input type="checkbox" name="abonare" value="yes" id="abonare" /> Abonare la buletinul săptămânal cu promoții și noutățile cinematografelor
    </label>

    <label for="conditii"> <input type="checkbox" name="conditii" value="yes" id="conditii" /> Sunt de acord cu condițiile stipulate în <a href="#" title="politici"> Politica de confidențialitate și condițiile de utilizare a paginii</a>
    </label>
    <button type= "submit">Autentificare</button>
    </form>
</div>

</body>
</html>
<?php

$error = "Los datos no coinciden.";

if (!empty($_POST['user']) && (!empty($_POST['password']))){

    $error = false;
    $user_mail= $_POST['user'];
    $password = $_POST['password'];

    echo $user_mail;

}
else{
    $error = "Los datos no coinciden".
    header("Location:index.php?error= $error");     
}
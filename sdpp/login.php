<?php

include 'db.php';

$usuario = addslashes($_POST['usuario']);
$senha = md5($_POST['senha']);

$query = "SELECT * FROM usuarios WHERE usuario = '$usuario'
AND senha = '$senha'";

$consulta_login = mysqli_query($conexao, $query);

if(mysqli_num_rows($consulta_login)== 1){

    session_start();
    $_SESSION['login'] = true;
    $_SESSION['usuario'] = $usuario;

    header('location:index.php');
}
else{
    header('location:index.php?erro');
}
?>
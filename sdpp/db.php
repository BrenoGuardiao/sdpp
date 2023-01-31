<?php

$servidor = "localhost";
$usuario = "root";
$senha = "";
$db = "sdpp";

$conexao = mysqli_connect($servidor, $usuario, $senha, $db);

$query = "SELECT * FROM mai_pessoais";
$consulta_pessoais = mysqli_query($conexao, $query);

$query = "SELECT * FROM mai_caixas";
$consulta_caixas = mysqli_query($conexao, $query);

$query = "SELECT * FROM usuarios";
$consulta_usuarios = mysqli_query($conexao, $query);

?>

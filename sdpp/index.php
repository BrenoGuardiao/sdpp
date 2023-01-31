<?php

session_start();

include 'db.php'; 

include 'header.php';

if(isset($_SESSION['login'])){
    if(isset($_GET['pagina'])){
        $pagina = $_GET['pagina'];
    }
    else{
        $pagina = 'principal';
    }
}
else{
    $pagina = 'home';
}

switch($pagina){
    case 'teste': include 'views/teste.php'; break;
    case 'principal': include 'views/principal.php'; break;
    case 'caixas': include 'views/caixas.php'; break;
    case 'pessoais': include 'views/pessoais.php'; break;
    case 'home': include 'home.php'; break;
    
}

include 'footer.php';

?>
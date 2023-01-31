    <!DOCTYPE html>
<html>
<head>
    <title>Pagamento Pessoal</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
    <link rel="stylesheet" href="css/estilo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/brands.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/fontawesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/regular.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/solid.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/svg-with-js.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/v4-font-face.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/v4-shims.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/v5-font-face.min.css">
</head>

<body>
    <header>
       <img src="img/royal guard.png" alt="Hero">
       <img src="img/logo.jpg" alt="logo">
        <nav>
        <?php if (isset($_SESSION['login'])){ ?>
            <menu><a class="btn" href="logout.php"><i class="fa-solid fa-arrow-right-to-bracket"></i>
                <?php echo $_SESSION['usuario']; ?> (sair)
            </a></menu>
        <?php } ?>
            <menu><a class="btn" href="?pagina=teste"> <i class="fa-solid fa-radiation"></i> Teste </a></menu>       
            <menu><a class="btn" href="?pagina=caixas"> <i class="fa-solid fa-folder"></i> Caixas </a></menu>  
            <menu><a class="btn" href="?pagina=pessoais"> <i class="fa-solid fa-people-group"></i> Pessoais </a></menu>  
            <menu><a class="btn" href="?pagina=principal"> <i class="fa-solid fa-house"></i> Home </a></menu>
        </nav>
    </header>
</body>
    <div id="conteudo" class="container">
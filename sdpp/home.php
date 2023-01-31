<link rel="stylesheet" href="css/estilo.css">
<h1 style="text-align:center">Sistema de Pagamento de Pessoa</h1>

<form method="post" action="login.php">

    <label class="form-label">Usuário:</label>
    <input  type="text" name="usuario"  placeholder="Nome do usuário"  class="login">

    <br> <br>

    <label class="form-label">Senha:</label>
    <input type="password" name="senha" placeholder="Digite a senha"
    class="login">

    <br> <br>

    <input type="submit" value="Entrar" class="btn btn-success">
    <br><br>

    <?php if (isset($_GET['erro'])){ ?>
    <div class="alert alert-danger" role="alert">
    Usuário e/ou senha inválidos.
  </div>

<?php } ?>

</form>

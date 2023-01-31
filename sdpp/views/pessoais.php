<!DOCTYPE html>
<html>
    <head>
        <title>Pagamento Pessoal (Pessoais)</title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/estilo.css">
        <link rel="stylesheet" href="css/tabela.css">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.12.0/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/dataTables.buttons.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.2.3/js/buttons.print.min.js"></script>
        <script type="text/javascript" language="javascript">
            $(document).ready(function() {
                $('#tabela').DataTable( {
                dom: 'Bfrtip',
                     buttons: [
                    'copy', 'csv', 'excel', 'pdf', 'print'
                    ]
                           
            } );
        } );
        </script>
    </head>
    <body>
        <table id="tabela" class="display nowrap" style="width:100%">
<thead>
<tr>
    <th>Número de Ordem</th>
    <th>Nome</th>
    <th>CPF</th>
    <th>Posto Militar</th>
</tr>
</thead>
<?php
    while($linha= mysqli_fetch_array($consulta_pessoais)){
        echo '<tr><td>'.$linha['nordem'].'</td>';
        echo '<td>'.$linha['nome'].'</td>';  
        echo '<td>'.$linha['cpf'].'</td>';
        echo '<td>'.$linha['pm'].'</td>';    
    }
?>
      
</table>

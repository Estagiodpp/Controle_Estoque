<!DOCTYPE html>
<html lang="en">
<?php include_once("TOP.html"); ?>

<h2 class="title">Lista Sedes</h2>
</div>
<div class="divtable ">
  <table>
    <tr>



      <div style="padding:20px 0" class="container">


        <?php
        if (isset($_GET['excluido'])) {
          echo '<div id="alerta" class="alert alert-danger" role="alert">
                Sede <b></b> excluida com sucesso!.
                </div>';
        }
        ?>


        <table class="table">
          <thead>
            <tr class="principal" text align='center'>
              <th scope="col">
                <h4 text align="center">Id</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Nome da Sede</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Endereço</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Número</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Cep</h4>
              </th>
              <th scope="col">
                <h4 text align="center">Local</h4>
              </th>
            </tr>

          </thead>
          <tbody>

            <?php
            include_once("../../conexao.php");
            $sql = "SELECT * FROM sedes where id<>0";
            $retorno = mysqli_query($conn, $sql);

            while ($array = mysqli_fetch_array($retorno, MYSQLI_ASSOC)) {

              $id = $array['id'];
              $nomesede = $array['nomesede'];
              $endereco = $array['endereco'];
              $nr = $array['nr'];
              $cep = $array['cep'];
              $local = $array['local'];
            ?>
              <tr class="principal" text align='center'>
                <td class="principal" text align='center'>
                  <h5><?= $id ?></h5>
                </td>
       
               <td class="principal" text align='center'>
                  <h5><?= $nomesede ?></h5>
                </td>

                <td class="principal" text align='center'>
                  <h5><?= $endereco ?></h5>
                </td>
                <td class="principal" text align='center'>
                  <h5><?= $nr ?></h5>
                </td>
                  <td class="principal" text align='center'>
                  <h5><?= $cep ?></h5>
                </td>
                  <td class="principal" text align='center'>
                  <h5><?= $local ?></h5>
                </td>

                <td><a class="btn-editar btn btn-sm btn-warning" href="editar_sede.php?id=<?= $id ?>" role="button"><i class="far fa-edit"></i> &nbspEditar&nbsp</a>

                  <a class="btn-editar btn btn-sm btn-danger" href="excluir_sede.php?id=<?= $id ?>" role="button"><i class="far fa-trash-alt"></i> Excluir</a></td>
              </tr>
            <?php } ?>

          </tbody>
        </table>


      </div>



      </body>

</html>

<?php
include_once("../conexao.php");
$NOMEITEM = $_POST['NOMEITEM'];
$TIPO = $_POST['TIPO'];
$DESCRICAO = $_POST['DESCRICAO'];
$patrimonio = $_POST['Patrimonio'];
$datainicio = $_POST['data'];
$datafim = $_POST['datafim'];
$loc = $_POST['loc'];



if ($TIPO == "" || $TIPO == "Escolha uma opção" ||  $DESCRICAO == "" || $datainicio == "") {
  echo "<script> alert('Preencha todos os campos') ;</script>";

  echo "<script>history.go(-1)</script>";
} else {

  if ($patrimonio == "") {
    $patrimonio = 0;
  }


  $suaString = strtolower($NOMEITEM);
if($suaString =="nao existem produtos"){
  echo "<script> alert('Não Existe esse produto) ;</script>";

  echo "<script>history.go(-1)</script>";
  exit;
}

  if ($patrimonio == 0 && $TIPO == "Patrimonio") {
    echo "<script> alert('Patrimonio não pode ser zero') ;</script>";

    echo "<script>history.go(-1)</script>";
    exit;
  }







if($TIPO=='Almoxarifado'){



 $result_usuario = "INSERT INTO garantia(data_ex,descricao ,data_ini,NOMEITEM,LOCALIZACAO)

 VALUES('$datafim','$DESCRICAO','$datainicio','$NOMEITEM','$loc')";



}else{

     //todos seleciona o id  verificar se aj existe no banco 
  $result_select = "SELECT  LOCALIZACAO from controle_prot where PATRIMONIO ='$patrimonio' ";
  $pesq = mysqli_query($conn, $result_select);

  while ($registro = mysqli_fetch_array($pesq)) {

    $LOCALIZACAO_gr2=$registro[0];
    
  }
if(@$LOCALIZACAO_gr2==""){
  $LOCALIZACAO_gr2="local_padrao";
}
  
   $result_usuario = "INSERT INTO garantia_pat(data_ex,descricao ,data_ini,pat,NOMEITEM,LOCALIZACAO)

 VALUES('$datafim','$DESCRICAO','$datainicio','$patrimonio','$NOMEITEM','$LOCALIZACAO_gr2')";




}








 


 



    $pesq = mysqli_query($conn, $result_usuario);

if($pesq ){

   echo "<script> alert('Cadastro feito com sucesso! ') ;</script>";

    echo "<script>history.go(-1)</script>";

}else{

  echo "<script> alert('Garantia já vinculada ao patrimônio digitado! ') ;</script>";

  echo "<script>history.go(-1)</script>";

}



   
  
}




?>
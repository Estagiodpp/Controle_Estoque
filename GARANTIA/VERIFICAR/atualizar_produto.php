<?php
include_once("../conexao.php");



if(isset($_POST['idalmox'])){
       @$idalmox = $_POST['idalmox'];
       $var=0;
       ECHO 'entro no almox';
       echo $idalmox ;
}else{
       if(isset($_POST['idpat'])){
              @$idpat =$_POST['idpat'];
              $var=1;
              ECHO 'entro no pat';
       }else{
              $var=3;  
              ECHO 'entroem nenhum dos dois';
       }

}

/*
$descalmox= $_POST['descalmox'];
$dataini= $_POST['dataini'];
$dataex = $_POST['dataex'];

if($var==1){

$sql = "UPDATE garantia_pat SET  descricao = '$descalmox', data_ini = '$dataini', data_ex = '$dataex'" .
       " WHERE pat =$idpat ";
$update = mysqli_query($conn,$sql);
	
}else{
$sql = "UPDATE garantia SET  descricao = '$descalmox', data_ini = '$dataini', data_ex = '$dataex'" .
       " WHERE id = $idalmox";
$update = mysqli_query($conn,$sql);
}


if($update){
    header("Location: listar_produtos.php?atualizado=".$idalmox); 
}
*/
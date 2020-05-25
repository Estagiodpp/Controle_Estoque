<?php
include_once("../../conexao.php");

$nome = $_POST['nome'];
$localpat = $_POST['localpat'];
$quantidadepat = $_POST['quantidadepat'];
$descpat= $_POST['descpat'];
$datapat = $_POST['datapat'];
$gms = $_POST['gms'];
$prot=$_POST['prot'];
$pat = $_POST['idpat'];
$locatual=$_POST['localizacao1'];
$patselect=$_POST['pat'];
$SERIE=$_POST['SERIE'];





$sql = "UPDATE controle_prot SET NOMEITEM = '$nome', LOCALIZACAO = '$localpat', QUANTIDADE = '$quantidadepat', DATA = '$datapat',DESCRICAO = '$descpat',gms = '$gms',PROTOCOLO='$prot'" .
       " WHERE PATRIMONIO = $pat";
$update = mysqli_query($conn,$sql);

if($update){


$ip= $_SERVER["REMOTE_ADDR"];
$acao="Alteração";
$tipo="Patrimonio";
//aqui faz o historico de transferencia na tabela history
	$historico = "Insert into history(NOMEITEM,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO,ip,acao,LOCALIZACAO)
values('$nome','null','null','$tipo','$quantidadepat ','$descpat',now(),'$pat','$SERIE','$motivo','$protocolo','$ip','$acao','$localpat')
";
$pesq = mysqli_query($conn, $historico);

    header("Location: ../VERIFICAPATRI/listar_produtos.php?atualizado=$pat&loc=$locatual&pagina=1&pat=$patselect"); 
}

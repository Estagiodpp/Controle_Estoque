<?php
include_once("../../conexao.php");

$id = $_GET['id'];
$pat = $_GET['pat'];
$loc = $_GET['loc'];

//setando qual local da data e definindo o formato a ser inserido no banco
date_default_timezone_set('America/Sao_Paulo');
$data= new DateTime();
$data_atual= date_format($data,"Y-m-d H:i:s");


$newpesquisa = "Select * from controle_prot where PATRIMONIO='$id' ";
	$pesq1 = mysqli_query($conn, $newpesquisa);

	while ($registro = mysqli_fetch_array($pesq1)) {
		$nomeitemBANCO = $registro[0];
		$loc = $registro[1];
		$origem = $registro[2];
		$destino = $registro[3];
		$tipo = $registro[4];
		$qtd = $registro[5];
		$descricao = $registro[6];
		$data = $registro[7];
		$pat = $registro[8];
		$SERIE = $registro[9];
		$protocolo=$registro[11];
	}


$sql = "DELETE FROM controle_prot WHERE PATRIMONIO = $id";

$update = mysqli_query($conn,$sql);

if($update){

$ip=$_SERVER['REMOTE_ADDR'];
$acao="Exclusão";
$tipo="Patrimonio";
$pat="0";
$DESTINO="NULL";
$MOTIVO="NULL";


	$historico = "Insert into history(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO,ip,acao)
values('$nomeitemBANCO','$loc','$origem','$DESTINO','$tipo','$qtd','$descricao','$data_atual','$pat','$SERIE','$MOTIVO','$protocolo','$ip','$acao')
";
			$pesq = mysqli_query($conn, $historico);

    header("Location: listar_produtos.php?excluido=$id&pat=$pat&loc=$loc&pagina=1"); 
}

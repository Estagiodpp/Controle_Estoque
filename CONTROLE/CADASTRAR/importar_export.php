<?php



 class importar_export{



public function importar($nome_arquivo,$tabela){
    include_once("../conexao.php");
    include_once("../conexao2.php");

  //verificando se o arquivo e csv

  $ext=explode(".",$nome_arquivo);
  $extensao=end($ext);
  if($extensao!="csv"){
      echo"extensão inválida tente novamente!";
      exit;
  }else{
    // Exemplo de scrip para exibir os nomes obtidos no arquivo CSV de exemplo


    $delimitador = ';';
    $cerca = '"';
    // Abrir arquivo para leitura
    $f = fopen($nome_arquivo, 'r');


if ($f) { 

    // Ler cabecalho do arquivo
    $cabecalho = fgetcsv($f, 0, $delimitador, $cerca);

    // Enquanto nao terminar o arquivo
    while (!feof($f)) { 

        // Ler uma linha do arquivo
        $linha = fgetcsv($f, 0, $delimitador, $cerca);
        if (!$linha) {
            continue;
        }

        // Montar registro com valores indexados pelo cabecalho
        $registro = array_combine($cabecalho, $linha);

        //verificando se está faltando alguma coluna no
        if(isset($registro[NOMEITEM])==0||$registro[LOCALIZACAO]==0||$registro[ORIGEM]==0||$registro[DESTINO]==0||$registro[TIPO]==0||$registro[QUANTIDADE]==0||$registro[DESCRICAO]==0||$registro[PATRIMONIO]==0||$registro[NR_SERIE]==0||$registro[id]==0||$registro[id]==0||$registro[MOTIVO]==0||$registro[PROTOCOLO]==0||$registro[gms]==0){
            echo"Está faltando campos no Arquivo";
            exit;
        }

     
switch($tabela){

    case "controle":
    try{
        $result_usuario = "INSERT INTO controle(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms)

        VALUES('$registro[NOMEITEM]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]','$registro[QUANTIDADE]','$registro[DESCRICAO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[id]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[gms]')";
       
       
        $pesq = mysqli_query($conn, $result_usuario);

      }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};

    break;

    case "controle_prot":
        try{
            $result_usuario = "INSERT INTO controle(NOMEITEM,LOCALIZACAO,ORIGEM,DESTINO,TIPO,QUANTIDADE,DESCRICAO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms)
    
            VALUES('$registro[NOMEITEM]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]','$registro[QUANTIDADE]','$registro[DESCRICAO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[id]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[gms]')";
           
           
            $pesq = mysqli_query($conn, $result_usuario);
    
          }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
    
        break;
        case "history":
           
        echo"nada implementado ainda";
        break;
        
        case "garantia":
        echo"nada implementado ainda";
        
        break;
            
        case "sedes":
        echo"nada implementado ainda"; 
        
        break;
        
        default:
        echo"escolha de tabela inválida";
        break;

    

}
          
    
        
      

    
  
}

fclose($f);


}


  }

    

}
 }
    

    ?>

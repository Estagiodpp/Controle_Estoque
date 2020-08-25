<?php



 class importar_export{



public function importar($caminho,$nome_arquivo,$tabela,$tipo){
    include_once("../conexao.php");
    include_once("../conexao2.php");

  //verificando se o arquivo e csv





    $delimitador = ';';
    $cerca = '"';
    // Abrir arquivo para leitura
    $f = fopen($caminho, 'r');



//* MEU DEBUG
//var_dump($nome_arquivo);




if ($f) { 

    // Ler cabecalho do arquivo
    $cabecalho = fgetcsv($f, 0, $delimitador, $cerca);

    // Enquanto nao terminar o arquivo
    $cont=0;
    $cont1=0;
    while (!feof($f)) { 

        // Ler uma linha do arquivo
        $linha = fgetcsv($f, 0, $delimitador, $cerca);
        if (!$linha) {
            continue;
        }
        
        // Montar registro com valores indexados pelo cabecalho
        $registro = array_combine($cabecalho, $linha);

      $data_ini = str_replace("/", "-",$registro['DATA_INI'] );
 $data_ini=date('Y/m/d', strtotime($data_ini));

 $data_ex = str_replace("/", "-",$registro['DATA_EX'] );
 $data_ex =date('Y/m/d', strtotime($data_ex));
     
switch($tabela){

    case "controle":

           //verificando se está faltando alguma coluna no
            


            try{
                $result_usuario = "INSERT INTO controle(NOMEITEM,DESCRICAO,QUANTIDADE,LOCALIZACAO,ORIGEM,DESTINO,TIPO,DATA,PATRIMONIO,NR_SERIE,id,MOTIVO,PROTOCOLO,gms)

                VALUES('$registro[NOMEITEM]','$registro[DESCRICAO]','$registro[QUANTIDADE]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[ID]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[GMS]')";
               
               
                $pesq = mysqli_query($conn, $result_usuario);
                
                if($pesq==0){
                  $cont++;
                  echo"<script>alert(Erro ao Importar $registro[NOMEITEM] );</script>";
                }else
                {
                  $cont1++; // conta quantas importações foram feitas
                }


              }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};

    break;

    case "controle_prot":

              // primeira faz verificações de colunas das planilha

             /*

validao desativado*/

     /*          if(@$registro['NOMEITEM']==""||@$registro['DESCRICAO']==""||@$registro['QUANTIDADE']==""||@$registro['LOCALIZACAO']==""||@$registro['ORIGEM']==""||@$registro['DESTINO']==""||@$registro['TIPO']==""||@$registro['DATA']==""||@$registro['PATRIMONIO']==""||@$registro['NR_SERIE']==""||@$registro['MOTIVO']==""||@$registro['PROTOCOLO']==""||@$registro['GMS']==""){
                  echo "<script>alert('Existem campos em branco ,se não souber coloque ex: null ');history.back()</script>";
                    exit;
                  }
*/

          // faz o insert na tabela com try cat caso houver erro

          try{
            $result_usuario = "INSERT INTO controle_prot(NOMEITEM,DESCRICAO,QUANTIDADE,LOCALIZACAO,ORIGEM,DESTINO,TIPO,DATA,PATRIMONIO,NR_SERIE,MOTIVO,PROTOCOLO,gms)

            VALUES('$registro[NOMEITEM]','$registro[DESCRICAO]','$registro[QUANTIDADE]','$registro[LOCALIZACAO]','$registro[ORIGEM]','$registro[DESTINO]','$registro[TIPO]',NOW(),'$registro[PATRIMONIO]','$registro[NR_SERIE]','$registro[MOTIVO]','$registro[PROTOCOLO]','$registro[GMS]')";
           
           
            $pesq = mysqli_query($conn, $result_usuario);

          //faz contador para ver quantos registros foram inseridos caso tenha dado certo

            if($pesq==0){
              $cont++;
              echo"<script>alert(Erro ao Importar $registro[NOMEITEM] );</script>";
            }else
            {
              $cont1++; // conta quantas importações foram feitas
            }
              
                    }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
    
        break;
 



// faz insert na tabela de garantia de almoxarifado
        case "garantia":

      


            // faz o insert na tabela com try cat caso houver erro

            try{
              $result_usuario = "INSERT INTO garantia(data_ini,data_ex,descricao,NOMEITEM,LOCALIZACAO)

              VALUES('$data_ini','$data_ex','$registro[DESCRICAO]','$registro[NOMEITEM]','$registro[LOCALIZACAO]')";
             
             
              $pesq = mysqli_query($conn, $result_usuario);

            //faz contador para ver quantos registros foram inseridos caso tenha dado certo

              if($pesq==0){
                $cont++;
                echo"<script>alert(Erro ao Importar  );</script>";
              }else
              {
                $cont1++; // conta quantas importações foram feitas
              }
                



    }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
        
        break;



// faz insert na tabela de garantia de patrimonios
        case "garantia_pat":

      


            // faz o insert na tabela com try cat caso houver erro

            try{
              $result_usuario = "INSERT INTO garantia_pat(data_ini,data_ex,descricao,pat,NOMEITEM,LOCALIZACAO)

              VALUES('$data_ini','$data_ex','$registro[DESCRICAO]','$registro[PAT]','$registro[NOMEITEM]','$registro[LOCALIZACAO]')";
             
             
              $pesq = mysqli_query($conn, $result_usuario);

            //faz contador para ver quantos registros foram inseridos caso tenha dado certo

              if($pesq==0){
                $cont++;
                echo"<script>alert(Erro ao Importar  );</script>";
              }else
              {
                $cont1++; // conta quantas importações foram feitas
              }
                



    }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
        
        break;
            
        case "sedes":
        
 
 if(@$registro['ID']==""||@$registro['NOMESEDE']==""||@$registro['ENDERECO']==""||@$registro['NR']==""||@$registro['CEP']==""||@$registro['LOCAL']==""){
  echo "<script>alert('Existem campos em branco ,se não souber coloque ex: null ');history.back()</script>";

                    }
            // faz o insert na tabela com try cat caso houver erro

            try{
              $result_usuario = "INSERT INTO sedes(id,nomesede,endereco,nr,cep,local_sede)

              VALUES('$registro[ID]','$registro[NOMESEDE]','$registro[ENDERECO]','$registro[NR]','$registro[CEP]','$registro[LOCAL]')";
             
             
              $pesq = mysqli_query($conn, $result_usuario);

            //faz contador para ver quantos registros foram inseridos caso tenha dado certo

              if($pesq==0){
                $cont++;
                echo"<script>alert(Erro ao Importar  );</script>";
              }else
              {
                $cont1++; // conta quantas importações foram feitas
              }
                }catch(Exception $e){echo 'Exceção capturada: ',  $e->getMessage(), "\n";};
        break;
        
        default:
        echo"<script>alert(Opção Inválida !  );</script>";
        break;

    

}
          
    
        
      

    
  
}

//mostra se teve erro ao importar e a quantidade de importações feitas

if($cont==0 && $cont1==0){
  
  echo "<script>alert('Todas Importações tiveram erro!');history.back()</script>";
}else{
  echo "<script>alert('$cont1 Importações feitas');history.back()</script>";
}


fclose($f);


}


  }

    

}
 
    

    ?>

#INCLUDE "TOTVS.CH"

// AULA QUE VAI TRAVAR COM O RECLOCK PARA ALTERAR
user function BANCO005()

    local aArea := (GetArea())
    local aDados := {}
    Private lMSErroAuto := .F.  //smp iniciar c F, pq se tiver T é pq deu algum erro

    aDados := {;             
              {"ZZ1_CDGO", "000005",    Nil},;
              {"ZZ1_CLI", "CUSTOMER 5", Nil},;
              {"ZZ1_RAZ", "NAME 5",     Nil};
              }

// INICIO DO CONTROLE DE TRANSAÇÃO
   Begin Transaction
   // chama cadastro de produto
   MSExecAuto({|x,y|Mata010(x,y)},aDados,3)  // N vai funcionar pq a rotina desse BD é diferente, ele foi criado, n veio com o sistema, portanto n sei agora qual rotina dele, mas n é Mata010
   
   // 3 operação de inclusao, 4 op d alteração, 5 op d exclusão

   // Caso ocorra some mistake 
   if lMSErroAuto := .T.
      Alert("Ocorreram erros durante a operação")
      MostraErro()
      DisarmTransaction()
   Else 
   MsgInfo("Operação finalizada!")
   endif
   End Transaction
   RestArea(aArea)   

return

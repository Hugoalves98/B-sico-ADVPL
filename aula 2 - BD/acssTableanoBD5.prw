#INCLUDE "TOTVS.CH"

// AULA QUE VAI TRAVAR COM O RECLOCK PARA ALTERAR
user function BANCO005()

    local aArea := (GetArea())
    local aDados := {}
    Private lMSErroAuto := .F.  //smp iniciar c F, pq se tiver T � pq deu algum erro

    aDados := {;             
              {"ZZ1_CDGO", "000005",    Nil},;
              {"ZZ1_CLI", "CUSTOMER 5", Nil},;
              {"ZZ1_RAZ", "NAME 5",     Nil};
              }

// INICIO DO CONTROLE DE TRANSA��O
   Begin Transaction
   // chama cadastro de produto
   MSExecAuto({|x,y|Mata010(x,y)},aDados,3)  // N vai funcionar pq a rotina desse BD � diferente, ele foi criado, n veio com o sistema, portanto n sei agora qual rotina dele, mas n � Mata010
   
   // 3 opera��o de inclusao, 4 op d altera��o, 5 op d exclus�o

   // Caso ocorra some mistake 
   if lMSErroAuto := .T.
      Alert("Ocorreram erros durante a opera��o")
      MostraErro()
      DisarmTransaction()
   Else 
   MsgInfo("Opera��o finalizada!")
   endif
   End Transaction
   RestArea(aArea)   

return

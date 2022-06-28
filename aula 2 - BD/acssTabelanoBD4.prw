#INCLUDE "TOTVS.CH"
// AULA QUE VAI TRAVAR COM O RECLOCK PARA ALTERAR
user function BANCO004()

    local aArea := ZZ1 -> (GetArea())
    

    DbSelectArea('ZZ1')
    Sb1->(DbSetOrder(1))
    Sb1->(DbGoTop())

    // Iniciar transação
    Begin Transaction 

    MsgInfo("A descrição do produto será alterada!", "Warning")

    if ZZ1->(DbSeek(FWxFilial('ZZ1') + '000004'))
    RecLock('ZZ1', .F.)  //.F. trava p alterar, .T. tbm é travado, mas p inclusão
    Replace ZZ1_CLI With "Hugh"

    ZZ1->(MsUnlock())
    endif
    MsgInfo("Alteração efetuada")
    //DisarmTransaction() // a função roda normal, mas n ocorre a troca
    End Transaction
    RestArea(aArea)
 


return

#INCLUDE "TOTVS.CH"

user function BANCO002()

    local aArea := ZZ1 -> (GetArea())
    local cMsg := ""

    DbSelectArea("ZZ1")
    //ZZ1->(DbSetOrderNickName(1323)) // Se quiser usar nickname criado
    ZZ1->(DbSetOrder(1)) // Indice padr�o
    ZZ1->(DbGoTop())

    cMsg := Posicione( 'ZZ1', 1, FWXfilial('ZZ1') + '000003', 'ZZ1_RAZ' )    //Retorna um campo qq especificado

Alert("Raz�o do produto: " + cMsg, "WARNING")

RestArea(aArea)


return

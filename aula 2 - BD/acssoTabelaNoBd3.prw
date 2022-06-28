#INCLUDE "TOTVS.CH"
#include "TopConn.ch"

user function BANCO003()

    local aArea := ZZ1 -> (GetArea())
    local cQuery := ""
    local aDados := {}

    cQuery := " SELECT "
    cQuery += " ZZ1_CDGO AS CODIGO, "
    cQuery += " ZZ1_CLI AS CLIENTE"
    cQuery += " FROM "
    cQuery += " " + RetSQLName("ZZ1")+ "ZZ1"
    cQuery += " WHERE "
    cQuery += " ZZ1_FILIAL := '1' "

// Executando a consulta acima 
    TCQuery cQuery New Alias "TMP"  // TMP = temporário, essa linha é graças a include Topconn 

    while ! TMP->(EoF())     // EOF = Final de arqv, END OF FILE 
     aadd(aDados, TMP->CODIGO)
     aadd(aDados, TMP->CLIENTE)
     TMP->(DbSkip())
    enddo
    
    Alert(Len(aDados))

    For nCount := 1 To Len(aDados)
        MsgInfo(aDados[nCount])
    Next nCount
    
    TMP->(DBCloseArea())
    RestArea(aArea)
return




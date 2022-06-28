#INCLUDE 'TOTVS.CH'

user function debugga()
local aArea := GetArea()
local aProduto := {}
local nCount := 0

//Seleciona a tabela de produtos
DbSelectArea("SB1")
SB1->(DbSetOrder(1)) //seleciona o indice
SB1->(DbSetOrder())

while ! SB1 (Eof()) //enqt n for final do file
aAdd(aProduto,{ SB1->B1_COD,;
                SB1->B1_DESC})

    nCount++
    SB1->(DbSkip())
    enddo

    MsgAlert("Quantidade de produtos encontradas: <b>" + CValToChar(nCount))
    nCount := 0 // zerando valor da variável nCount
    RestArea(aArea)

    return

#INCLUDE "TOTVS.CH"

user function BANCO001()

local aArea := ZZ1 -> (GetArea())
local cMsg := ""

DbSelectArea("ZZ1")
ZZ1->(DbSetOrder(1)) // Posiciona no indice 1
ZZ1->(DbGoTop())


if ZZ1->(DbSeeK(FWXFilial("ZZ1")+ "000001"))
Alert(ZZ1->ZZ1_CLI)
endif

RestArea(aArea)

return

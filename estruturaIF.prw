#INCLUDE 'TOTVS.CH'


user function estrutur

Local nNum1 := 22
Local nNum2 := 100

/*
if(nNum1 <= nNum2)
MsgInfo("A variável nNum1 é menor ou igual a nNum2")
else
Alert("A variável nNum1 não é igual ou menor a nNum2")
endif
*/

if(nNum1 = nNum2)
MsgInfo("A variável nNum1 é igual a nNum2")
elseif(nNum1 > nNum2)
MsgInfo("A variável nNum1 é maior!")    
elseif(nNum2 != nNum1)
MsgInfo("A variável nNum1 é diferente de nNum2")
endif


return

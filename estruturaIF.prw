#INCLUDE 'TOTVS.CH'


user function estrutur

Local nNum1 := 22
Local nNum2 := 100

/*
if(nNum1 <= nNum2)
MsgInfo("A vari�vel nNum1 � menor ou igual a nNum2")
else
Alert("A vari�vel nNum1 n�o � igual ou menor a nNum2")
endif
*/

if(nNum1 = nNum2)
MsgInfo("A vari�vel nNum1 � igual a nNum2")
elseif(nNum1 > nNum2)
MsgInfo("A vari�vel nNum1 � maior!")    
elseif(nNum2 != nNum1)
MsgInfo("A vari�vel nNum1 � diferente de nNum2")
endif


return

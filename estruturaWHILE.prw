#INCLUDE 'TOTVS.CH'

/*
user function whilerep

Local nNum1 := 0
Local nNum2 := 10

While nNum1 < nNum2
nNum1++

EndDo
Alert(nNum1 + nNum2)

return
*/


user function whilecom

Local nNum1 := 1
Local cNome := "RCTI"

While nNum1 != 10 .AND. cNome != "PROTHEUS"
  nNum1++
    if nNum1 == 5 
      cNome := "PROTHEUS"
    endif
EndDo  
Alert("Número: "+ CValToChar(nNum1))
Alert("Nome: "+ CValToChar(cNome))

return

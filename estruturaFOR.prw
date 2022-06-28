#INCLUDE 'TOTVS.CH'

user function forrep

Local nCount
Local nNum := 0

For nCount := 0 To 10 step 5

nNum += nCount

Next
Alert("Valor: "+ CValToChar(nNum))

return

#INCLUDE 'TOTVS.CH'

user function DoCase

Local cData := "20/12/2017"

Do Case

case cData == "20/12/2017"
Alert("N�o � natal, �: "+ cData)

case cData == "25/12/2017"
Alert("� NATAL!")

otherwise 
Alert("N�o sei que dia � hoje")

EndCase 

return

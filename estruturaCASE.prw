#INCLUDE 'TOTVS.CH'

user function DoCase

Local cData := "20/12/2017"

Do Case

case cData == "20/12/2017"
Alert("Não é natal, é: "+ cData)

case cData == "25/12/2017"
Alert("É NATAL!")

otherwise 
Alert("Não sei que dia é hoje")

EndCase 

return

#INCLUDE 'TOTVS.CH'


user function AVETOR

 // Arrays: São coleções de valores, semelhantes a uma lista
 // cada item em um array é referenciado pela indicação de sua posição numerica

 Local dData := Date()
 Local aValores := {"Joao",dData, 100}

 Alert(aValores[2]) // Execite a posicao 2 do array
 Alert(aValores[3]) // Execite a posicao 3 do array


return

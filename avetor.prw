#INCLUDE 'TOTVS.CH'


user function AVETOR

 // Arrays: S�o cole��es de valores, semelhantes a uma lista
 // cada item em um array � referenciado pela indica��o de sua posi��o numerica

 Local dData := Date()
 Local aValores := {"Joao",dData, 100}

 Alert(aValores[2]) // Execite a posicao 2 do array
 Alert(aValores[3]) // Execite a posicao 3 do array


return

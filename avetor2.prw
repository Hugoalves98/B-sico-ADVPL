#INCLUDE 'TOTVS.CH'

user function vetor2

/*
AADD() - Permite a inser??o de um item em um Array j? existente
AINS() - Permite a inser??o de um elemento em qualquer posi??o do Array
ACLONE() - Realiza a c?pia de um Array para outro
ADEL() - permite a exclus?o de um elemento do Array, tornando o ?ltimo valor NULL
ASIZE() - Redefine a estrutura de um Array pr?-existente, adicionando ou removendo itens
LEN() - Retorna a quantidade de elementos de um Array
*/

Local aVetor := {10,20,30}

// AADD(aVetor, 40)
//Alert(Len(aVetor))

/*
AIns(aVetor,2)
aVetor[2] := 100
Alert(aVetor[2])
Alert(Len(aVetor))
*/

/*
  aVetor2 := AClone(aVetor)
    for nCount := 1 To Len(aVetor2)
      Alert(aVetor2[nCount])

    Next nCount 
*/

/*
 Adel(aVetor,1)
   Alert(aVetor[3])
    Alert(Len(aVetor))
*/

Asize(aVetor,2)
Alert(Len(aVetor))

return

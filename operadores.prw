#INCLUDE 'TOTVS.CH'


user function operador 

Local nNum1 := 10
Local nNum2 := 20

Alert(nNum1 + nNum2)
Alert(nNum2 - nNum1)
Alert(nNum1 * nNum2)
Alert(nNum2 / nNum1)
Alert(nNum2 % nNum1)

// OPERADORES RELACIONAIS
Alert(nNum1 < nNum2) // Comparacao MENOR
Alert(nNum1 > nNum2) // Comparacao MAIOR
Alert(nNum1 = nNum2) // Comparacao IGUAL
Alert(nNum1 == nNum2) // EXATAMENTE IGUAL
Alert(nNum1 <= nNum2) // MENOR OU IGUAL
Alert(nNum1 >= nNum2) // MAIOR OU IGUAL
Alert(nNum1 != nNum2) // DIFERENÇA

// OPERADORES DE ATRIBUIÇÃO
nNum1 := 10 // ATRIBUIÇÃO SIMPLES   
nNum1 += nNum2 // nNum1 = nNum1 + nNum2
nNum2 -= nNum1 // nNum2 = nNum2 - nNum1
nNum1 *= nNum2 // nNum1 = nNum1 * nNum2
nNum2 /= nNum1 // nNum2 = nNum2 / nNum1
nNum2 %= nNum1 // nNum2 = nNum2 % nNum1

return      

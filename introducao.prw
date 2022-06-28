#INCLUDE 'TOTVS.CH'

/*
Numérico: 3 / 21.00 / .4 / 200000
Lógico: .T. / .F.
Caracteres: "D" ou 'C'
DATA: DATE()
ARRAY: DATE()
ARRAY: {"VALOR1", "VALOR2", "VALOR3"}
BLOCO DE CÓDIGO: { ||VALOR := 1, MsgAlert("Valor é igual a "cValToChar(Valor))}
*/

user function VARIAVEL()

Local nNum := 54
Local lLogic := .T.
Local cCarac := "String" // Qnd quiser imprimir uma variável do tipo caracter, usamos cValToChar
Local dData := DATE()
Local aArray := {"Joao", "Maria", "Jose"}
Local bBloco := { || nValor := 2, MsgAlert("O número é: "+ cValToChar(nValor))}

Alert(nNum)
Alert(lLogic)
Alert(cValToChar(cCarac)) // Qnd quiser imprimir uma variável do tipo caracter, usamos cValToChar
Alert(dData)
Alert(aArray[1])
Eval(bBloco)

return

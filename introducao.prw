#INCLUDE 'TOTVS.CH'

/*
Num�rico: 3 / 21.00 / .4 / 200000
L�gico: .T. / .F.
Caracteres: "D" ou 'C'
DATA: DATE()
ARRAY: DATE()
ARRAY: {"VALOR1", "VALOR2", "VALOR3"}
BLOCO DE C�DIGO: { ||VALOR := 1, MsgAlert("Valor � igual a "cValToChar(Valor))}
*/

user function VARIAVEL()

Local nNum := 54
Local lLogic := .T.
Local cCarac := "String" // Qnd quiser imprimir uma vari�vel do tipo caracter, usamos cValToChar
Local dData := DATE()
Local aArray := {"Joao", "Maria", "Jose"}
Local bBloco := { || nValor := 2, MsgAlert("O n�mero �: "+ cValToChar(nValor))}

Alert(nNum)
Alert(lLogic)
Alert(cValToChar(cCarac)) // Qnd quiser imprimir uma vari�vel do tipo caracter, usamos cValToChar
Alert(dData)
Alert(aArray[1])
Eval(bBloco)

return

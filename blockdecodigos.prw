#INCLUDE 'TOTVS.CH'

user function bloco

//Local bBloco := {|| Alert("Hellow")}
//Eval(bBloco)
    // Passagem por parameter - Bloco de c�digos
    Local bBloco := {|cMsg| Alert(cMsg)}
Eval(bBloco,"Hello!")


return

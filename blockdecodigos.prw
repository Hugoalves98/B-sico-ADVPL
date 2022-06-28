#INCLUDE 'TOTVS.CH'

user function bloco

//Local bBloco := {|| Alert("Hellow")}
//Eval(bBloco)
    // Passagem por parameter - Bloco de códigos
    Local bBloco := {|cMsg| Alert(cMsg)}
Eval(bBloco,"Hello!")


return

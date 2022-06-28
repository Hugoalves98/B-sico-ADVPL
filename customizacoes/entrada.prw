#INCLUDE 'TOTVS.CH'

user function a10otok()
local lExecuta := .T.
local cTipo := AllTrim(M->B1_TIPO)
local cConta := AllTrim(M->B1_CONTA)

if (cTipo == "PA" .AND. cConta = "001")
   Alert("A conta <b> " + cConta + "</b> não pode estar associada a um produto do tipo <b>" + cTipo)

   lExecuta := .F.
endif (lExecuta) 

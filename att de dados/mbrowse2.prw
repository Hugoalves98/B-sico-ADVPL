#INCLUDE 'TOTVS.CH'

user function mbr2()

Local cAlias := "SA2" // SA2 É DE FORNECEDOR
Local aCores := {}
local cFiltra := "A2_FILIAL == '"+xFilial('SA2')+"' " //.And. A2_EST == 'SP'" 
Private cCadastro := "Cadastro de fornecedor"
Private aRotina := {}
Private aIndexSA2 := {}
Private bFiltraBrw := {|| FilBrowse(cAlias,@aIndexSA2,@cFiltra)} //FilBrowse


AADD(aRotina,{"Pesquisa"    ,"AxPesqui"     ,0,1})
AADD(aRotina,{"Visualizar"  ,"AxVisual"     ,0,2})
AADD(aRotina,{"Incluir"     ,"U_BInclui"    ,0,3})
AADD(aRotina,{"Alterar"     ,"U_BAltera"    ,0,4})
AADD(aRotina,{"Excluir"     ,"U_BDeleta"    ,0,5})
AADD(aRotina,{"Legenda"     ,"U_BLegenda"   ,0,6})

//Acores - Legenda
AADD(aCores,{"A2_TIPO == 'F'" , "BR_VERDE"   })
AADD(aCores,{"A2_TIPO == 'J'" , "BR_AMARELO"   })
AADD(aCores,{"A2_TIPO == 'X'" , "BR_LARANJA"   })
AADD(aCores,{"A2_TIPO == 'R'" , "BR_MARROM"   })
AADD(aCores,{"Empty(A2_TIPO)" , "BR_PRETO"   })


DbSelectArea(cAlias)
DbSetOrder(1)

Eval(bFiltraBrw)
dbGoTop()
mBrowse(6,1,22,75,cAlias,,,,,,aCores)

EndFilBrw(cAlias,aIndexSA2)

return nil

/*-------------------------------------
  Função BInclui - Inclusão       
**************************************/
// nReg é o nº de registro
// nOpc é o nº da rotina, armazena uma das opções
user function BInclui(cAlias,nReg,nOpc)

local nOpcao := 0     // 0 é nada, 1 é tudo(binário)
nOpcao := AxInclui(cAlias, nReg, nOpc) 
if nOpcao == 1
MsgInfo("Inclusão efetuada com successfully")
else 
MsgAlert("Inclusão falhou!")
endif
return

/*-------------------------------------
  Função BAltera - Alteração       
**************************************/
user function BAltera(cAlias,nReg,nOpc)

local nOpcao := 0     
nOpcao := AxAltera(cAlias, nReg, nOpc) 
if nOpcao == 1
MsgInfo("Alteração efetuada com successfully")
else 
MsgAlert("Alteração falhou!")
endif
return

/*-------------------------------------
  Função BDeleta - Exclusão      
**************************************/

user function BDeleta(cAlias,nReg,nOpc)

local nOpcao := 0     
nOpcao := AxDeleta(cAlias, nReg, nOpc) 
if nOpcao == 1
MsgInfo("Exclusão efetuada com successfully")
else 
MsgAlert("Exclusão falhou!")
endif
return

/*-------------------------------------
  Função BLegenda - Legenda      
**************************************/
user function BLegenda(cAlias)
local aLegenda := {}
AADD(aLegenda, {"BR_VERDE" , "Pessoa Física"})
AADD(aLegenda, {"BR_AMARELO" , "Pessoa Jurídica"})
AADD(aLegenda, {"BR_LARANJA" , "Exportação"})
AADD(aLegenda, {"BR_MARROM" , "Fornecedor rural"})
AADD(aLegenda, {"BR_PRETO" , "Não classificado"})

BrwLegenda(cCadastro, "Legenda", aLegenda)
return

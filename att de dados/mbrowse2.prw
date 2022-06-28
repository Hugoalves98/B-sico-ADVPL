#INCLUDE 'TOTVS.CH'

user function mbr2()

Local cAlias := "SA2" // SA2 � DE FORNECEDOR
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
  Fun��o BInclui - Inclus�o       
**************************************/
// nReg � o n� de registro
// nOpc � o n� da rotina, armazena uma das op��es
user function BInclui(cAlias,nReg,nOpc)

local nOpcao := 0     // 0 � nada, 1 � tudo(bin�rio)
nOpcao := AxInclui(cAlias, nReg, nOpc) 
if nOpcao == 1
MsgInfo("Inclus�o efetuada com successfully")
else 
MsgAlert("Inclus�o falhou!")
endif
return

/*-------------------------------------
  Fun��o BAltera - Altera��o       
**************************************/
user function BAltera(cAlias,nReg,nOpc)

local nOpcao := 0     
nOpcao := AxAltera(cAlias, nReg, nOpc) 
if nOpcao == 1
MsgInfo("Altera��o efetuada com successfully")
else 
MsgAlert("Altera��o falhou!")
endif
return

/*-------------------------------------
  Fun��o BDeleta - Exclus�o      
**************************************/

user function BDeleta(cAlias,nReg,nOpc)

local nOpcao := 0     
nOpcao := AxDeleta(cAlias, nReg, nOpc) 
if nOpcao == 1
MsgInfo("Exclus�o efetuada com successfully")
else 
MsgAlert("Exclus�o falhou!")
endif
return

/*-------------------------------------
  Fun��o BLegenda - Legenda      
**************************************/
user function BLegenda(cAlias)
local aLegenda := {}
AADD(aLegenda, {"BR_VERDE" , "Pessoa F�sica"})
AADD(aLegenda, {"BR_AMARELO" , "Pessoa Jur�dica"})
AADD(aLegenda, {"BR_LARANJA" , "Exporta��o"})
AADD(aLegenda, {"BR_MARROM" , "Fornecedor rural"})
AADD(aLegenda, {"BR_PRETO" , "N�o classificado"})

BrwLegenda(cCadastro, "Legenda", aLegenda)
return

#INCLUDE 'TOTVS.CH'

/*
Qnd colocamos "Local" antes da variavel, definimos o escopo
Se n colocarmos o "Local" o ADVPL entende como variável PRIVATE

Identificadores de escopo:

- LOCAL: são variaveis visiveis em qq lugar do código-fonte declaradas

- STATIC: são variaveis que dependem de onde são declaradas, se declarada dentro do coprpo de fuma função/procedimento, terá escopo limitada a mesma. Se declarada fora, poderá ser usada por qq função no código-fonte

- PRIVATE: são variaveis opcionais e visiveis em td programa, destruídas ao terminar de executar o programa em q foram criadas, ou qnd uma função interna do programa chame uma varíavel de msm nome, porém c outro valor.

- PUBLIC: uma vez criada, será visível em todo programa em q foi declarada, até q seja escondida por uma variável de escopo private, criada com o msm nome. obs: __cPublic, começa com __c

*/



Static cStat := 'Something' 

user function escopo
//VARIAVEL LOCAIS
Local nVar0 := 1
Local nVar1 := 20

// VARIAVEL PRIVATE
Private cPri := 'private!'

//VARIAVEL PUBLIC
Public __cPublic := 'RCTI'

TestEscop(nVar0, @nVar1)

return

//------------- função static ---------

static Function TestEscop(nValor1, nValor2)

Local __cPublic := 'Alterei'
Default nValor1 := 0 // raramente usado, smp terá valor, mas caso n tenha, terá o padrão já declarado

// Alterando conteudo da variavel  
nValor2 := 10

// mostrar conteudo da variavel private 
Alert("Private: "+ cPri)

// alterar valor da variavel public
Alert("Publica: "+ __cPublic)

MsgAlert(nValor2)
Alert("Variavel Static: "+ cStat)

return

#INCLUDE 'TOTVS.CH'

/*
Qnd colocamos "Local" antes da variavel, definimos o escopo
Se n colocarmos o "Local" o ADVPL entende como vari�vel PRIVATE

Identificadores de escopo:

- LOCAL: s�o variaveis visiveis em qq lugar do c�digo-fonte declaradas

- STATIC: s�o variaveis que dependem de onde s�o declaradas, se declarada dentro do coprpo de fuma fun��o/procedimento, ter� escopo limitada a mesma. Se declarada fora, poder� ser usada por qq fun��o no c�digo-fonte

- PRIVATE: s�o variaveis opcionais e visiveis em td programa, destru�das ao terminar de executar o programa em q foram criadas, ou qnd uma fun��o interna do programa chame uma var�avel de msm nome, por�m c outro valor.

- PUBLIC: uma vez criada, ser� vis�vel em todo programa em q foi declarada, at� q seja escondida por uma vari�vel de escopo private, criada com o msm nome. obs: __cPublic, come�a com __c

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

//------------- fun��o static ---------

static Function TestEscop(nValor1, nValor2)

Local __cPublic := 'Alterei'
Default nValor1 := 0 // raramente usado, smp ter� valor, mas caso n tenha, ter� o padr�o j� declarado

// Alterando conteudo da variavel  
nValor2 := 10

// mostrar conteudo da variavel private 
Alert("Private: "+ cPri)

// alterar valor da variavel public
Alert("Publica: "+ __cPublic)

MsgAlert(nValor2)
Alert("Variavel Static: "+ cStat)

return

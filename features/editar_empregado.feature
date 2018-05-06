#language: pt
#utf-8

@editar
Funcionalidade: Editar Empregado
 Eu como diretor da Orangehrm
 Quero realizar uma alteração em um cadastro
 Para atualizar suas informações

 Cenario: Editar Empregado
   Dado que esteja na lista de empregados
   Quando editar um cadastro
   Entao cadastro atualizado com sucesso
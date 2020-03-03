# encoding: utf-8
# language: pt

@login_task
Funcionalidade: Criar um usuario, realizar login e criar uma task
Para que eu possa criar uma task 
Sendo um usuário previamente cadastrado
Posso acessar o sistema com o meu login e senha

Contexto:
Dado que eu acesse o site Julio de Lima

@criar_usuario_task
Cenário: Criar um usuario e uma task
Quando eu criar um login e uma senha e uma task
Então eu devo visualizar a task criada

@login_existente
Cenário: Login já existente
Quando eu criar um usuario com um login já existente 
Então eu devo visualizar um mensagem de erro

@acesso_negado
Cenário: Acesso negado
Quando eu inserir meu usuario e senha 
Então eu devo visualizar na tela uma mensagem de erro

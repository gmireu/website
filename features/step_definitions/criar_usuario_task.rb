Dado("que eu acesse o site Julio de Lima") do
    @login_task = CriarUsuarioTask.new
    visit "/"
end
  
#criando login e task
Quando("eu criar um login e uma senha e uma task") do
    @login_task.criar_usuario
    @login_task.criar_task
end
  
Então("eu devo visualizar a task criada") do
    page.assert_text(text,"The taskhas been added, pretty simple!")
end

#login_existente
Quando("eu criar um usuario com um login já existente") do
    @login_task.login_existente
end
  
Então("eu devo visualizar um mensagem de erro") do
    page.assert_text(text,"Someone choose this login before, please pick another!")
end

class CriarUsuarioTask < SitePrism::Page
    element :btn_sign_up, '#signup'
    element :name, 'input[name=name]'
    element :login, 'input[name=login]'
    element :password, 'input[name=password]'
    element :btn_save, '.btn-flat'
    element :btn_add_task, '.btn'
    element :btn_add_task_2, '.btn.modal-trigger'
    element :title_task, 'input[name=title]'
    element :date, 'input[name=date]'
    element :today, :xpath, "//button[@class='btn-flat picker__today waves-effect']"
    element :date_ok, :xpath, "//button[contains(text(),'Ok')]"
    element :time, 'input[name=time]'
    element :hour, :xpath, "//div[@class='clockpicker-tick'][contains(text(),'14')]"
    element :minutes, :xpath, "//div[@class='clockpicker-tick'][contains(text(),'10')]"
    element :time_ok, :xpath, "//button[contains(text(),'OK')]"
    element :text, :xpath, "//textarea[@name='text']"
    element :btn_save_2, '.btn-flat'


def criar_usuario
    self.btn_sign_up.click
    self.name.set(Faker::Name.name)
    self.login.set(Faker::Name.name)
    self.password.set(Faker::Name.name)
    self.btn_save.click
end

def criar_task
    self.btn_add_task.click
    self.btn_add_task_2.click
    self.title_task.set('Título da pergunta')
    self.date.click
    self.today.click
    self.date_ok.click
    self.time.click
    self.hour.click
    self.minutes.click
    self.time_ok.click
    self.text.set('Escrevendo a pergunta')
    self.btn_save_2.click
end

def login_existente
    self.btn_sign_up.click
    self.name.set('Gabriel')
    self.login.set('Gabriel')
    self.password.set('Gabriel')
    self.btn_save.click
    
end

end

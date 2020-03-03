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
    element :hour, :xpath, "//div[@style='left: 205.933px; top: 62.5px;'][contains(text(),'14')]"
    element :minutes, :xpath, "//div[@style='left: 205.933px; top: 62.5px;'][contains(text(),'10')]"
    element :time_ok, "//button[contains(text(),'OK')]"
    element :text, 'input[name=text]'
    element :btn_save_2, '.btn-flat'

    element :link_sign, :xpath, "//a[@class='modal-trigger']"
    element :login_2, 'input[name=login]'
    element :password_2, 'input[name=password]'
    element :btn_sign_in, '.btn-flat'



def criar_usuario
    self.btn_sign_up.click
    self.name.set('mireu100')
    self.login.set('mireu100')
    self.password.set('mireu100')
    self.btn_save.click
end

def criar_task
    self.btn_add_task.click
    self.btn_add_task_2.click
    self.title_task.set('Gabriel1')
    self.date.click
    self.today.click
    self.date_ok.click
    self.time.click
    self.time.click
    self.hour.click
    self.minutes.click
    self.time_ok.click
    self.text.set('Gabriel1')
    self.btn_save_2.click
end

def login_existente
    self.btn_sign_up.click
    self.name.set('Gabriel')
    self.login.set('Gabriel')
    self.password.set('Gabriel')
    self.btn_save.click
end

def acesso_negado
    self.link_sign.click
    self.login_2.set('Mireu')
    self.password_2.set('Mireu')
    self.btn_sign_in.click
end


end


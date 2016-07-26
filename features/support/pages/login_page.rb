class LoginPage
  include PageObject

  page_url('file:///Users/eheinen/Workspace/html/animal-best-friend-forever/login.html')

  text_field(:login, id: 'txt-usuario')
  text_field(:password, id: 'txt-senha')
  button(:clear, id: 'btn-limpar')
  button(:sign_in, id: 'btn-entrar')
  link(:sign_up, id: 'lnk-cadastrar-usuario')
  span(:message, id: 'message-text')

  def authenticate
    self.login = 'admin'
    self.password = 'admin'
    self.sign_in
  end

end

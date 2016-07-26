# In this class I'm using Page Object Gem from Cheezy

class LoginPage
  include PageObject

  page_url(DEFAULT_DATA['application_page'] + 'login.html')

  text_field(:login, id: 'txt-usuario')
  text_field(:password, id: 'txt-senha')
  button(:clear, id: 'btn-limpar')
  button(:sign_in, id: 'btn-entrar')
  link(:sign_up, id: 'lnk-cadastrar-usuario')
  span(:message, id: 'message-text')

  def authenticate login, password
    self.login = login
    self.password = password
    self.sign_in
  end

end

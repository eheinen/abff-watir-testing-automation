# In this class I'm using Page Object Gem from Cheezy
class HomePage
  include PageObject

  page_url(DEFAULT_DATA['application_page'] + 'index.html')

  # Navigation Menu
  button(:mn_animal, class: "dropbtn", data_i18n: "menu-animal")
  span(:mn_create_animal, id: "lnk-cadastrar-animais")
  span(:mn_view_animal, id: "lnk-visualizar-animais")

  div(:mn_organizations, class: "dropdown", data_i18n: "menu-organization")
  span(:mn_create_organization, id: "lnk-cadastrar-organizacoes")
  span(:mn_view_organization, id: "lnk-visualizar-organizacoes")

  link(:mn_adopt, id: "adote-seu")
  link(:mn_my_account, id: "minha-conta")
  link(:mn_logout, id: "sair")

end

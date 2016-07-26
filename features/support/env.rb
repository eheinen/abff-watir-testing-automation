require 'rspec'
require 'page-object'

World(PageObject::PageFactory)

DEFAULT_DATA = YAML.load_file('./features/support/fixtures/settings.yml')

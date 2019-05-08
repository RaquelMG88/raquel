require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 15
    config.app_host = "https://plataforma.homologacao.tecnobank.com.br"
end

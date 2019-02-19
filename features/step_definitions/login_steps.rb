Quando('eu faço login com {string} e a senha {string}') do |email, senha|
  visit 'http://mark7.herokuapp.com/login'
  find('input[name=email]').set email
  find('input[name=password]').set senha
  click_button 'Login'
end

Então('devo ver a área loga com o texto {string}') do |ola|
  painel = find('#task-board')
  expect(painel.text).to have_content ola
end

Então('devo ver uma mensagem de alerta {string}') do |mensagem|
  alerta = find('.alert-login')
  expect(alerta.text).to eql mensagem
end

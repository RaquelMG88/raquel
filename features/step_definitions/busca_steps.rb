Dado("que o termo de busca é {string}") do |termo|
    @termo = termo
  end
  
  Quando("eu faço uma nova busca") do 
    visit 'http://google.com.br'
    find('input[name=q]').set @termo
    find('input[name=btnK]').click
 
  end
  
  Então("vejo resultados conforme o termo buscado") do
    expect(page).to have_content @termo
  end
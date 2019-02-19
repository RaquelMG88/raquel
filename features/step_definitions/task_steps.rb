

Dado('que {string} é a minha nova tarefa') do |nome_tarefa|
  @nome_tarefa = nome_tarefa
end

Dado('esta tarefa deve ser concluída em {string}') do |data_tarefa|
  @data_tarefa = data_tarefa
end

Quando('eu faço o cadastro desta tarefa') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('vejo este registro na lista de Tarefas') do
  pending # Write code here that turns the phrase above into concrete actions
end

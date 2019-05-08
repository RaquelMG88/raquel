Quando("eu preencher o campo estado {string}") do |estado|
  visit "eContrato/frmRegistroAditivoContrato.aspx"
  find("#Body_ddlDsUf").find("option", text: estado).select_option
end

Então("deve exibir as opções Chassi e Placa") do |string|
  find("input[id=Body_rdbTipoChave_0]").set chassi
  find("input[id=Body_rdbTipoChave_1]").set placa
end

Quando("eu preencher o campo Chave") do
  find("input[=Body_txtDsFiltro").set
end

E("faço a inclusão") do
  find("inpunt[=Body_btnPesquisarGravame").set
end

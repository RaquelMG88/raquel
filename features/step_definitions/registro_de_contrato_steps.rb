Quando("eu preencher o campo estado {string}") do |estado|
  visit "eContrato/frmRegistroContrato.aspx"
  find("#Body_ddlDsUf").find("option", text: estado).select_option
end

Então("deve exibir as opções Chassi e Placa") do
  find("input[id=Body_rdbTipoChave_0]").set chassi
  find("input[id=Body_rdbTipoChave_1]").set placa
end

Quando("eu preencher o campo Chave") do
  find("input[=Body_txtDsFiltro").set
end

Quando("faço a inclusão") do
  click_on "Incluir"
  find("#wucMensagens1_imgFechar").click
end

Então("exibe mensagem: Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.") do
  formularios = ["Dados do veículo", "Dados do contrato", "Dados complementares do contrato", "Dados Financiamento", "Para empresas administradores de consórcio", "Dados do credor", "Dados do devedor", "Envio de Arquivo"]
  formularios.each { |item| expect(page).to have_text item }

  # find("Body_wucDadosVeiculoGravame_txtDsChassi").set "VBVSNJBPILSAEHWL
  # find("Body_wucDadosVeiculoGravame_txtNuRenavam").set "72589855882"
  # find("Body_wucDadosVeiculoGravame_rblCdRemarcacao").set "Sim"
  # find("Body_wucDadosVeiculoGravame_ddlDsUfPlaca").set "GHM7514"
  # find("Body_wucDadosVeiculoGravame_txtDsAnoFabricacao").set "2018"
  # find("Body_wucDadosVeiculoGravame_txtDsAnoModelo").set "Stilo 1.8 SP Flex 8V 5p"
  # find("Body_wucDadosVeiculoGravame_txtDsMarca").set "Fiat"
  # find("Body_wucDadosVeiculoGravame_ddlEspecies").set "Automóvel"
  # find("Body_wucDadosContratoGravame_txtDtContrato").set "05052019"
  # find("Body_wucDadosContratoGravame_txtNuRestricao").set
  # find("Body_wucDadosContratoGravame_txtNuContrato").set "7889968154673933325F"
  # find("Body_wucDadosContratoGravame_wucDadosContratoRestricaoGravame_ddlCdTipoRestricao").set
  # find("Body_wucDadosContratoComplementoGravame_updPanelTaxaMora").set
  # find("Body_wucDadosContratoComplementoGravame_updPanelTaxaMulta").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlTaxaMora").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlTaxaMulta").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlTaxaJurosMes").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlTaxaJurosAno").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlTaxaContrato").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlIOF").set
  # find("Body_wucDadosContratoComplementoGravame_txtDsIndice").set
  # find("Body_wucDadosContratoComplementoGravame_rblCdTipoDocumentoRecebedor").set
  # find("Body_wucDadosContratoComplementoGravame_rblCdTipoDocumentoVendedor").set
  # find("Body_wucDadosContratoComplementoGravame_txtVlComissao").set
  # find("Body_wucDadosContratoComplementoGravame_txtDsPenalidade").set
  # find("Body_wucDadosContratoComplementoGravame_txtNuDocRecebedor").set
  # find("Body_wucDadosContratoComplementoGravame_txtNuDocVendedor").set
  # find("Body_wucDadosContratoComplementoGravame_txtDsComentario").set
  # find("Body_wucDadosPagamentoGravame_txtVlTotalFinanciamento").set
  # find("Body_wucDadosPagamentoGravame_txtVlParcela").set
  # find("Body_wucDadosPagamentoGravame_ddlCdMunicipioLiberacaoCredito").set
  # find("Body_wucDadosPagamentoGravame_txtDtLiberacaoCredito").set
  # find("Body_wucDadosPagamentoGravame_ddlCdMunicipioLiberacaoCredito").set
  # find("Body_wucDadosPagamentoGravame_txtDtVencPrimeiraParcela").set
  # find("Body_wucDadosConsorcioGravame_txtNuCotaConsorcio").set
  # find("Body_wucDadosConsorcioGravame_txtNuGrupoConsorcio").set
  # find("Body_wucDadosCredorGravame_txtNmAgente").set "62845"
  # find("Body_wucDadosCredorGravame_txtNuCNPJAgente").set "7999736666352931"
  # find("Body_wucDadosEnderecoCredorGravame_txtDsCEP").set
  # find("Body_wucDadosEnderecoCredorGravame_txtDsLogradouro").set
  # find("Body_wucDadosEnderecoCredorGravame_txtDsNumero").set
  # find("Body_wucDadosEnderecoCredorGravame_ddlDsUf").set
  # find("Body_wucDadosEnderecoCredorGravame_txtNuDDD").set
  # find("Body_wucDadosEnderecoCredorGravame_txtNuTelefone").set
  # find("Body_wucDadosEnderecoCredorGravame_txtEmail").set
  # find("Body_wucDadosEnderecoCredorGravame_ddlCdMunicipio").set
  # find("Body_wucDadosEnderecoCredorGravame_txtDsBairro").set
  # find("Body_wucDadosDevedorGravame_txtNmDevedor").set
  # find("Body_wucDadosDevedorGravame_rblCdTipoDocumento").set
  # find("Body_wucDadosDevedorGravame_txtNuDocumentoDevedor").set
  # find("Body_wucDadosEnderecoDevedorGravame_txtDsCEP").set
  # find("Body_wucDadosEnderecoDevedorGravame_txtDsLogradouro").set
  # find("Body_wucDadosEnderecoDevedorGravame_txtDsComplemento").set
  # find("Body_wucDadosEnderecoDevedorGravame_ddlDsUf").set
  # find("Body_wucDadosEnderecoDevedorGravame_txtNuDDD").set
  # find("Body_wucDadosEnderecoDevedorGravame_txtNuTelefone").set
end

Quando("eu preencho o campo UF com {string} e  a chave {string}") do |string, string2|
  find("")
end

E("faço o registro do contrato") do
  click_on "Registrar Contrato"
end

Então("deve exibir a area logada com o texto {string}") do |string|
  alerta = find(".alert-login")
  expect(alerta.text).to eql mensagem
end

Dado("que desejo buscar pelo estado {string}") do |estado|
  visit "/eContrato/frmConsultaStatusRegContrato.aspx"
  find("ddlUfPesquisa").find("option", text: estado).select_option
end

Quando("eu faço a busca") do
  click_on "Consultar"
  find("#wucMensagens1_imgFechar").click
end

Então("deve ser aprensentado os registros de contratos") do
  lista_contratos = all("#Body_gridProcesso tbody tr")
  expect(lista_contratos.size).to be > 0
end

Dado("que desejo buscar por operação {string}") do |string|
  visit "/eContrato/frmConsultaStatusRegContrato.aspx"
  find("ddlUfPesquisa").find("option", text: operação).select_option
end

Quando("eu faço a busca") do
  click_on "Consultar"
  find("#wucMensagens1_imgFechar").click
end

Então("deve ser apresentado os contratos") do
  lista_contratos = all("#Body_gridProcesso tbody tr")
  expect(lista_contratos.size).to be > 0
end

#language: pt
Funcionalidade: Consulta de Registro de Contrato

    @busca_estado @login
    Cenario: Fazer busca

        Dado que desejo fazer uma busca 
        E informo o tipo "contrato"
        E faço a consulta
        Então deve ser aprensentado os registros de contratos


    @busca_por_estado 
    Esquema do Cenario: Fazer por estado

        Dado que desejo buscar por operação "<uf>"
        Quando eu faço a busca 
        Então deve ser apresentado os contratos 


        Exemplos:
        |uf|
        |PB| 
        |SP|
        |AP|
        |SC|
        |MG|
        |PR|
        |PE|

    
    @busca_tipo_operacao 
    Esquema do Cenario: Fazer por tipo de operação 

        Dado que desejo fazer uma busca por operação "<tipo de operacao>"
        Quando eu faço a busca 
        Então deve ser apresentado os contratos 

        Exemplos:
        |tipo de operacao|
        |Registro de Contrato|
        |Alteração de Contrato|
        |Registro de Aditivo|
        |Alteração de Registro|

    @busca_registro 
    Esquema do Cenario: Fazer por situação de registro

        Dado que desejo buscar por operação "<registro>"
        Quando eu faço a busca 
        Então deve ser apresentado os contratos 

        Exemplos:
        |registro|
        |ativo|
        |inativo|

    @nome_credor 
    Esquema do Cenario: Fazer por nome do credor 

        Dado que desejo buscar por operação "<credor>"
        Quando eu faço a busca 
        Então deve ser apresentado os contratos 

    Exemplos:
    |nome do credor|
    |Maria|
    |Paulo|

    @nome_do_devedor 
    Esquema do Cenario: Fazer por nome do devedor

        Dado que desejo buscar por operação "<devedor>"
        Quando eu faço a busca 
        Então deve ser apresentado os contratos  

    Exemplos:
    |nome do devedor|
    |Ana|
    |João|


    @municipio_devedor
    Esquema do Cenario: Fazer por municipio devedor

        Dado que desejo buscar por operação "<municipio devedor>"
        Quando eu faço a busca 
        Então deve ser apresentado os contratos 

    Exemplos:
    |nome do devedor|
    |SP|
    |SC|
        












        


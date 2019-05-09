#language: pt

Funcionalidade: Inclusão de Registro de Contrato

    Cenario: Novo contrato

        Dado que o veículo é do estado "SP"
        E o chassi é "STUCZHERXNFLFS"
        Quando eu faço o registro do contrato
        Então deve ser exibido a seguinte mensagem:
        """
        Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.
        """



@inclusao @login
Cenario: Inclusão com sucesso

    Quando eu preencher o campo estado "uf>"
    Então deve exibir as opções "<Chassi>" e "Placa>"
    Quando eu preencher o campo "<Chave>" 
    E faço a inclusão
    Então deve redirecionar para o formulário de Registro de Contrato 
    Quando eu preencho os campos do formulario
    E faço o registro do contrato
    Então exibe "<alerta>": Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.

Exemplos:
|uf|Chassi|PLaca|Chave|
|SP|STUCZHERXNFLFS|Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.|
|RJ|TESTSERVREST29|Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.|
|PB|TESTECHASSPB28|Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.|
|SC|TESTECHASSPB23|Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.|
|MG|NHDAXADZEBPBZY|Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.|
|PR|NFTJUJGURMVHJLV|Estamos processando a operação solicitada. É importante que a janela do navegador não seja fechada ou atualizada até o final da operação.|

    @tentativa
    Esquema do Cenário: Inclusão sem sucesso
    
    Quando eu preencher o campo estado "<uf>"
    Então deve exibir as opções "<Chassi>" e "<Placa>"
    Quando eu preencher o campo "<Chave>"
    E faço a inclusão
    Então deve redirecionar para o formulario de Registro de Contrato 

    @tentativa
    Esquema do Cenário: Inclusão com caracteres especiais 

    Quando eu preencher o campo estado "<uf>"
    Então deve exibir as opções "<Chassi>" e "<Placa>"
    Quando eu preencher o campo Chave com caracteres especiais
    E faço a inclusão
    Então devo ver uma mensagem de "<alerta>": Não é permitido caracteres especiais no filtro.

    @tentativa
    Esquema do Cenário: Inclusão com chassi inválido

    Quando eu preencher o campo estado "<uf>"
    Então deve exibir as opções "<Chassi>" e "<Placa>"
    Quando eu preencher o campo Chave com dados inválidos 
    E faço a inclusão
    Então devo ver uma mensagem de "<alerta>" Chassi inválido
	
    @tentativa
    Esquema do Cenário: Inclusão de registro de contrato já existente 

    Quando eu preencho o campo UF com "<uf>" e  a chave "<Chave>"
    Então devo ver uma mensagem de alerta "<alerta>"

    Exemplos:
    |uf|Chave|Alerta|
    |SP|CVYVZGLFVVFDMWNP|Existe registro de contrato para o veículo informado.|
    |SC|CVYVZGLFVVFDMWNP|Existe registro de contrato para o veículo informado.|
    |PB|CVYVZGLFVVFDMWNP|Existe registro de contrato para o veículo informado.|
    |MG|CVYVZGLFVVFDMWNP|Existe registro de contrato para o veículo informado.|
    |PR|CVYVZGLFVVFDMWNP|Existe registro de contrato para o veículo informado.|

   








    
    

    

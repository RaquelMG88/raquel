#language: pt

@login
Funcionalidade: Inclusão de Registro de Contrato

    @registro_contrato
    Cenario: Novo contrato

        Dado que acesso o "Registro do Contrato"
        E que o veículo é do estado "SP"
        E o chassi é "STUCZHERXNFLFS"
        Quando eu faço o registro do contrato
        Então deve ser exibido a seguinte mensagem:
        """
        0030 - Registro do Contrato efetuado com sucesso.
        """
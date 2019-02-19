#language: pt

Funcionalidade: Login
@sucesso
Cenario: Login com sucesso

    Quando eu faço login com "eu@papito.io" e a senha "123456"
    Então devo ver a área loga com o texto "Olá, Fernando"

    @tentativa
    Esquema do Cenário: Login sem sucesso

    Quando eu faço login com "<email>" e a senha "<senha>"
    Então devo ver uma mensagem de alerta "<alerta>"

    Exemplos: 
    |email|senha|alerta|
    |eu@papito.io|pto123|Senha incorreta|
    |padre_kevedo@noekiste.com|pto123|Usuário não cadastrado.|
    |eu*papito.io|pto123|Email incorreto ou ausente.|



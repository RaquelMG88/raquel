#language: pt
Funcionalidade: Buscar no google


    Esquema do Cenário: Fazer uma busca simples

        Dado que o termo de busca é "<cerveja>"
        Quando eu faço uma nova busca
        Então vejo resultados conforme o termo buscado 

        Exemplos: 
        |cerveja|
        |Heineken|
        |Amstel|
        |Corona|
        |Budweiser|

        


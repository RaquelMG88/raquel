#language:pt

Funcionalidade: Criar Tarefas
    Para que eu possa gerenciar minhas atividades
    Sendo um usuário cadastrado
    Posso criar novas Tarefas

    @new_task
    Cenario: Nova tarefa

        Dado que "Estudar Ruby" é a minha nova tarefa
        E esta tarefa deve ser concluída em "18/03/2019"
        Quando eu faço o cadastro desta tarefa
        Então vejo este registro na lista de Tarefas
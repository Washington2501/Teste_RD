# language: pt

Funcionalidade: Pesquisar Funcionarios
    Como usuario do sistema 
    Desejo consultar informacoes de Endereco
    Para obter informacoes de endereco do cliente baseado no CEP

    @cenario_um
    Cenario: Consultar CEP valido
        Dado um CEP valido de oito digitos
        Quando solicitados os dados de endereco baseado no CEP
        Entao os dados referentes ao endereco do CEP pesquisado devem ser retornados

    @cenario_dois
    Cenario: Consultar CEP com menos de oito digitos
        Dado um CEP de sete digitos
        Quando solicitados os dados de endereco baseado no CEP de sete digitos
        Entao os dados referentes ao endereco do CEP pesquisado nao devem ser retornados

    @cenario_tres
    Cenario: Consultar CEP vazio
        Dado um CEP vazio
        Quando solicitados os dados de endereco baseado no CEP vazio
        Entao os dados referentes ao endereco do CEP pesquisado nao devem ser retornados para CEP vazio
    

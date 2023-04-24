Dado('um CEP valido de oito digitos') do
    @get_url = 'https://viacep.com.br/ws/04476210/json/'
  end
  
  Quando('solicitados os dados de endereco baseado no CEP') do
    @get_address = HTTParty.get(@get_url)
  end
  
  Entao('os dados referentes ao endereco do CEP pesquisado devem ser retornados') do
    expect(@get_address.code).to eql 200
    expect(@get_address.message).to eql 'OK'
  end
  
  Dado('um CEP de sete digitos') do
    @get_short_url = 'https://viacep.com.br/ws/4476210/json/'
  end
  
  Quando('solicitados os dados de endereco baseado no CEP de sete digitos') do
    @get_short_address = HTTParty.get(@get_short_url)
  end
  
  Entao('os dados referentes ao endereco do CEP pesquisado nao devem ser retornados') do
    expect(@get_short_address.code).to eql 400
    expect(@get_short_address.message).to eql 'Bad Request'
  end
  
  Dado('um CEP vazio') do
    @get_null_url = 'https://viacep.com.br/ws//json/'
  end
  
  Quando('solicitados os dados de endereco baseado no CEP vazio') do
    @get_null_address = HTTParty.get(@get_null_url)
  end

  Entao('os dados referentes ao endereco do CEP pesquisado nao devem ser retornados para CEP vazio') do
    expect(@get_null_address.code).to eql 400
    expect(@get_null_address.message).to eql 'Bad Request'
  end
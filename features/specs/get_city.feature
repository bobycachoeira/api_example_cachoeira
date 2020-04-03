#language:pt

@getProduct
Funcionalidade: API GET CITIES

Como usuário do Mock API
Eu quero efetuar requisições na API
A fim de buscar uma listagem de todas as cities cadastrados

Cenário: Obtendo dados das cities
Dado que eu tenha cities cadastradas
Quando eu executar o get all cities
Então eu devo receber o status code 200
##E um body contendo os dados dos produto


Cenário: Obtendo dados de user por id
Dado que eu tenha users cadastrados
Quando eu executar a requisição get cit by id "1"
Então eu devo receber o status code 201
#language:pt

@getProduct
Funcionalidade: API GET

Como usuário do Mock API
Eu quero efetuar requisições na API
A fim de buscar uma listagem de todos os users cadastrados

Cenário: Obtendo dados dos users
Dado que eu tenha users cadastrados
Quando eu executar o get all users
Então eu devo receber o status code 200
##E um body contendo os dados dos produto


Cenário: Obtendo dados de user por id
Dado que eu tenha users cadastrados
Quando eu executar a requisição get user by id "12"
Então eu devo receber o status code 200
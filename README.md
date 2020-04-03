# README

Projeto de automatização de testes da API Stone-Fichas

## O Que há neste repositório?

Projeto de testes automatizados utilizando Cucumber, HTTParty e RSpec.

## Como iniciar e executar o projeto?

É necessário ter Ruby instalado na máquina (https://www.ruby-lang.org/pt/downloads/);

Clone este projeto (em um terminal acesse a pasta onde se deseja clonar o projeto e execute o comando:
```
    git clone url_do_projeto
```
Acesse a pasta do projeto, **stone-fichas-api-tests**, e execute o comando:
```
    bundle install
```
esse comando irá instalar todas as depedências necessárias para rodar o projeto;

Para executar os testes basta executarem um terminal, dentro da pasta do projeto, o comando:

```
    cucumber -p ambiente
```
Os testes de cada request da API podem ser executados separadamente:
 ```
    cucumber -t @tag -p ambiente
 ```
 **Onde "ambiente" é o nome definido para o ambiente de execução no arquivo de configurações cucumber.yml**


Basta trocar a palavra tag por uma das palavras chave abaixo:   

- **postProduct** - Executa os testes de cadastro de produtos;

- **getProduct** - Executa os testes de busca de produtos cadastrados e ativos;

- **putProduct** - Executa os testes de alteração de produtos cadastrados;

- **patchProduct** - Executa os testes de desativação de produtos cadastrados;

- **postSale** - Executa os testes de cadastro de venda;

- **getSale** - Executa os testes de busca de uma venda específica;

- **getSummary** - Executa os testes de busca do resumo das vendas por período e/ou terminal;

Para mais informações das ferramentas utilizadas seguem algumas referências:

- Cucumber: https://cucumber.io/docs/cucumber/

- HTTParty: https://www.rubydoc.info/github/jnunemaker/httparty/HTTParty

- RSpec: https://rspec.info/documentation/3.9/rspec-core/

- Um artigo explicando a stack utilizada para os testes: https://medium.com/@rafaelberam/automa%C3%A7%C3%A3o-de-testes-api-com-httparty-e-cucumber-bdd-d955749affa8

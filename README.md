# Desafio_Inmetrics_website

Este repositorio possui teste automatizado de website que cadastra um usuario e cria uma
task

## Pré-requisitos
- Ruby
- Bundler
- Cucumber
- Drivers necessarios dos navegadores escolhidos para executar a automacao front

### Tags do Cucumber
Foram utilizadas tags para a execucao de cenarios especificos:
|```@@criar_usuario_task```| Executa todos os cenarios                                   |
|```@login_existente```    | Executa o cenario com uma massa de login já existente       |
|```@acesso_negado```      | Executa o cenario com uma massa com login e senha incorretos|


### Browsers disponiveis
Foram configurados os seguintes browsers para a execucao da automacao web:
- chrome
- firefox
- chrome_headless

### Logs
Apos a execucao dos testes, serao criados arquivos .html e .json como log


### Exemplo de Execução
Os cenarios podem ser executados da seguinte forma:

`cucumber -t "@tag_desejada" -p "browser_desejado"`
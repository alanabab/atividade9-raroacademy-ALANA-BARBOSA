*** Settings ***
Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
T001 - Verificar Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    Então verifico as informações da conta
    E verifico o histórico da conta
    E retorno da tela conta para a tela inicial clicando em <

T001 - Verificar função depositar através da página Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    E clico no botão Depositar
    Então verifico as informações da função Depositar 
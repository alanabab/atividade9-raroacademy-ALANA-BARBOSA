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

T002 - Verificar função Depositar através da página Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    E clico no botão Depositar
    Então verifico as informações da função Depositar 

T003 - Verificar função Pagar através da página Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    E clico no botão Pagar
    Então verifico as informações da função Pagar

T004 - Verificar função Transferir através da página Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    E clico no botão Transferir
    Então verifico as informações da função Transferir

T005 - Verificar função Empréstimos através da página Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    E clico no botão Empréstimos
    Então verifico as informações da função Empréstimos

T006 - Verificar função Cobrar através da página Conta
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Conta
    E clico no botão Cobrar
    Então verifico as informações da função Cobrar

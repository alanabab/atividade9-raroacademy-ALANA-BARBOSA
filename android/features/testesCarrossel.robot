*** Settings ***
Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Verificar função Pix
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Pix
    Então verifico as informações da função Pix
    E retorno da tela pix para a tela inicial clicando em X

C002 - Verificar função Pagar
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Pagar
    Então verifico as informações da função Pagar
    E retorno da tela pagar para a tela inicial clicando em X

C003 - Verificar função Transferir
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Transferir
    Então verifico as informações da função Transferir
    E retorno da tela transferir para a tela inicial clicando em X

C004 - Verificar função Transferir digitando valor
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Transferir
    Então verifico as informações da função Transferir
    E digito o valor a ser transferido

C005 - Verificar função Depositar
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Depositar
    Então verifico as informações da função Depositar
    E retorno da tela depositar para a tela inicial clicando em X

C006 - Verificar função Empréstimos
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Empréstimos
    Então verifico as informações da função Empréstimos
    E retorno da tela empréstimos para a tela inicial clicando em <
    
C007 - Verificar função Recarga de Celular
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Recarga de celular
    Então verifico as informações da função Recarga de Celular
    E retorno da tela recarga de celular para a tela inicial clicando em <

C008 - Verificar função Recarga de Celular digitando valor
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Recarga de celular
    Então verifico as informações da função Recarga de Celular
    E retorno da tela recarga de celular para a tela inicial clicando em <


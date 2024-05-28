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
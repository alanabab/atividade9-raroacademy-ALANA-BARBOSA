*** Settings ***
Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
CT01 - Verificar informações do usuário
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    Então verifico meu nome e saldo na tela

CT02 - Verificar botão "olho" escondendo dados
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão "olho"
    Então verifico que o saldo foi escondido
    
CT03 - Verificar botão de indicação de amigos
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão "mail"
    Então verifico as informações para indicação de amigos
    E retorno da tela indicação para a tela inicial clicando em X
    



*** Settings ***
Resource    ../../base.robot

#Test Setup        Open App
Test Teardown     Teardown

*** Test Cases ***
C001 - Verificar informações do usuário
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    Então verifico meu nome e saldo na tela

C002 - Verificar botão "olho" escondendo dados
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão "olho"
    Então verifico que o saldo foi escondido
    
C003 - Verificar botão de indicação de amigos
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão "mail"
    Então verifico as informações para indicação de amigos

C004 - Verificar função Pix
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na função Pix
    Então verifico as informações da função Pix


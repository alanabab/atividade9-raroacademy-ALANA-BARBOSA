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

CT04 - Verificar botão Meus cartões
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    Então visualizo o botão Meus cartões

CT05 - Verificar mensagem de empréstimo
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico na mensagem informando valor de empréstimo disponível
    Então verifico as informações da função Empréstimos

CT06 - Verificar mensagem de planos futuros
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    Então visualizo a mensagem de planos futuros

CT07 - Verificar cartão de crédito e fatura
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico no botão Cartão de Crédito
    Então consigo visualizar a fatura atual
    E as transações realizadas

CT08 - Verificar Empréstimo
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico em Empréstimo
    Então verifico as informações da função Empréstimos

CT09 - Verificar Empréstimo
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    E clico em Investimentos
    Então verifico as informações da função Investimentos
    E retorno para a página inicial ao clicar em <

CT10 - Verificar Seguro de vida
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    Então visualizo a mensagem de seguro de vida

CT11 - Verificar Descubra mais - WhatsApp
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App 
    Então visualizo a mensagem WhatsApp

CT12 - Verificar Descubra mais - Indique seus amigos
    Dado que estou autenticado no App
    Quando acesso a tela inicial do App
    E clico em Indique seus amigos 
    Então verifico as informações para indicação de amigos

    



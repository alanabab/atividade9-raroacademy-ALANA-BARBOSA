*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
#ICONES DA BARRA SUPERIOR
${PROFILE_ICON}                     xpath=//android.widget.ScrollView/android.view.View[1] 
${EYE_ICON}                         xpath=//android.widget.ScrollView/android.widget.Button[1]
${HELP_ICON}                        xpath=//android.widget.ScrollView/android.widget.Button[2]
${MAIL_ICON}                        xpath=//android.widget.ScrollView/android.widget.Button[3]

#DADOS DO CLIENTE
${USER_NAME}                        xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${USER_BALANCE}                     xpath=//android.view.View[@content-desc="Conta\nR$ 181,79"]

#CARROSSEL DE FUNCIONALIDADES
${SERVICES_BAR}                     xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]
${PIX}                              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${PAYMENT}                          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${TRANSFER}                         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${DEPOSIT}                          xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${LOANS}                            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]
${MOBILE_RECHARGE}                  xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${DEMAND}                           xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${DONATION}                         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${ATALHOS}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

#MEUS CARTÕES
${MY_CARDS}                         xpath=//android.view.View[@content-desc="Meus cartões"]
${TEXTS_BAR}                         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[2]
${LOAN_TEXT}                        xpath=//android.view.View[@content-desc="Você tem R$ 10.000,00 disponíveis para empréstimo."]
${PLANS_TEXT}                       xpath=//android.view.View[@content-desc="Conquiste planos futuros: conheça as opções para guardar dinheiro."]

#MAIS INFOS DA PAGINA INICIAL
${CREDITCARD}                       xpath=//android.view.View[@content-desc="Cartão de Crédito\nFatura atual\nR$ 780,72\nLimite disponível R$ 806,78"]
${LOAN_INFO}                        xpath=//android.view.View[@content-desc="Empréstimo\nValor disponível de até\nR$ 10.000,00"]
${INVESTMENT}                       xpath=//android.view.View[@content-desc="Investimentos\nA revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital."]
${LIFE_INSURANCE}                   xpath=//android.view.View[@content-desc="Seguro de vida\nConheça Nubank Vida: um seguro simples e que cabe no bolso."]
${FIND_OUT_MORE_BAR}                xpath=//android.widget.HorizontalScrollView
${WHATSAPP}                         xpath=//android.view.View[@content-desc="WhatsApp\nNovo\nPagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa."]
${REFER_FRIENDS}                    xpath=//android.view.View[@content-desc="Indique seus amigos\nMostre aos seus amigos como é fácil ter uma vida sem burocracia."]

*** Keywords ***
Dado que estou autenticado no App
    Abrir App

Quando acesso a tela inicial do App
    Wait Until Page Contains Element    ${PROFILE_ICON}    10
    Wait Until Page Contains Element    ${EYE_ICON}
    Wait Until Page Contains Element    ${HELP_ICON}
    Wait Until Page Contains Element    ${MAIL_ICON}

Então verifico meu nome e saldo na tela
    Verifica visibilidade e texto     ${USER_NAME}    Olá, Breno Freitas
    Verifica visibilidade e texto     ${USER_BALANCE}    Conta\nR$ 181,79

E clico no botão "olho"
    Click Element    ${EYE_ICON}
    
Então verifico que o saldo foi escondido
    Wait Until Page Does Not Contain    R$ 181,79    10
    Page Should Not Contain Text    R$ 181,79
    Page Should Not Contain Text    R$ 780,72

E clico no botão "mail"
    Click Element    ${MAIL_ICON}

E clico na função Pix
    Espera o elemento e faz o clique    ${PIX}

E clico na função Pagar
    Espera o elemento e faz o clique    ${PAYMENT}

E clico na função Transferir
    Espera o elemento e faz o clique    ${TRANSFER}
    
E clico na função Depositar
    Espera o elemento e faz o clique    ${DEPOSIT}

E clico na função Empréstimos
    Espera o elemento e faz o clique    ${LOANS}

E clico na função Recarga de celular
    Swipe By Percent    90    40    0    40
    Espera o elemento e faz o clique    ${MOBILE_RECHARGE}

E clico na função Cobrar
    Swipe By Percent    90    40    0    40
    Espera o elemento e faz o clique    ${DEMAND}
    
E visualizo a função Doação
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${DONATION}
    Text Should Be Visible    Doação
        
E visualizo a função Encontrar atalhos
    Swipe By Percent    90    40    0    40
    Element Should Be Visible    ${ATALHOS}
    Text Should Be Visible    Encontrar atalhos
*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${CONTA_SCREEN}                    xpath=//android.widget.ScrollView
${CONTA_TITULO1}                   xpath=//android.view.View[@content-desc="Saldo disponível"]
${CONTA_SALDO}                     xpath=//android.view.View[@content-desc="R$ 181,79"]
${CONTA_POUPANCA}                  xpath=//android.view.View[@content-desc="Dinheiro guardado\nR$ 240,02"]
${CONTA_RENDIMENTO}                xpath=//android.view.View[@content-desc="Rendimento total da conta\n+R$ 0,20 este mês"]

#CARROSEL DE FUNCIONALIDADES
${CONTA_CARROSSEL}                   xpath=//android.widget.HorizontalScrollView
${CONTA_DEPOSITAR}                   xpath=//android.widget.HorizontalScrollView/android.widget.Button[1]
${CONTA_PAGAR}                       xpath=//android.widget.HorizontalScrollView/android.widget.Button[2]
${CONTA_TRANSFERIR}                  xpath=//android.widget.HorizontalScrollView/android.widget.Button[3]
${CONTA_EMPRESTIMOS}                 xpath=//android.widget.HorizontalScrollView/android.widget.Button[4]
${CONTA_DEPOSITAR}                   xpath=//android.widget.HorizontalScrollView/android.widget.Button[5]

#HISTÓRICO DE TRANSAÇÕES
${CONTA_HISTORICO}                 xpath=//android.view.View[@content-desc="Histórico"]
${CONTA_PATRICIA}                  xpath=//android.view.View[contains(@content-desc, "PATRICIA COSTA")]
${CONTA_ANDRE}                     xpath=//android.view.View[contains(@content-desc, "ANDRE JEY")]
${CONTA_ERIKO}                     xpath=//android.view.View[contains(@content-desc, "ERIKO BARBOSA")]
${CONTA_IVAN}                      xpath=//android.view.View[contains(@content-desc, "IVAN COELHO")]
${CONTA_DUVIDA}                    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CONTA_VOLTAR}                    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***
Então verifico as informações da conta
    Wait Until Page Contains Element    ${CONTA_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${CONTA_SCREEN}    ${CONTA_TITULO1}    ${CONTA_SALDO}    ${CONTA_POUPANCA}    ${CONTA_RENDIMENTO}    ${CONTA_CARROSSEL}    ${CONTA_DUVIDA}    ${CONTA_VOLTAR}
    Verifica texto de atributo do elemento    ${CONTA_TITULO1}    content-desc    Saldo disponível
    Verifica texto de atributo do elemento    ${CONTA_SALDO}    content-desc    R$ 181,79
    Verifica texto de atributo do elemento    ${CONTA_POUPANCA}    content-desc    Dinheiro guardado\nR$ 240,02
    Verifica texto de atributo do elemento    ${CONTA_RENDIMENTO}    content-desc    Rendimento total da conta\n+R$ 0,20 este mês

E verifico o histórico da conta
    Swipe By Percent    50    90    50    10
    Wait Until Page Contains Element    ${CONTA_IVAN}
    Verifica visibilidade e texto    ${CONTA_HISTORICO}    Histórico
    Verifica visibilidade e texto    ${CONTA_PATRICIA}    PATRICIA COSTA
    Verifica visibilidade e texto    ${CONTA_ANDRE}    ANDRE JEY
    Verifica visibilidade e texto    ${CONTA_ERIKO}    ERIKO BARBOSA
    Verifica visibilidade e texto    ${CONTA_IVAN}    IVAN COELHO

E retorno da tela conta para a tela inicial clicando em <
    Click Element    ${CONTA_VOLTAR}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}

E clico no botão Depositar
    Page Should Contain Text    Depositar
    Click Element    ${CONTA_DEPOSITAR}
*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${INDICACAO_SCREEN}                xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]
${INDICAR_BUTTON}                  xpath=//android.widget.Button[@content-desc="INDICAR AMIGOS"]
${INDICAR_EXIT}                    xpath=//android.widget.ImageView[@content-desc="Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia"]/android.widget.Button[1]

*** Keywords ***
Então verifico as informações para indicação de amigos
    Wait Until Page Contains Element    ${INDICAR_BUTTON}    10
    Verifica visibilidade e texto    ${INDICACAO_SCREEN}    Resgate seus amigos da fila do banco\nPara cada indicação aceita, um amigo salvo da burocracia
    Verifica visibilidade e texto    ${INDICAR_BUTTON}    INDICAR AMIGOS

E retorno da tela indicação para a tela inicial clicando em X
    Click Element    ${INDICAR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
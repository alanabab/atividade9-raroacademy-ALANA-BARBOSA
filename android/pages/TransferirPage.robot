*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${TRANSFERIR_SCREEN}                xpath=//android.widget.EditText[@text="R$ 0,00"]
${TRANSFERIR_EXPECT_INPUT}                xpath=//android.widget.EditText[@text="R$ 32,98"]
${TRANSFERIR_QRCODE}                xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[2]
${TRANSFERIR_EXIT}                  xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[1]

*** Keywords ***
Então verifico as informações da função Transferir
    Wait Until Page Contains Element    ${TRANSFERIR_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${TRANSFERIR_SCREEN}    ${TRANSFERIR_QRCODE}    ${TRANSFERIR_EXIT}
    Verifica texto de atributo do elemento    ${TRANSFERIR_SCREEN}    hint    Qual é o valor da transferência?\nSaldo disponível em conta R$ 181,79
    Element Should Contain Text    ${TRANSFERIR_SCREEN}    R$ 0,00

E retorno da tela transferir para a tela inicial clicando em X
    Click Element    ${TRANSFERIR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}

E digito o valor a ser transferido
    Input Text    ${TRANSFERIR_SCREEN}    3298
    Wait Until Element Is Visible    ${TRANSFERIR_EXPECT_INPUT}
    Element Should Contain Text    ${TRANSFERIR_EXPECT_INPUT}    R$ 32,98

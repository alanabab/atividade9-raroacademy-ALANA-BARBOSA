*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${COBRAR_SCREEN}                      xpath=//android.widget.EditText[@text="R$ 0,00"]
${COBRAR_EXPECT_INPUT}                xpath=//android.widget.EditText[@text="R$ 1.580.462,93"]
${COBRAR_EXIT}                        xpath=//android.widget.Button

*** Keywords ***
Então verifico as informações da função Cobrar
    Wait Until Page Contains Element    ${COBRAR_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${COBRAR_SCREEN}    ${COBRAR_EXIT}
    Verifica texto de atributo do elemento    ${COBRAR_SCREEN}    hint    Qual valor você quer receber?\nNão especificar um valor >
    Element Should Contain Text    ${COBRAR_SCREEN}    R$ 0,00

E retorno da tela cobrar para a tela inicial clicando em X
    Click Element    ${COBRAR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}

E digito o valor a ser recebido
    Input Text    ${COBRAR_SCREEN}    158046293
    Wait Until Element Is Visible    ${COBRAR_EXPECT_INPUT}
    Element Should Contain Text    ${COBRAR_EXPECT_INPUT}    R$ 1.580.462,93
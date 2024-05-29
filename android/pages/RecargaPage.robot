*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${RECARGA_SCREEN}                       xpath=//android.widget.EditText
${RECARGA_EXPECT_NUMBER}                xpath=//android.widget.EditText[@text="(41) 99912-3456"]
${RECARGA_EXIT}                         xpath=//android.widget.Button

*** Keywords ***
Então verifico as informações da função Recarga de Celular
    Wait Until Page Contains Element    ${RECARGA_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${RECARGA_SCREEN}    ${RECARGA_EXIT}
    Verifica texto de atributo do elemento    ${RECARGA_SCREEN}    hint    Qual número você quer recarregar?\n(DDD) + Número

E retorno da tela recarga de celular para a tela inicial clicando em X
    Click Element    ${RECARGA_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}

E digito o número do celular
    Input Text    ${RECARGA_SCREEN}    41999123456
    Wait Until Element Is Visible    ${RECARGA_EXPECT_NUMBER}
    Element Should Contain Text    ${RECARGA_EXPECT_NUMBER}    (41) 99912-3456
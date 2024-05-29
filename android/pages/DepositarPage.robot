*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${DEPOSITAR_SCREEN}                 xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
${DEPOSITAR_PIX}                    xpath=//android.view.View[@content-desc="Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana."]
${DEPOSITAR_BOLETO}                 xpath=//android.view.View[@content-desc="Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair."]
${DEPOSITAR_TED_DOC}                xpath=//android.view.View[@content-desc="TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis."]
${DEPOSITAR_SALARIO}                xpath=//android.view.View[@content-desc="Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo."]
${DEPOSITAR_EXIT}                   xpath=//android.widget.Button

*** Keywords ***
Então verifico as informações da função Depositar
    Wait Until Page Contains Element    ${DEPOSITAR_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${DEPOSITAR_SCREEN}    ${DEPOSITAR_PIX}    ${DEPOSITAR_BOLETO}    ${DEPOSITAR_TED_DOC}    ${DEPOSITAR_SALARIO}
    Element Should Contain Text    ${DEPOSITAR_SCREEN}    Como você quer depositar na sua conta do Nubank
    Element Should Contain Text    ${DEPOSITAR_PIX}    Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana.
    Element Should Contain Text    ${DEPOSITAR_BOLETO}    Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair.
    Element Should Contain Text    ${DEPOSITAR_TED_DOC}    TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis.
    Element Should Contain Text    ${DEPOSITAR_EXIT}     Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo.

E retorno da tela depositar para a tela inicial clicando em X
    Click Element    ${DEPOSITAR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
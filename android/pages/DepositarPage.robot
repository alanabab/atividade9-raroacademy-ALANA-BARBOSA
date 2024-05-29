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
    Verifica texto de atributo do elemento    ${DEPOSITAR_SCREEN}    content-desc    Como você quer depositar na sua conta do Nubank
    Verifica texto de atributo do elemento    ${DEPOSITAR_PIX}    content-desc    Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana.
    Verifica texto de atributo do elemento    ${DEPOSITAR_BOLETO}    content-desc    Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair.
    Verifica texto de atributo do elemento    ${DEPOSITAR_TED_DOC}    content-desc    TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis.
    Verifica texto de atributo do elemento    ${DEPOSITAR_SALARIO}    content-desc     Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo.

E retorno da tela depositar para a tela inicial clicando em X
    Click Element    ${DEPOSITAR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
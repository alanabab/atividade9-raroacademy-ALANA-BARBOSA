*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGAR_SCREEN}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View
${PAGAR_PIX}                   xpath=//android.view.View[@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${PAGAR_FATURA}                xpath=//android.view.View[@content-desc="Pagar fatura do cartão\nLibera o limite do seu Cartão de Crédito."]
${PAGAR_BOLETO}                xpath=//android.view.View[@content-desc="Pagar um boleto\nContas de luz, água, etc."]
${PAGAR_EXIT}                  xpath=//android.widget.Button

*** Keywords ***
Então verifico as informações da função Pagar
    Wait Until Page Contains Element    ${PAGAR_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${PAGAR_PIX}    ${PAGAR_FATURA}    ${PAGAR_BOLETO}    ${PAGAR_EXIT}
    Element Should Contain Text    ${PAGAR_PIX}    Pagar com Pix Leia um QR Code ou cole o código.
    Element Should Contain Text    ${PAGAR_FATURA}    Pagar fatura do cartão Libera o limite do seu Cartão de Crédito.
    Element Should Contain Text    ${PAGAR_BOLETO}    Pagar um boleto Contas de luz, água, etc.

E retorno da tela pagar para a tela inicial clicando em X
    Click Element    ${PAGAR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
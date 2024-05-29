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
    Verifica se os elementos estão habilitados    ${PAGAR_PIX}    ${PAGAR_FATURA}    ${PAGAR_BOLETO}    ${PAGAR_EXIT}
    Verifica visibilidade e texto    ${PAGAR_PIX}    Pagar com Pix\nLeia um QR Code ou cole o código.
    Verifica visibilidade e texto    ${PAGAR_FATURA}    Pagar fatura do cartão\nLibera o limite do seu Cartão de Crédito.
    Verifica visibilidade e texto    ${PAGAR_BOLETO}    Pagar um boleto\nContas de luz, água, etc.

E retorno da tela pagar para a tela inicial clicando em X
    Click Element    ${PAGAR_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
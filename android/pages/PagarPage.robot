*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${PAGAR_PIX}                   xpath=//android.view.View[@content-desc="Pagar com Pix\nLeia um QR Code ou cole o código."]
${PAGAR_FATURA}                xpath=//android.view.View[@content-desc="Pagar fatura do cartão\nLibera o limite do seu Cartão de Crédito."]
${PAGAR_BOLETO}                xpath=//android.view.View[@content-desc="Pagar um boleto\nContas de luz, água, etc."]
${PAGAR_EXIT}                  xpath=//android.widget.Button

*** Keywords ***

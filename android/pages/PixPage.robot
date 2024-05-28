*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${PIX_SCREEN}                  xpath=//android.widget.ImageView[@content-desc="Minha área Pix\nTudo o que você precisa para pagar, transferir ou cobrar.\nPagar\nTransferir\nCobrar"]
${PIX_EXIT}                    xpath=//android.widget.ImageView/android.widget.Button[1]
${PIX_PAYMENT}                 xpath=//android.widget.ImageView/android.widget.Button[2]
${PIX_TRANSFER}                xpath=//android.widget.ImageView/android.widget.Button[3]
${PIX_DEMAND}                  xpath=//android.widget.ImageView/android.widget.Button[4]
${PIX_KEYS}                    xpath=//android.view.View[@content-desc="Minhas chaves"]
${PIX_LIMIT}                   xpath=//android.view.View[@content-desc="Meu limite Pix"]
${PIX_HELP}                    xpath=//android.view.View[@content-desc="Me ajuda"]

*** Keywords ***
Então verifico as informações da função Pix
    Wait Until Page Contains Element    ${PIX_SCREEN}
    Element Should Be Enabled    ${PIX_PAYMENT}  
    Element Should Be Enabled    ${PIX_TRANSFER}
    Element Should Be Enabled    ${PIX_DEMAND}
    Element Should Be Enabled    ${PIX_KEYS}
    Element Should Be Enabled    ${PIX_LIMIT}
    Element Should Be Enabled    ${PIX_HELP}

E retorno da tela pix para a tela inicial clicando em X
    Click Element    ${PIX_EXIT}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
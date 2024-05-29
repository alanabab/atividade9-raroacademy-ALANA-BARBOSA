*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${EMPRESTIMO_SCREEN}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View
${EMPRESTIMO_TEXT1}                 xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${EMPRESTIMO_TEXT2}                 xpath=//android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${EMPRESTIMO_TEXT3}                 xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${EMPRESTIMO_TEXT4}                 xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${EMPRESTIMO_TEXT5}                 xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]
${EMPRESTIMO_DUVIDA}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${EMPRESTIMO_VOLTAR}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[1]

*** Keywords ***
Então verifico as informações da função Empréstimos
    Wait Until Page Contains Element    ${EMPRESTIMO_SCREEN}
    Verifica se os elementos estão visíveis e habilitados    ${EMPRESTIMO_SCREEN}    ${EMPRESTIMO_TEXT1}    ${EMPRESTIMO_TEXT2}    ${EMPRESTIMO_TEXT3}    ${EMPRESTIMO_TEXT5} ${EMPRESTIMO_VOLTAR}    ${EMPRESTIMO_DUVIDA}
    Verifica visibilidade e texto    ${EMPRESTIMO_TEXT4}    NOVO EMPRÉSTIMO
    Element Should Contain Text    ${EMPRESTIMO_TEXT1}    O valor disponível no momento é de R$ 10.000,00
    Element Should Contain Text    ${EMPRESTIMO_TEXT2}    Este valor pode mudar diariamente devido à nossa análise de crédito.
    Element Should Contain Text    ${EMPRESTIMO_TEXT3}    Entenda como funciona >
    Element Should Contain Text    ${EMPRESTIMO_TEXT5}    Você não possui nenhum empréstimo ativo.

E retorno da tela empréstimos para a tela inicial clicando em <
    Click Element    ${EMPRESTIMO_VOLTAR}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
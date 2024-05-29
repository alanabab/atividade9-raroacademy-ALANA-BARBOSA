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
    Verifica texto de atributo do elemento    ${EMPRESTIMO_TEXT4}    content-desc    NOVO EMPRÉSTIMO
    Verifica texto de atributo do elemento    ${EMPRESTIMO_TEXT1}    content-desc    O valor disponível no momento é de R$ 10.000,00
    Verifica texto de atributo do elemento    ${EMPRESTIMO_TEXT2}    content-desc    Este valor pode mudar diariamente devido à nossa análise de crédito.
    Verifica texto de atributo do elemento    ${EMPRESTIMO_TEXT3}    content-desc    Entenda como funciona >
    Verifica texto de atributo do elemento    ${EMPRESTIMO_TEXT5}    content-desc    Você não possui nenhum empréstimo ativo.

E retorno da tela empréstimos para a tela inicial clicando em <
    Click Element    ${EMPRESTIMO_VOLTAR}
    Wait Until Element Is Visible    ${USER_NAME}
    Element Should Be Visible    ${USER_NAME}
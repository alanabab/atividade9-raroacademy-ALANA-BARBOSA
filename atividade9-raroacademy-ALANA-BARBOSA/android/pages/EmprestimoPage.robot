*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${EMPRESTIMO_TEXT1}                 xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${EMPRESTIMO_TEXT2}                 xpath=//android.view.View[@content-desc="Este valor pode mudar diariamente devido à nossa análise de crédito."]
${EMPRESTIMO_TEXT3}                 xpath=//android.view.View[@content-desc="Entenda como funciona >"]
${EMPRESTIMO_TEXT4}                 xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]
${EMPRESTIMO_TEXT5}                 xpath=//android.view.View[@content-desc="Você não possui nenhum empréstimo ativo."]
${EMPRESTIMO_DUVIDA}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[2]
${EMPRESTIMO_VOLTAR}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button[1]

*** Keywords ***

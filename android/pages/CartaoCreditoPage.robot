*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${CREDITO_SCREEN}                       xpath=//android.widget.ScrollView
${CREDITO_FATURA}                       xpath=//android.view.View[@content-desc="Fatura atual"]
${CREDITO_VALOR}                        xpath=//android.view.View[@content-desc="R$ 780,72"]
${CREDITO_LIMITE}                       xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]

${CREDITO_BARRA}                        xpath=//android.widget.HorizontalScrollView
${CREDITO_PAGAR_FATURA}                         xpath=//android.view.View[@content-desc="Pagar fatura"]
${RESUMO_FATURA}                        xpath=//android.view.View[@content-desc="Resumo de faturas"]
${AJUSTAR_LIMITE}                       xpath=//android.view.View[@content-desc="Ajustar limites"]
${CARTAO_VIRTUAL}                       xpath=//android.view.View[@content-desc="Cartão virtual"]

${PAGAMENTO_RECEBIDO}                   xpath=//android.view.View[@content-desc="Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix"]
${SUPERMERCADO}                         xpath=//android.view.View[@content-desc="Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${TRANSFERENCIA_ENVIADA}                xpath=//android.view.View[@content-desc="Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${CREDITO_DUVIDA}                       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]
${CREDITO_LUPA}                         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CREDITO_VOLTAR}                       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***
Então consigo visualizar a fatura atual
    Wait Until Element Is Visible    ${CREDITO_PAGAR_FATURA}
    Verifica se os elementos estão visíveis e habilitados    ${CREDITO_FATURA}    ${CREDITO_VALOR}    ${CREDITO_LIMITE}    ${CREDITO_BARRA}    ${CREDITO_PAGAR_FATURA}    ${RESUMO_FATURA}    ${AJUSTAR_LIMITE}    ${CARTAO_VIRTUAL}    ${CREDITO_DUVIDA}    ${CREDITO_LUPA}    ${CREDITO_VOLTAR}
    Verifica texto de atributo do elemento    ${CREDITO_FATURA}    content-desc    Fatura atual
    Verifica texto de atributo do elemento    ${CREDITO_VALOR}    content-desc    R$ 780,72
    Verifica texto de atributo do elemento    ${CREDITO_LIMITE}    content-desc    Limite disponível R$ 806,78
    Verifica texto de atributo do elemento    ${CREDITO_PAGAR_FATURA}    content-desc    Pagar fatura
    Verifica texto de atributo do elemento    ${RESUMO_FATURA}    content-desc    Resumo de faturas
    Verifica texto de atributo do elemento    ${AJUSTAR_LIMITE}    content-desc    Ajustar limites
    Verifica texto de atributo do elemento    ${CARTAO_VIRTUAL}    content-desc    Cartão virtual

E as transações realizadas
    Swipe By Percent    50    90    50    10
    Verifica se os elementos estão visíveis e habilitados    ${PAGAMENTO_RECEBIDO}     ${SUPERMERCADO}    ${TRANSFERENCIA_ENVIADA}
    Verifica texto de atributo do elemento    ${PAGAMENTO_RECEBIDO}    content-desc    Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix
    Verifica texto de atributo do elemento    ${SUPERMERCADO}    content-desc    Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix
    Verifica texto de atributo do elemento    ${TRANSFERENCIA_ENVIADA}    content-desc    Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix

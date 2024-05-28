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
${PAGAMENTO_RECEBIDO}                   xpath=//android.view.View[@content-desc="Pagamento recebido\nOntem\nVOCÊ PAGOU R$ 50,00\nR$ 30,00\nPix"]
${SUPERMERCADO}                         xpath=//android.view.View[@content-desc="Supermercado\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${TRANSFERENCIA_ENVIADA}                xpath=//android.view.View[@content-desc="Transferência enviada\nOntem\nBRENO FREITAS\nR$ 30,00\nPix"]
${CREDITO_DUVIDA}                       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[3]
${CREDITO_LUPA}                         xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CREDITO_VOLTAR}                       xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***

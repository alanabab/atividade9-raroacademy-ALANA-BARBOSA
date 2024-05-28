*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${CONTA_SCREEN}                    xpath=//android.widget.ScrollView
${CONTA_TITULO1}                   xpath=//android.view.View[@content-desc="Saldo disponível"]
${CONTA_SALDO}                     xpath=//android.view.View[@content-desc="R$ 181,79"]
${CONTA_POUPANCA}                  xpath=//android.view.View[@content-desc="Dinheiro guardado\nR$ 240,02"]
${CONTA_RENDIMENTO}                xpath=//android.view.View[@content-desc="Rendimento total da conta\n+R$ 0,20 este mês"]
${CONTA_CARROSSEL}                 xpath=//android.widget.HorizontalScrollView
${CONTA_HISTORICO}                 xpath=//android.view.View[@content-desc="Histórico"]
${CONTA_PATRICIA}                  xpath=//android.view.View[contains(@content-desc, "PATRICIA COSTA")]
${CONTA_ANDRE}                     xpath=//android.view.View[contains(@content-desc, "ANDRE JEY")]
${CONTA_ERIKO}                     xpath=//android.view.View[contains(@content-desc, "ERIKO BARBOSA")]
${CONTA_IVAN}                      xpath=//android.view.View[contains(@content-desc, "IVAN COELHO")]
${CONTA_DUVIDA}                    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[2]
${CONTA_VOLTAR}                    xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View/android.widget.Button[1]

*** Keywords ***
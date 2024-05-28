*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${INV_SCREEN}               xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View
${INV_IMAGE}                xpath=//android.widget.ImageView
${INV_TITULO}               xpath=//android.view.View[@content-desc="Invista sem taxas e burocracia!"]
${INV_TEXTO1}               xpath=//android.view.View[@content-desc="Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!"]
${INV_TEXTO2}               xpath=//android.view.View[@content-desc="Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações!"]
${INV_AVANCAR}              xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.widget.Button
${INV_VOLTAR}               xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.FrameLayout/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button

*** Keywords ***
*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${TRANSFERIR_SCREEN}                xpath=//android.widget.EditText[@text="R$ 0,00"]
${TRANSFERIR_QRCODE}                xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[2]
${TRANSFERIR_EXIT}                  xpath=//android.widget.EditText[@text="R$ 0,00"]/android.view.View/android.widget.Button[1]

*** Keywords ***

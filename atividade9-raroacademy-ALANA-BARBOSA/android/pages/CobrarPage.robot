*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${COBRAR_SCREEN}                xpath=//android.widget.EditText[@text="R$ 0,00"]
${COBRAR_EXIT}                  xpath=//android.widget.Button

*** Keywords ***
*** Settings ***
Resource    ../../base.robot
Resource    ../utils/config.robot
Resource    ../utils/commons.robot

*** Variables ***
${DEPOSITAR_TITULO}                 xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"]
${DEPOSITAR_PIX}                    xpath=//android.view.View[@content-desc="Pix\nSem custo e cai na hora, mesmo de madrugada e fim de semana."]
${DEPOSITAR_BOLETO}                 xpath=//android.view.View[@content-desc="Boleto\nSem custo e pode levar 3 dias úteis para o dinheiro cair."]
${DEPOSITAR_TED_DOC}                xpath=//android.view.View[@content-desc="TED/DOC\nPode ter custo e cai somente em horário comercial de dias úteis."]
${DEPOSITAR_SALARIO}                xpath=//android.view.View[@content-desc="Trazer seu salário\nReceba todo mês direto aqui na sua conta, sem custo."]
${DEPOSITAR_EXIT}                   xpath=//android.widget.Button

*** Keywords ***
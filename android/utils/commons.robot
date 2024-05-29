*** Settings ***

Resource    ../../base.robot

*** Keywords ***

Espera o elemento e faz o clique
    [Arguments]    ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Espera o elemento e faz o inputtext
    [Arguments]    ${elemento}    ${texto}
    Wait Until Element Is Visible    ${elemento}
    Input Text                       ${elemento}    ${texto}

Verifica visibilidade e texto
    [Arguments]    ${elemento}    ${nome}
    Element Should Be Visible    ${elemento}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc 
    Should Contain    ${contentDesc}    ${nome}

Verifica texto de atributo do elemento
    [Arguments]    ${elemento}    ${atributo}    ${texto}
    ${attr}=    Get Element Attribute    ${elemento}    ${atributo}
    Should Contain    ${attr}    ${texto}

Verifica se os elementos estão visíveis
    [Arguments]    @{elementos}
    FOR    ${elemento}    IN    @{elementos}
        Element Should Be Visible    ${elemento}
    END

Verifica se os elementos estão habilitados
    [Arguments]    @{elementos}
    FOR    ${elemento}    IN    @{elementos}
        Element Should Be Enabled    ${elemento}
    END

Verifica se os elementos estão visíveis e habilitados
    [Arguments]    @{elementos}
    Verifica se os elementos estão visíveis    @{elementos}
    Verifica se os elementos estão habilitados    @{elementos}

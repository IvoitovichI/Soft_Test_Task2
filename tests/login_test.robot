*** Settings ***
Resource    ../resources/keywords.robot
Resource    ../resources/variables.robot

*** Test Cases ***
Login Test
    Open Demo Blaze
    Click Element    id=login2
    Wait Until Element Is Visible    id=loginusername    5s
    Input Text    id=loginusername    ${USERNAME}
    Input Text    id=loginpassword    ${PASSWORD}
    Click Button    xpath=//button[text()='Log in']
    Sleep    2s
    Page Should Contain    Welcome ${USERNAME}
    Close Demo





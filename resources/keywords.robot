*** Keywords ***
Open Demo Blaze
    [Arguments]    ${url}=${URL}
    Run Keyword And Ignore Error    Run Keyword If    '${RUN_ON_BROWSERSTACK}'=='True'    Open Browser_Remote    ${url}    ${BROWSERSTACK_CAPS}


Open Browser Local
    [Arguments]    ${url}
    Open Browser    ${url}    ${BROWSER}    executable_path=${CHROMEDRIVER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//nav    10s

Open Browser_Remote
    [Arguments]    ${url}    ${caps}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --start-maximized
    Open Browser    ${url}    chrome    options=${options}    remote_url=https://${BROWSERSTACK_USER}:${BROWSERSTACK_KEY}@hub-cloud.browserstack.com/wd/hub



Close Demo
     SeleniumLibrary.Close Browser

Wait Until Element Is Clickable
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    ${timeout}
    Wait Until Element Is Enabled    ${locator}    ${timeout}

Sign Up User
    Wait Until Element Is Clickable    id=signin2
    Click Element    id=signin2
    Wait Until Element Is Visible    id=sign-username    3s
    Input Text       id=sign-username    ${USERNAME}
    Input Text       id=sign-password    ${PASSWORD}
    Click Button     xpath=//button[text()='Sign up']
    
    Run Keyword And Ignore Error    Handle Alert    action=ACCEPT
    Sleep    1s
   
    Run Keyword And Ignore Error    Click Element    xpath=//div[@id='signInModal']//button[@class='close']
    Sleep    1s

Login User
    [Arguments]    ${username}=${USERNAME}    ${password}=${PASSWORD}
    Wait Until Element Is Clickable    id=login2
    Click Element    id=login2
    Wait Until Element Is Visible    id=loginusername    3s
    Input Text       id=loginusername    ${username}
    Input Text       id=loginpassword    ${password}
    Click Button     xpath=//button[text()='Log in']
    
    ${alert_status}=    Run Keyword And Return Status    Handle Alert    action=ACCEPT
    Sleep    1s
   
    Run Keyword And Ignore Error    Click Element    xpath=//div[@id='logInModal']//button[@class='close']
    Sleep    1s
    
    ${login_success}=    Run Keyword And Return Status    Wait Until Page Contains    Welcome ${username}    10s
    Run Keyword If    not ${login_success}    Fail    Login failed for user '${username}'


Logout User
    Wait Until Element Is Clickable    id=logout2
    Click Element    id=logout2
    Wait Until Element Is Visible    id=login2    3s

Buy Product
    Wait Until Element Is Clickable    xpath=//a[text()='Nokia lumia 1520']
    Click Link    xpath=//a[text()='Nokia lumia 1520']
    Wait Until Element Is Clickable    xpath=//a[text()='Add to cart']    3s
    Click Element    xpath=//a[text()='Add to cart']
   
    Run Keyword And Ignore Error    Handle Alert    action=ACCEPT
    Click Link    xpath=//a[text()='Cart']
    Wait Until Page Contains    Nokia lumia 1520    7s

About Us Page
    Wait Until Element Is Clickable    xpath=//a[text()='About us']
    Click Element    xpath=//a[text()='About us']
    Wait Until Element Is Visible    id=videoModal    5s
    Run Keyword And Ignore Error    Click Element    xpath=//div[@id='videoModal']//button[@class='close']
    


Go Home Page
    Wait Until Element Is Clickable    xpath=//a[text()='Home ']
    Click Element    xpath=//a[text()='Home ']
    Wait Until Page Contains Element    xpath=//div[@id='tbodyid']    5s

Go Cat_Laptops
    Wait Until Element Is Clickable    xpath=//a[text()='Monitors']
    Click Element    xpath=//a[text()='Monitors']
    Wait Until Page Contains Element    xpath=//div[@id='tbodyid']//div[contains(@class, 'card')]    5s

Buy 
    Wait Until Element Is Clickable    xpath=//a[text()='ASUS Full HD']
    Click Link    xpath=//a[text()='ASUS Full HD']
    Wait Until Element Is Clickable    xpath=//a[text()='Add to cart']    10s
    Click Element    xpath=//a[text()='Add to cart']
   
    Run Keyword And Ignore Error    Handle Alert    action=ACCEPT
    Click Link    xpath=//a[text()='Cart']
    Wait Until Page Contains    ASUS Full HD    7s



     
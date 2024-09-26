*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://thinking-tester-contact-list.herokuapp.com/login
${SUBMIT_LOGIN}    xpath: //*[@id="submit"]
${ERROR_MESSAGE}    xpath: //*[@id="error"]
${LOGIN_TITLE}    xpath: /html/body/h1
${VALID_USERNAME}    xpath: //*[@id="email"]    
${VALID_PASSWORD}    xpath: //*[@id="password"]
${d_username}    ana@teste.com
${d_password}    1234567
${logged_message}    xpath: /html/body/div/header/h1


*** Keywords ***
Open the browser
    Open Browser
    Maximize Browser Window
    Go To    url=${URL}

Close the browser
    Close Browser

Click submit button
    Wait Until Element Is Visible    ${LOGIN_TITLE}
    Click Element    ${SUBMIT_LOGIN}
    
Check error message
    Element Text Should Be    ${ERROR_MESSAGE}    Incorrect username or password

Type invalid email
    Input Text    xpath: //*[@id="email"]    invalid
    
Type invalid password
    Input Text    xpath: //*[@id="password"]    invalid

Type valid email
    Input Text    ${VALID_USERNAME}    ${d_username}
    
Type valid password
    Input Text    ${VALID_PASSWORD}    ${d_password}
Check success message
    Wait Until Element Is Visible    ${logged_message}
    Element Text Should Be    ${logged_message}    Contact List
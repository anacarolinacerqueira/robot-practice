*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}            https://thinking-tester-contact-list.herokuapp.com/login
${SUBMIT_LOGIN}    xpath: //*[@id="submit"]
${ERROR_MESSAGE}    xpath: //*[@id="error"]
${LOGIN_TITLE}    xpath: /html/body/h1

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
    
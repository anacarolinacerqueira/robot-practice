*** Settings ***
Resource         login_resources.robot
Test Setup        Open the browser
Test Teardown    Close the browser

*** Test Cases ***
CT01 - Login without type credentials
    [Documentation]    This test case will try to login without type credentials
    [Tags]    login
    Click submit button
    Check error message

CT02 - Login with invalid credentials
    [Documentation]    This test case will try to login with invalid email and password
    [Tags]    login
    Type email teste@teste.com
    Type password invalid
    Click submit button
    Check error message

CT03 - Login with valid credentials
    [Documentation]    This test case will try to login with valid email and password
    [Tags]    login
    Type email ana@teste.com
    Type password 1234567
    Click submit button
    Check success message
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
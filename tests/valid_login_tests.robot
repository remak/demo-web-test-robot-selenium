*** Settings ***
Documentation     A test suite with a tests for login with valid and bad password.

Resource          ../pages/login_page.robot
Resource          ../pages/welcome_page.robot
Resource          ../pages/error_page.robot

*** Test Cases ***
Valid Login and Password
    [Tags]    smoke    positive
    Open Browser To Login Page
    Input Username    demo
    Input Password    good_pass
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

Valid Login and broken Password
    [Tags]    smoke    negative
    Open Browser To Login Page
    Input Username    demo
    Input Password    bad_pass
    Submit Credentials
    Error Page Should Be Open
    [Teardown]    Close Browser
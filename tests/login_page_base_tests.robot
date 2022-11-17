*** Settings ***
Documentation     A test suite with a tests for login with valid and bad password.

Resource          ../pages/login_page.robot

*** Test Cases ***
Valid Login and Password
    [Tags]    link
    Open Browser To Login Page
    Verify Login Link
    [Teardown]    Close Browser

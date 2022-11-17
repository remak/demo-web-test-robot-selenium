*** Settings ***
Documentation    A test suite for test link on login page
...
Resource         ../pages/error_page.robot
Resource         ../pages/login_page.robot

*** Test Cases ***
Open Error Page
    [Documentation]    Test to open error page
    [Tags]    smoke
    Open Browser To Error Page
    Error Page Should Be Open
    [Teardown]    Close Browser

Go To Login Page
    [Documentation]    Test to go to login page again
    [Tags]    smoke
    Open Browser To Error Page
    Click To LoginPage Link
    Login Page Should Be Open
    [Teardown]    Close Browser

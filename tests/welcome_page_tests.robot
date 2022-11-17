*** Settings ***
Documentation    A test suite for test link on login page
...
Resource         ../pages/welcome_page.robot
Resource         ../pages/profile_page.robot
Test Teardown    Close Browser

*** Test Cases ***
Open Welcome Page
    [Documentation]    Test to open welcome page
    [Tags]    smoke
    Open Browser To Welcome Page
    Welcome Page Should Be Open

Go To Profile Page
    [Documentation]    Test to go to profile page by click to link
    [Tags]      smoke
    Open Browser To Welcome Page
    Click To Profile Link
    Profile Page Should Be Open
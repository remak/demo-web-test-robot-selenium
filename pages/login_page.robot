
*** Settings ***
Documentation     Login page file with specific keywords
...               
Library           SeleniumLibrary
Library           BuiltIn
Resource          base_page.robot

*** Variables ***
${LOGIN URL}        ${SERVER}/

# Locators
${username_field}       username_field
${link_to_registration}     link_reg

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login Page

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    ${username_field}     ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Submit Credentials
    SeleniumLibrary.Wait Until Element Is Visible   submit
    click element    submit

Verify Login Link
    element should be visible    ${link_to_registration}
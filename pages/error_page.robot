
*** Settings ***
Documentation     Error page file with specific keywords
...               
Library           SeleniumLibrary
Library           BuiltIn
Resource          base_page.robot

*** Variables ***
${ERROR URL}        ${SERVER}/error.html

# Locators
${link_to_login}    login_link

*** Keywords ***
Open Browser To Error Page
    Open Browser with Url    ${ERROR URL}

Error Page Should Be Open
    Location Should Be    ${ERROR URL}
    Title Should Be       Error Page

Click To LoginPage Link
    click link    ${link_to_login}
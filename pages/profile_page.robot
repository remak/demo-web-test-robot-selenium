
*** Settings ***
Documentation     Welcome page file with specific keywords
...               
Library           SeleniumLibrary
Library           BuiltIn
Resource          base_page.robot

*** Variables ***
${PROFILE URL}    ${SERVER}/profile.html

# Locators

*** Keywords ***
Open Browser To Profile Page
    Open Browser with Url    ${PROFILE URL}

Profile Page Should Be Open
    Location Should Be    ${PROFILE URL}
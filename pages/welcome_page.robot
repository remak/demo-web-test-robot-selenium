
*** Settings ***
Documentation     Welcome page file with specific keywords
...               
Library           SeleniumLibrary
Library           BuiltIn
Resource          base_page.robot

*** Variables ***
${WELCOME URL}    ${SERVER}/welcome.html

# Locators
${link_to_profile}  //a[@href="profile.html"]

*** Keywords ***
Open Browser To Welcome Page
    Open Browser with Url    ${WELCOME URL}

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page

Click To Profile Link
    Click Link    ${link_to_profile}
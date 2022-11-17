*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${PORT}             7272
${SERVER}           http://localhost:${PORT}
${BROWSER}          Firefox
${DELAY}            0
${VALID USER}       demo
${VALID PASSWORD}   password
${LINK URL}         ${SERVER}/link

*** Keywords ***
Open Browser with Url
    [Arguments]    ${url}
    Open Browser   ${url}     ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

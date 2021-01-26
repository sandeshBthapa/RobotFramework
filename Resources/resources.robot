*** Settings ***
Library  SeleniumLibrary


*** Keywords ***

LunchBrowser
    [Arguments]     ${app_url}  ${app_browser}
    open browser    ${app_url}  ${app_browser}
    maximize browser window

#test code for closing all the browsers

*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${browser}  chrome
${url}  https://www.facebook.com/


*** Test Cases ***

MyTestCase
    open browser    ${url}  ${browser}
    maximize browser window


    open browser    https://www.youtube.com     chrome
    maximize browser window


    close all browser
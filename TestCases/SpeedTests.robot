*** Settings ***
Library  SeleniumLibrary


*** Variables ***

${browser}      chrome
${url}      http://demowebshop.tricentis.com/register



*** Test Cases ***
RegTest

    open browser    ${url}      ${browser}
    maximize browser window
    #set selenium timeout    10 seconds
    #wait until page contains    Register    #default is for 5 seconds

    set selenium implicit wait  10 seconds

    select check box    Gender      M
    input text      name:FirstName  John
    input text      name:LastName   david
    input text      name:Email      anhc@gmail.com
    input text      name:Password   davidjohn
    input text      name:ConfirmPassword    davidjohn

    close browser


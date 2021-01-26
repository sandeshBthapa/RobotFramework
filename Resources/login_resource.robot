*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${url}  https://opensource-demo.orangehrmlive.com/
${browser}      chrome


*** Keywords ***

Open my browser
    open browser    ${url}      ${browser}

Close my browser
    close browser

check for page contains
    wait until page contains    LOGIN Panel

check for username and password
    [Arguments]     ${username}     ${password}

    input text      id:txtUsername      ${username}
    input text      id:txtPassword      ${password}

Click login button
    click element   id:btnLogin

click logout button
    click element   Logout

Error msg
    page should contain    Invalid credentials

Dashboard should present
    page should contain   Dashboard




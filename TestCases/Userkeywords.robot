*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/resources.robot


*** Variables ***

${url}      https://opensource-demo.orangehrmlive.com/
${browser}      chrome


*** Test Cases ***

TC1
    LunchBrowser    ${url}  ${browser}
    set selenium speed      3 seconds
    wait until page contains     LOGIN Panel

    input text      id:txtUsername      Admin
    input text      id:txtPassword      admin123
    click element   id:btnLogin
    ${countlink}=    get element count  xpath://a
    log to console      ${countlink}


    :   FOR     ${i}    IN RANGE    1   ${countlink}+1
    \   ${link_txt}=    get text    xpath:(//a)[${i}]
    \   log to console  ${link_txt}


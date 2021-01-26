*** Settings ***
Library     SeleniumLibrary
Resource        ../Resources/login_resource.robot

Suite Setup  Open my browser
Suite Teardown  Close my browser
Test Template   Invalid login



*** Test Cases ***



Right user wrong pass   Admin   xyz
Wrong user right pass   xyz     admin123
Wrong user wrong pass   xyz     xyz



#right user right pass    Admin   admin123



*** Keywords ***

Invalid login
    check for page contains
    [Arguments]     ${username}     ${password}
    check for username and password     ${username}     ${password}
    Click login button
    Error msg



Valid login
    check for page contains
    [Arguments]     ${username}     ${password}
    check for username and password     ${username}     ${password}
    click login button
    Dashboard should present
    ${countlink}=    get element count  xpath://a
    log to console      ${countlink}


    FOR     ${i}    IN RANGE    1   ${countlink}+1
    \   ${link_txt}=    get text    xpath:(//a)[${i}]
    \   log to console  ${link_txt}
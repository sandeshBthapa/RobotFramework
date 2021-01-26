

*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***

TestingButton
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed      3seconds    #slow the overall speed of execution


    #for radio button

    select radio button     sex     Female

    select radio button     exp     5


    #for check boxes

    select checkbox     BlackTea
    select checkbox     RedTea
    unselect checkbox       BlackTea


    #for dropdown  can be select by [ label index value ]

    select from list by label   continents      Australia
    select from list by index   continents      6


    # for multiple selection

    select from list by label   selenium_commands       Switch Commands
    select from list by label   selenium_commands       WebElement Commands

    unselect from list by label     selenium_commands   Switch Commands



*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

NavigationTest

    open browser    https://www.google.com/      chrome

    ${loc}=    get location
    loc to console  ${loc}

    go to   https://bing.com/       chrome

    ${loc}=    get location
    loc to console  ${loc}

    go back

    ${loc}=    get location
    loc to console  ${loc}
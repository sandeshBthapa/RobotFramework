*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

MultipleBrowserTest

    open browser    https://www.google.com/     chrome

    maximize browser window


    open browser    https://www.bing.com/       chrome
    maximize browser window


    # switching between browser

    switch browser  1
    ${title} =  get title

    log to console  ${title}

    switch browser  2

    ${title1}   get title

    log to console  ${title}

    sleep   3

    close all browsers
*** Settings ***
Library  SeleniumLibrary


*** Test Cases ***

HandlingAlerts

    open browser    http://testautomationpractice.blogspot.com/     chrome
    maximize browser window

    click element   xpath://*[@id="HTML9"]/div[1]/button  #opens alert window

    sleep   3

    #handle alert    accept
    #handle alert    dismiss

    alert should present    Press a button!  #auto close pop up if msg is present


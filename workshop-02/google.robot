*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    Open Browser    http://www.google.co.th    Chrome
    Input Text     q    Grace 
    Submit Form
    Wait Until Page Contains    Grace
*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    Open Browser    http://www.google.co.th     chrome
    Input Text      q                           boat
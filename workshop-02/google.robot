*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Chrome
#     Open Browser    https://www.google.co.th    chrome
#     Input Text  q   test100
    เปิดโครมขึ้นมา
    ค้นหาคำว่า iPhone
    
*** Keywords ***
เปิดโครมขึ้นมา
    Open Browser    https://www.google.co.th    chrome
ค้นหาคำว่า iPhone
    Input Text    q    iPhone
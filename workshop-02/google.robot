*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา joker ใน Google Chrome ผ่าน Chrome
    เปิดกูเกิลโครมขึ้นมา
    ใส่ข้อความค้นหา

*** Keywords ***
เปิดกูเกิลโครมขึ้นมา
    Open Browser    http://www.google.co.th    chrome
ใส่ข้อความค้นหา
    Input Text    q    joker

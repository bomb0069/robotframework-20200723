*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    เปิด Chrome ขึ้นมา
    ค้นหา facebook
    คลิ้กปุ่ม serach  #enter
    คลิ้ก Link แรกที่เจอ
    ปิด บราวเซอร์
    
*** Keywords ***
เปิด Chrome ขึ้นมา
    Open Browser    http://www.google.co.th     chrome
ค้นหา facebook
    Input Text    q    facebook
คลิ้กปุ่ม serach
    Press Keys    btnK    RETURN
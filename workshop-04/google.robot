*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    เปิด Chrome ขึ้นมา
    ค้นหา รังนก
    คลิ้กปุ่ม serach  #enter
    คลิ้ก link แรกที่เจอ
    ปิด บราวเซอร์
    
*** Keywords ***
เปิด Chrome ขึ้นมา
    Open Browser    http://www.google.co.th     chrome
ค้นหา facebook
    Input Text    q    รังนก
คลิ้กปุ่ม serach
    Press Keys    q   RETURN
คลิ้ก link แรกที่เจอ
    Click Element   class:g
ปิด บราวเซอร์
    Close Browser
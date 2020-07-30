*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
ค้นหาบน Google ผ่าน Chrome
    [Arguments]    ${SEARCH_TEXT}
    ค้นหา    ${SEARCH_TEXT}
    คลิ้กปุ่ม search 
    คลิ้ก link แรกที่เจอ

เปิด Chrome ขึ้นมา
    Open Browser    ${URL}     chrome

ค้นหา
    [Arguments]   ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

คลิ้กปุ่ม search
    Press Keys    q   RETURN

คลิ้ก link แรกที่เจอ
    Click Link   //div[@class="r"]//a

ปิด บราวเซอร์
    Close Browser 
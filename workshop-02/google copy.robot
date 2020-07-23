*** Settings ***
Library     Selenium2Library


*** Test Cases ***
ค้นหา แมว ใน google ผ่าน Chrome
    เปิด Chrome เข้า google.com
    ใส่คำที่ใช้ค้นหา
    กดปุ่มค่นหา
    รอจนเปลี่ยนเป็นหน้าผลการค้นหา
    คลิ้กลิงค์แรกที่เจอ
    ปิด Chrome

*** Keywords ***
เปิด Chrome เข้า google.com
    Open Browser    http://www.google.com   Chrome
ใส่คำที่ใช้ค้นหา      
    Input Text      q      แมว
กดปุ่มค่นหา                
    Click Button    btnK  
รอจนเปลี่ยนเป็นหน้าผลการค้นหา
    Wait Until Page Contains    แมว
คลิ้กลิงค์แรกที่เจอ
    Click Element      class:g
ปิด Chrome
    Close Browser
    
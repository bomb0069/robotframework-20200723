*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

เปิด Google Chrome แล้วเข้า URL www.google.co.th
    Open Browser    http://www.google.co.th    gc
พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
    Input Text    q   robotframework
กดปุ่ม Enter
    Press Keys    q    RETURN
จะต้องพบคำว่า robotframework ในผลลัพท์
    Title Should Be    robotframework - ค้นหาด้วย Google
คลิก link แรกที่เจอ
    Click Link    //div[@class="r"]//a
ปิด Browser
    Close Browser

*** Test Cases ***
ค้นหา robotframework ใน Google ผ่าน Google Chrome
    เปิด Google Chrome แล้วเข้า URL www.google.co.th
    พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
    กดปุ่ม Enter
ดูผลการค้นหาว่ามี robotframework มั้ย
    จะต้องพบคำว่า robotframework ในผลลัพท์
    คลิก link แรกที่เจอ
ปิด
    ปิด Browser

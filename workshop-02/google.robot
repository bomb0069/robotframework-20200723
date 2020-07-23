*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด Google ด้วย Google Chrome
    Open Browser    http://www.google.co.th    chrome
ค้นหาคำว่า ยาธาตุน้ำขาว
    Input Text    q    ยาธาตุน้ำขาว
กด Enter เพื่อค้นหา
    Press Keys    q    RETURN
ดูผลการค้นหาว่ามี ยาธาตุน้ำขาว ไหม
    Element Should Contain    rso    ยาธาตุน้ำขาว
คลิกที่ลิงค์แรก
    Click Element    //div[@class="r"]//a
ปิด Google Chrome
    Close Browser

*** Test Cases ***
ค้นหา ยาธาตุน้ำขาว ใน Google ผ่าน Chrome
    เปิด Google ด้วย Google Chrome
    ค้นหาคำว่า ยาธาตุน้ำขาว
    กด Enter เพื่อค้นหา
ดูผลการค้นหา
    ดูผลการค้นหาว่ามี ยาธาตุน้ำขาว ไหม
    คลิกที่ลิงค์แรก
    ปิด Google Chrome
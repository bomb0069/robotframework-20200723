*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด Google Chrome
    Open Browser    http://www.google.co.th    chrome
พิมพ์สิ่งที่ต้องการจะค้นหาลงในช่องค้นหา
    Input Text    q    ยาธาตุน้ำขาว
กด Enter ค้นหา
    Press Keys    q    RETURN
กดหน้าถัดไป
    Click Element    pnnext
ปิด Google Chrome
    Close Browser

*** Test Cases ***
ค้นหา ยาธาตุน้ำขาว ใน Google ผ่าน Chrome
    เปิด Google Chrome
    พิมพ์สิ่งที่ต้องการจะค้นหาลงในช่องค้นหา
    กด Enter ค้นหา
    กดหน้าถัดไป
    ปิด Google Chrome
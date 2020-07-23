*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหาคำว่า รถ ใน Google ผ่าน Chrome
    เปิดเว็ปด้วย Google Chrome
    ใส่คำว่า รถ ลงในช่องค้นหา
    คลิกปุ่มค้นหา
    เจอคำค้นหาในหน้าเว็ป
    คลิกลิงก์แรกที่ค้นหาเจอ

*** Keywords ***
เปิดเว็ปด้วย Google Chrome
    Open Browser    http://www.google.co.th    chrome
ใส่คำว่า รถ ลงในช่องค้นหา
    Input Text    q    รถ
คลิกปุ่มค้นหา
    Press Keys    q    RETURN
เจอคำค้นหาในหน้าเว็ป
    Wait Until Page Contains    รถ    3
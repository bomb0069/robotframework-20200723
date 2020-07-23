*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ส้มตำ ใน Google ผ่าน chrome
    เปิด Google chrome
    พิมพ์คำที่ต้องการค้นหาลงในช่องค้นหา
    กดปุ่มค้นหา
    เลือกเว็บไซต์ที่ต้องการดู
    คลิกไปยังหน้าเว็บไซต์นั้นๆ

*** Keywords ***
เปิด Google chrome
    Open Browser    http://www.Google.co.th    chrome
พิมพ์คำที่ต้องการค้นหาลงในช่องค้นหา
    Input Text    q    ส้มตำ
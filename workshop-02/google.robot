*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Test Cases ***
เปิด Google Chrome
    เปิดโครมเข้าไปที่ www.google.co.th
    ป้อนข้อความที่ต้องการค้นหา
    กด enter
    เช็คว่ามีข้อความที่ต้องการหาอยู่ในหน้านั้นไหม ถ้าไม่มีก็หาหน้าถัดไป
    คลิ๊กลิ้งแรกที่เจอ
    ปิดหน้าเว็บ

*** Keywords ***
เปิดโครมเข้าไปที่ www.google.co.th
    Open Browser    ${URL}    chrome
ป้อนข้อความที่ต้องการค้นหา
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส    clear=True
กด enter
    Submit Form
เช็คว่ามีข้อความที่ต้องการหาอยู่ในหน้านั้นไหม ถ้าไม่มีก็หาหน้าถัดไป
    Title Should Be    ก๋วยเตี๋ยวเส้นเล็กน้ำใส - Google Search
คลิ๊กลิ้งแรกที่เจอ
    Click Element    class:r
ปิดหน้าเว็บ
    Close Browser

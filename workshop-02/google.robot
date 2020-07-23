*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    เปิดโครมเข้าไปที่ www.google.co.th
    ป้อนข้อความที่ต้องการค้นหา
    กด enter
    เช็คว่ามีข้อความที่ต้องการหาอยู่ในหน้านั้นไหม ถ้าไม่มีก็หาหน้าถัดไป
    เมื่อเจอแล้วก็เข้าไปยังลิ้งที่มีข้อความที่เราต้องการหา
    ปิดหน้าเว็บ

*** Keywords ***
เปิดโครมเข้าไปที่ www.google.co.th
    Open Browser    http://www.google.co.th    chrome
ป้อนข้อความที่ต้องการค้นหา
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส    clear=True
กด enter
    Submit Form
เช็คว่ามีข้อความที่ต้องการหาอยู่ในหน้านั้นไหม ถ้าไม่มีก็หาหน้าถัดไป
    Wait Until Page Contains    ก๋วยเตี๋ยวเส้นเล็กน้ำใส
*** Settings ***
Library    SeleniumLibrary

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
    Open Browser    http://www.google.co.th    chrome
ป้อนข้อความที่ต้องการค้นหา
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส    clear=True
กด enter
    Submit Form
เช็คว่ามีข้อความที่ต้องการหาอยู่ในหน้านั้นไหม ถ้าไม่มีก็หาหน้าถัดไป
    Title Should Be    ก๋วยเตี๋ยวเส้นเล็กน้ำใส - ค้นหาด้วย Google
    Page Should Contain    รูปภาพสำหรับ ก๋วยเตี๋ยวเส้นเล็กน้ำใส
คลิ๊กลิ้งแรกที่เจอ
    Click Link    https://www.wongnai.com/recipes/ugc/bb9531b177ec4e23b0a5384dcf10db0e
ปิดหน้าเว็บ
    Close Browser

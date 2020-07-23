*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา Tim cook ใน Google ผ่าน Chrome
    เปิด google chrome browser ขึ้นมา
    # ใส่ www.google.co.th บน URL ด้านบน
    # กดปุ่ม "Enter"
    ใส่คำหรือข้อความที่ต้องการค้นหาที่ช่องค้นหา เช่น ต้องการค้นหา "Tim cook"
    คลิกปุ่ม "ค้นหาด้วย google" หรือ กดปุ่ม "enter"
    คลิกเข้าลิ้งแรกที่ปรากฎขึ้นมาบนเว็บ
    ปิด browser

*** Keywords ***
เปิด google chrome browser ขึ้นมา
    Open Browser    http://google.co.th    chrome
ใส่คำหรือข้อความที่ต้องการค้นหาที่ช่องค้นหา เช่น ต้องการค้นหา "Tim cook"
    Input Text    q    Tim cook
คลิกปุ่ม "ค้นหาด้วย google" หรือ กดปุ่ม "enter"
    # Click Button    btnK
    Press Keys    q    RETURN
คลิกเข้าลิ้งแรกที่ปรากฎขึ้นมาบนเว็บ 
    Click Element    //*[@id="rso"]/div[1]/div/div[1]/a
    #Click Link    https://th.wikipedia.org/wiki/%E0%B8%97%E0%B8%B4%E0%B8%A1_%E0%B8%84%E0%B8%B8%E0%B8%81
ปิด browser
    Close Browser

*** Settings **
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ก๋วยเตี๋ยวเส้นเล็กน้ำใส ใน Google ผ่าน Chrome
    เปิด Browser ขึ้นมา เข้าที่ไปที่ http://www.google.co.th 
    พิมพ์คำที่ต้องการสืบค้นลงในช่อง search 
    กดปุ่ม google search หรือกด enter 
    รอการแสดงลำดับ website ต่างๆ ที่มีคำที่สืบค้น หรือเกี่ยวข้อง
    ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม

*** Keywords ***
เปิด Browser ขึ้นมา เข้าที่ไปที่ http://www.google.co.th 
    Open Browser    http://google.co.th    chrome

พิมพ์คำที่ต้องการสืบค้นลงในช่อง search   
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส   

กดปุ่ม google search หรือกด enter
    Press Keys    q    RETURN

รอการแสดงลำดับ website ต่างๆ ที่มีคำที่สืบค้น หรือเกี่ยวข้อง
    Wait Until Page Contains    ก๋วยเตี๋ยวเส้นเล็กน้ำใส

ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม
    Click Link     สูตร ก๋วยเตี๋ยวเส้นใหญ่น้ำใส พร้อมวิธีทำโดย Kim Pakiny - Wongnai ... 

*** Settings **
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ก๋วยเตี๋ยวเส้นเล็กนำ้ใส ใน Google ผ่าน Chrome
    เปิด Browser ขึ้นมา
    เข้าที่ไปที่ http://www.google.co.th โดยกรอกที่ช่อง url กด enter
    พิมพ์คำที่ต้องการสืบค้นลงในช่อง search 
    แสดงลำดับ website ต่างๆ ที่มีคำที่สืบค้น หรือเกี่ยวข้อง
    ถ้าหาคำที่สืบค้นเจอ คลิกที่ link ที่จะเข้าชม

*** Keywords ***
เปิด Browser ขึ้นมา
    Open Browser    http://google.co.th    chrome

เข้าที่ไปที่ http://www.google.co.th โดยกรอกที่ช่อง url กด enter    
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กนำ้ใส   

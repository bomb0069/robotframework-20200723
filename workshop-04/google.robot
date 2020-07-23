*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา กล้วยอบเนยโรยเกลือ ใน Google ผ่าน Chrome
    เปิด google chrome เข้าเว็บ google.co.th
    พิมพ์ กล้วยอบเนยโรยเกลือ
    คลิ๊กปุ่ม search
    ดูผลลัพธ์จากการค้นหา
    Click ลิ้งค์แรก
    ปิดหน้าต่าง

*** Keywords ***
เปิด google chrome เข้าเว็บ google.co.th
    Open Browser    http://www.google.co.th    Chrome

พิมพ์ กล้วยอบเนยโรยเกลือ
    Input Text    q    กล้วยอบเนยโรยเกลือ

คลิ๊กปุ่ม search
    Click Button    btnK

ดูผลลัพธ์จากการค้นหา
    Wait Until Page Contains     การตั้งค่า    20
    Page Should Contain    กล้วยอบเนยโรยเกลือ

Click ลิ้งค์แรก
    Click Link   ทำไมคำลิ้นพันอย่าง "กล้วยอบเนยโรยเกลือ" ต่อให้พูดในใจแล้ว ก็ยัง ...

ปิดหน้าต่าง
    Close Browser
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
    Page Should Contain    กล้วยอบเนยโรยเกลือ

Click ลิ้งค์แรก
    CLick Link    https://pantip.com/topic/39643013

ปิดหน้าต่าง
    Close Browser
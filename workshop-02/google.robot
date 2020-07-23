*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา กล้วยอบเนยโรยเกลือ ใน Google ผ่าน Chrome
    เปิด google chrome
    # เข้าเว็บ google.co.th
    พิมพ์ กล้วยอบเนยโรยเกลือ
    คลิ๊กปุ่ม search หรือ กดปุ่ม enter
    ดูผลลัพธ์จากการค้นหา

*** Keywords ***
เปิด google chrome    
    Open Browser    http://www.google.co.th    Chrome

พิมพ์ กล้วยอบเนยโรยเกลือ
    Input Text    q    กล้วยอบเนยโรยเกลือ


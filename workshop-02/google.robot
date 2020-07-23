*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ปาล์มคนสวย ใน google ผ่าน chrome
    เปิด google chrome ขึ้นมา 
    พิมคำที่ต้องการจะค้นหาลงในช่องค้นหา
    กดค้นหา หรือ enter
    จะแสดงหน้าจอผลลัพธ์ของคำที่ค้นหาลงไป
    คลิ๊กที่ link แรกที่เจอ

*** Keywords ***
เปิด google chrome ขึ้นมา
    Open Browser    http://google.co.th     chrome
พิมคำที่ต้องการจะค้นหาลงในช่องค้นหา
    Input Text    q    nct หล่อมาก 

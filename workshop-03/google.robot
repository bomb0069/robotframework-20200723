*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา พิซซ่า ใน google ผ่าน chrome
    เปิด google chrome ขึ้นมา 
    พิมคำที่ต้องการจะค้นหาลงในช่องค้นหา
    จะแสดงหน้าจอผลลัพธ์ของคำที่ค้นหาลงไป
    คลิ๊กที่ link แรกที่เจอ

*** Keywords ***
เปิด google chrome ขึ้นมา
    Open Browser    http://google.co.th     chrome
พิมคำที่ต้องการจะค้นหาลงในช่องค้นหา
    Input Text    q    พิซซ่า 
จะแสดงหน้าจอผลลัพธ์ของคำที่ค้นหาลงไป
    Press Keys    q    RETURN
คลิ๊กที่ link แรกที่เจอ
    Click Element    //*[@id="tads"]/div/ol/li[1]/div/div/div/div[1]/a/div

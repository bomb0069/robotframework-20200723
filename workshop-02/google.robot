*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ขนม ใน google ผ่าน Chrome
    เปิดโครมขึ้นมา
    กรอกข้อมูลที่ต้องการค้นหา
    กด enter หรือกดที่ช่องค้นหา
    คลิกที่ลิงค์แรกที่ขึ้น
    เสร็จสิ้น
   
*** Keywords ***   
เปิดโครมขึ้นมา
    Open Browser    http://google.co.th    chrome
กรอกข้อมูลที่ต้องการค้นหา
    Input text    q    ขนม

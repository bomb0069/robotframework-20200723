*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
#tag Test Cases
เปิด Google Chrome
    Open Chrome Browser
    Input text : ในช่องค้นหา
    กดค้นหา
    ตรวจสอบคำที่ตรงกัน

*** Keywords ***
Open Chrome Browser
    Open Browser    http://Google.co.th    chrome
Input text : ในช่องค้นหา
    Input Text    q    neeyalioness    #Input Text <locator><value>
กดค้นหา
    Press Keys    q    RETURN
ตรวจสอบคำที่ตรงกัน
    Click Link    https://shopee.co.th/neeyalioness
#เจอผลลัพธ์ ที่ตรงกับที่ค้นหา
#คลิกที่ลิงค์แรกเสมอ เมื่อมีคำค้นหาที่ตรงกัน
ถ้าไม่มีคำที่ตรงกันเลย ให้หยุดการทำงานค้างไว้ที่หน้าจอค้นหา หรือ ปิดเบราว์เซอร์ลงไป
    Close Browser

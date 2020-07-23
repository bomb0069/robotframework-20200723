*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
เปิด Google Chrome
    เปิด Google Chrome
    พิมพ์ keyword ของสิ่งที่ต้องค้นหาขึ้นมา
    กดปุ่ม ค้นหา
    เลือก URL ของลิงค์ที่มีหัวข้อน่าเชื่อถือที่สุด

*** Keywords ***
เปิด Google Chrome
    Open Browser    http://www.google.co.th    chrome
พิมพ์ keyword ของสิ่งที่ต้องค้นหาขึ้นมา
    Input Text    q    brightbite
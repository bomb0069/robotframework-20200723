*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา กาแฟ ใน Google ผ่าน Chrome
    เปิดโครมขึ้นมา
    ค้นหาคำว่า กาแฟ
    จะต้องพบคำว่า กาแฟ ในผลลัพธ์
    คลิกลิ้งแรกที่เจอ

*** Keywords ***
เปิดโครมขึ้นมา
    Open Browser    http://google.co.th    chrome
ค้นหาคำว่า กาแฟ
    Input Text    q    กาแฟ
*** Settings ***
Library    SeleniumLibrary 


*** Test Cases ***
ค้นหา anchisa ใน Google ผ่าน Chrome
    เปิดโครมขึ้นมา
    เข้า URL google.co.th
    ค้นหาคำว่า anchisa
    จะต้องพบคำว่า anchisa ในผลลัพธ์
    คลิก link แรกที่เจอ

*** Keywords ***
เปิดโครมขึ้นมา
    Open Browser    http://google.co.th    chrome
    

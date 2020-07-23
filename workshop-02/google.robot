*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
เปิด Google Chrome
    Open Browser    http://www.google.co.th    chrome
พิมพ์สิ่งที่ต้องการจะค้นหาลงในช่องค้นหา
    Input Text    q    ยาธาตุน้ำขาว
กด Enter ค้นหา
    Press Keys    q    RETURN
กดหน้าถัดไป
    Click Element    pnnext
ปิด Google Chrome
    Close Browser
ดูผลการค้นหาว่าได้สิ่งที่ต้องการจะค้นหาหรือไม่
    Element Should Contain    em    ยาธาตุน้ำขาว
ถ้าไม่เจอผลการค้นหาที่ต้องการในหน้า ให้กด Next Page ไปเรื่อย ๆ จนกว่าจะเจอผลการค้นหา โดยจำกัด Attempt ของการกด Next Page ไว้ที่ 5 ครั้ง
ถ้าเจอผลการค้นหาในหน้า ให้คลิกเข้าไปที่เว็บนั้น แล้วดูข้อมูลที่ต้องการต่อไป

*** Test Cases ***
ค้นหา ยาธาตุน้ำขาว ใน Google ผ่าน Chrome
    เปิด Google Chrome
    พิมพ์สิ่งที่ต้องการจะค้นหาลงในช่องค้นหา
    กด Enter ค้นหา
    ดูผลการค้นหาว่าได้สิ่งที่ต้องการจะค้นหาหรือไม่
    กดหน้าถัดไป
    ปิด Google Chrome
*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา ส้มตำ ใน Google ผ่าน chrome
    เปิด Google chrome
    พิมพ์คำที่ต้องการค้นหาลงในช่องค้นหา
    กดปุ่มค้นหา
    เลือกเว็บไซต์ที่ต้องการดู
    คลิกไปยังหน้าเว็บไซต์นั้นๆ
    ปิด Google chrome

*** Keywords ***
เปิด Google chrome
    Open Browser    http://www.Google.co.th    chrome
พิมพ์คำที่ต้องการค้นหาลงในช่องค้นหา
    Input Text    q    ส้มตำ
กดปุ่มค้นหา 
    Press Keys    q    ENTER
เลือกเว็บไซต์ที่ต้องการดู
    Click Link    https://th.wikipedia.org/wiki/%E0%B8%AA%E0%B9%89%E0%B8%A1%E0%B8%95%E0%B8%B3
เลือกเว็บไซต์ที่ต้องการดู คลิกไปยังหน้าเว็บไซต์นั้นๆ
    Click Element    //*[@id="rso"]/div[3]/div/div[1]/a/h3
ปิด Google chrome
    Close Browser
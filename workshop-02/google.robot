*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา kerati kasisuwan ผ่าน Google Chrome
    เปิด google.com ใน chrome
    พิมพ์คีย์เวิร์ดที่ต้องการจะใช้ค้นหา
    กดenter
    คลิ้กที่ลิงค์ที่ต้องการ

*** Keywords ***
เปิด google.com ใน chrome
    Open Browser    http://google.co.th    chrome
พิมพ์คีย์เวิร์ดที่ต้องการจะใช้ค้นหา
    Input Text    q    kerati kasisuwan
กดenter
    Press keys    q    ENTER
คลิ้กที่ลิงค์ที่ต้องการ
    Click Link    //*[@id="rso"]/div[1]/div/div/div[1]/a
ปิดหน้าเว็บ
    Close Browser

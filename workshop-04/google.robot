*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา joker movie ใน Google Chrome ผ่าน Chrome
    เปิดกูเกิลโครมขึ้นมา เข้า URL google.co.th
    ใส่ข้อความค้นหา
    กดปุ่มค้นหา รอผลการค้นหาปรากฏตามข้อความที่ใส่ไป
    คลิกเข้าที่ผลค้นหาอันแรก
    ปิด

*** Keywords ***
เปิดกูเกิลโครมขึ้นมา เข้า URL google.co.th
    Open Browser    http://www.google.co.th    chrome
ใส่ข้อความค้นหา
    Input Text    q    joker movie
กดปุ่มค้นหา รอผลการค้นหาปรากฏตามข้อความที่ใส่ไป
    Press Keys         q                                 RETURN
    Title Should Be    joker movie - Google Search
คลิกเข้าที่ผลค้นหาอันแรก
    # Click Element    //*[@id="rso"]/div[1]/div[2]/div[1]/a/h3
    Click Link    //div[@class="r"]//a
ปิด
    Close Browser

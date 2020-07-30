List step for search data in Google
1. เปิด Chrome Browser
2. กดที่ช่องกรอก URL (บริเวณแถบบนของ Browser)
3. พิมพ์ว่า http://www.google.co.th
4. กดปุ่ม Enter บน keyboard
5. รอจนกว่าจะมีการเปลี่ยนหน้า Browser ไปยังหน้าใหม่6
6. หน้าใหม่ที่ปรากฎขึ้น จะต้องมีช่องสำหรับการ search และมีปุ่มค้นหาสำหรับการกดเพื่อทำการ search
7. กดที่ช่องสำหรับกรอกข้อความที่ต้องการ search
8. พิมพ์ข้อความที่ต้องการ search
9. กดปุ่มค้นหา หรือกดปุ่ม enter
10. รอจนกว่าจะมีการเปลี่ยนหน้า Browser ไปยังหน้าใหม่
11. หน้าใหม่ที่ปรากฎจะต้องมีข้อความที่เรากรอกอยู่ในช่องกรอกข้อมความด้านบน
12. คลิกที่ link แรกที่ปรากฎ เพื่อสืบค้นข้อมูลต่อไป
13. ปิด Chrome Browser

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
List step for search data in Google
    เปิด chrome ขึ้นมา
    พิมพ์ข้อความที่ต้องการ search ว่า กีต้าร์ ในช่องค้นหา
    กดปุ่ม Enter บน keyboard
    คลิกที่ link แรกที่ปรากฎ เพื่อสืบค้นข้อมูลต่อไป
    ปิด Chrome Browser

*** Keywords ***
เปิด chrome ขึ้นมา
    Open Browser    http://www.google.co.th    chrome
พิมพ์ข้อความที่ต้องการ search ว่า กีต้าร์ ในช่องค้นหา
    Input Text    q    กีต้าร์
กดปุ่ม Enter บน keyboard
    Press Keys    None    RETURN
คลิกที่ link แรกที่ปรากฎ เพื่อสืบค้นข้อมูลต่อไป
    Click Element    xpath: //*[@id="rso"]/div[1]/div/div[1]/a/h3
ปิด Chrome Browser
    Close Browser

    
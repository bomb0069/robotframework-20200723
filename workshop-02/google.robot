*** Settings ***
Library     Selenium2Library


*** Test Cases ***
ค้นหา แมว ใน google ผ่าน Chrome
    เปิด Chrome เข้า google.com
    ใส่คำที่ใช้ค้นหา
    # 4.กดปุ่มค่นหา
    # 5.รอจนเปลี่ยนเป็นหน้าผลการค้นหา
    # 6.คลิ้กที่ลิงค์แรกที่เจอ
    # Open Browser    http://www.google.com   Chrome
    # Input Text      q      แมว
    # Click Button    btnK       
    # Wait Until Page Contains    แมว
    # Close Browser

*** Keywords ***
เปิด Chrome เข้า google.com
    Open Browser    http://www.google.com   Chrome
ใส่คำที่ใช้ค้นหา      
    Input Text      q      แมว
    # กดปุ่มค่นหา                Click Button    btnK  
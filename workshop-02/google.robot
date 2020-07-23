*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา kasetsart ใน Google ผ่าน chrome
    เปิด chrome browser ขึ้นมา เข้า url google.co.th
    ค้นหาคำว่า kasetsart
    กด Enter 
    จะต้องพบคำว่า kasetsart ในผลลัพธ์
    คลิกเลือก link แรก

*** Keywords ***
เปิด chrome browser ขึ้นมา เข้า url google.co.th
    Open Browser    http://google.co.th    chrome

ค้นหาคำว่า kasetsart
    Input Text    q    kasetsart

กด Enter
    Press Keys         q                                RETURN
    Title Should Be    kasetsart - ค้นหาด้วย Google 

จะต้องพบคำว่า kasetsart ในผลลัพธ์
    Page Should Contain    kasetsart

คลิกเลือก link แรก
    Click Link    //*[@id="rso"]/div[1]/div/div/div[1]/a




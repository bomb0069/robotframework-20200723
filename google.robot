*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา แป้ง ในgoogle ผ่าน chrome
    เปิด google chrome
    ใส่คำที่จะค้นหา ในช่องค้นหา
    กดปุ่มค้าหา
    Click link แรกที่แสดงผล

*** Keywords ***
เปิด google chrome
    Open Browser    http://www.google.co.th    chrome
ใส่คำที่จะค้นหา ในช่องค้นหา 
    Input Text    q    แป้ง
กดปุ่มค้าหา
    Click Button    btnK
Click link แรกที่แสดงผล
    Click Link  https://www.youtube.com/watch?v=12PwJbGA-tI
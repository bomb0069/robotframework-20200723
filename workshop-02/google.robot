*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
    # Open Browser    http://www.google.com    gc
    # Input Text  q   test
    # Press Key    name=q    \\13

เปิด Google Chrome แล้วเข้า URL www.google.com

    เปิด Google Chrome แล้วเข้า URL www.google.com
    พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
    กดปุ่ม Enter
    จะต้องพบคำว่า robotframework ในผลลัพท์
    ปิด Browser

*** Keywords ***

เปิด Google Chrome แล้วเข้า URL www.google.com
    Open Browser    http://www.google.com    gc

พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
    Input Text    q   robotframework

กดปุ่ม Enter
    Press Keys    q    RETURN

จะต้องพบคำว่า robotframework ในผลลัพท์
    Title Should Be    robotframework - Google Search

ปิด Browser
    Close Browser

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
    # Open Browser    http://www.google.co.th    gc
    # Input Text  q   test
    # Press Key    name=q    \\13

เปิด Google Chrome แล้วเข้า URL www.google.co.th
พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
กดปุ่ม Enter
จะต้องพบคำว่า robotframework ในผลลัพท์

    เปิด Google Chrome แล้วเข้า URL www.google.co.th
    พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
    กดปุ่ม Enter
    จะต้องพบคำว่า robotframework ในผลลัพท์

***Keywords***

เปิด Google Chrome แล้วเข้า URL www.google.co.th
    Open Browser    http://www.google.co.th    gc

พิมพ์ robotframework ที่ต้องการค้นหาลงในช่องค้นหา
    Input Text    q   robotframework

กดปุ่ม Enter
    Press Key    name=q    \\13

จะต้องพบคำว่า robotframework ในผลลัพท์
    Wait Until Page Contains    robotframework

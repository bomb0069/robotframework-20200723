*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Chrome
#     Open Browser    https://www.google.co.th    chrome
#     Input Text  q   test100
    เปิดโครมขึ้นมา
    ค้นหาคำว่า iPhone
    กดเสิช
    คลิกลิงก์
    ปิดบราวเซอร์
    
*** Keywords ***
เปิดโครมขึ้นมา
    Open Browser    https://www.google.co.th    chrome
ค้นหาคำว่า iPhone
    Input Text    q    iPhone
กดเสิช
    Press Keys    q    RETURN
    # Press Keys    btnk    RETURN
คลิกลิงก์
    # Click Link    https://www.apple.com/th/iphone/
    Click Element    //*[@id="vn1s0p1c0"]/h3
ปิดบราวเซอร์
    Close Browser
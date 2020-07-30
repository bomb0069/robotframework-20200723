*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Google Chrome
#     Open Browser    https://www.google.co.th    chrome
#     Input Text  q   test100
    open chrome
    search iPhone
    click search
    click link
    close browser
    
*** Keywords ***
open chrome
    Open Browser    https://www.google.co.th    chrome
search iPhone
    Input Text    q    iPhone
click search
    Press Keys    q    RETURN
    # Press Keys    btnk    RETURN
click link
    # Click Link    https://www.apple.com/th/iphone/
    Click Element    //*[@id="vn1s0p1c0"]/h3
close browser
    Close Browser

*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา BNK48 ใน google ผ่าน Google Chrome
    Open Google in Google Chrome
    Type something which relate to what you want to search
    #Found what you want to search
    #Click the 1st link

*** Keywords ***
Open Google in Google Chrome
    Open Browser    http://www.google.com    chrome
Type something which relate to what you want to search      
    Input Text    q    BNK48
#Found what you want to search
#Click the 1st link
     

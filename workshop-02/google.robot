*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา
    Go to google
    Input keyword

 
 
   

*** Keywords ***
Go to google
    Open Browser    http://www.google.co.th    Chrome

Input keyword
    Input Text    q    ก๋วยเตี๋ยวเส้นเล็กน้ำใส






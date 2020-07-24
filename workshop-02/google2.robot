*** Settings ***
Library    SeleniumLibrary
Test Template    ค้นหาบน Google Chrome
Test Setup    เปิด Browser แล้วไปที่ https://google.com
Test Teardown    Close Browser



*** Variables ***
${URL}    https://google.com
${seachKeyWord}    Life was like a box of chocolates. You never know what you're gonna get
${seachKeyWord2}    Forrest Gump Pantip

*** Test Cases ***                                                                                    SEARCH_WORD

ค้นหาคำว่า Life was like a box of chocolates. You never know what you're gonna get ผ่าน Google Chrome    ${seachKeyWord}
ค้นหาคำว่า Google Chrome Forrest Gump ผ่าน Google chrome                                                 ${seachKeyWord2}
    
            
*** Keywords ***

ค้นหาบน Google Chrome
    [Arguments]    ${SEARCH_TERM}
    ค้นหา    ${SEARCH_TERM}
    Press enter ที่ช่องค้นหา เพื่อค้นหา
    รอคำว่า    ${SEARCH_TERM}
    คลิก link แรก

ค้นหา
    [Arguments]    ${SEARCH_TEXT}
    Input Text    q    ${SEARCH_TEXT}

เปิด Browser แล้วไปที่ https://google.com
    Open Browser    ${URL}    chrome

Press enter ที่ช่องค้นหา เพื่อค้นหา
    Press Keys    q    RETURN
รอคำว่า
    [Arguments]    ${KEYWORD}
    Wait Until Page Contains    ${KEYWORD}
คลิก link แรก
    Click Link    //div[@class="r"]//a


    
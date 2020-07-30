*** Settings ***
Library    SeleniumLibrary
Suite Setup   เปิด Browser แล้วไปที่ https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
Suite Teardown    Close Browser



*** Variables ***
${URL}    https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
${sellerUser}    pumper2500
${productName}    (Pre-Order) Xiaomi iHealth Blood Pressure Monitor 2 - เครื่องวัดความดัน รุ่น 2
${price}    ฿11,160


*** Test Cases ***
คลิกเลือกภาษาไทย
    Wait Until Page Contains    ไทย
    Click Element    //*[@id="modal"]/div[1]/div[1]/div/div[3]/div[1]/button
ปิด Banner
    Wait Until Element Is Visible    id:modal
    Click Element    //div[@class="shopee-popup__close-btn"]
ใส่ข้อความ และ ค้นหา
    Input Text    //*[@id="main"]/div/div[2]/div[1]/div/div[2]/div/div[1]/div[1]/div/form/input    iPhone6
    Press Keys    //*[@id="main"]/div/div[2]/div[1]/div/div[2]/div/div[1]/div[1]/div/form/input    RETURN
คลิกผลลัพท์แรก
    Wait Until Element Is Visible    class:shopee-search-item-result__items
    Click Link    


    


    
            
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

เปิด Browser แล้วไปที่ https://shopee.co.th/(Pre-Order)-Xiaomi-iHealth-Blood-Pressure-Monitor-2-%E0%B9%80%E0%B8%84%E0%B8%A3%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%A7%E0%B8%B2%E0%B8%A1%E0%B8%94%E0%B8%B1%E0%B8%99-%E0%B8%A3%E0%B8%B8%E0%B9%88%E0%B8%99-2-i.8172430.1307643368
    Open Browser    ${URL}    chrome

Press enter ที่ช่องค้นหา เพื่อค้นหา
    Press Keys    q    RETURN
รอคำว่า
    [Arguments]    ${KEYWORD}
    Wait Until Page Contains    ${KEYWORD}
คลิก link แรก
    Click Link    //div[@class="r"]//a


    
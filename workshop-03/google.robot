*** Settings ***
Resource    keywords.robot
Test Setup    เปิด Chrome ขึ้นมา
Test Template    ค้นหาบน Google ผ่าน Chrome
Test Teardown   ปิด บราวเซอร์

*** Test Cases ***                SEARCH_TEXT
ค้นหารังนกบน Google ผ่าน Chrome       รังนก
ค้นหาก๋วยเตี๋ยวบน Google ผ่าน Chrome    ก๋วยเตี๋ยว

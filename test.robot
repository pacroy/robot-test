*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Facebook Login
    Open Browser  https://www.facebook.com/  gc
    Wait Until Page Contains  Facebook
    Input Text  email  email@domain.com
    Input Text  pass  12345678
    Click Button  เข้าสู่ระบบ
    Wait Until Page Contains  รหัสผ่านที่คุณป้อนไม่ถุกต้อง
    Capture Page Screenshot
    Close Browser
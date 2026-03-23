*** Settings ***
Documentation     โปรเจกต์ทดสอบการล็อกอินแบบอัตโนมัติ (Automated Login Form Filling)
Resource          keywords.resource
Suite Setup       Run Keywords   Set Selenium Speed    0.2
...               AND            Open Browser To Login Page 
Suite Teardown    Run Keywords   Sleep    3s
...               AND            Close Browser

*** Test Cases ***
Scenario: ล็อกอินสำเร็จด้วยข้อมูลที่ถูกต้อง
    [Documentation]    ทดสอบการกรอกชื่อและรหัสผ่านที่ถูกต้อง (Valid Login Scenario)
    ...                ระบบควรล็อกอินผ่านและเข้าหน้า Secure Area ได้สำเร็จ
    Input Login Username           tomsmith 
    Input Login Password           SuperSecretPassword!
    Click Login Button
    Verify Login Success

*** Settings ***
Documentation     ฟังก์ชันหลักที่ใช้สำหรับการดำเนินการบนหน้าจอ
Library           SeleniumLibrary
Resource          locators.resource

*** Keywords ***
Open Browser To Login Page
    [Documentation]    เปิดเบราว์เซอร์ไปที่หน้าล็อกอินและขยายหน้าจอให้เต็ม
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Login Username
    [Arguments]    ${username}
    [Documentation]    รอให้ช่องกรอกข้อมูลแสดงขึ้นมา และทำการกรอก username
    Wait Until Element Is Visible    ${TXT_USERNAME}    10s
    Input Text     ${TXT_USERNAME}    ${username}

Input Login Password
    [Arguments]    ${password}
    [Documentation]    กรอก password ลงในช่อง
    Input Text     ${TXT_PASSWORD}    ${password}

Click Login Button
    [Documentation]    คลิกที่ปุ่มล็อกอิน
    Click Element    ${BTN_LOGIN}

Verify Login Success
    [Documentation]    ตรวจสอบว่าระบบแสดงข้อความล็อกอินสำเร็จ
    Wait Until Element Is Visible    ${MSG_FLASH}    10s
    Element Should Contain           ${MSG_FLASH}    You logged into a secure area!

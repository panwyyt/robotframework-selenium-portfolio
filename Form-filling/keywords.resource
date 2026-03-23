*** Settings ***
Library      SeleniumLibrary
Library      String    #ใช้สำหรับสุ่มโน้นนั่นนี่
Resource     locators.resource 

*** Keywords ***
Open Browser To Form Page
    Open Browser                     ${URL}              chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${TXT_firstName}    10s

Fill Basic Info
# สุ่มข้อมูลสำหรับ ชื่อ นามสกุล อีเมล ที่อยู่ และเบอร์โทรศัพท์
    ${f}=    Generate Random String    8     [LETTERS]
    ${l}=    Generate Random String    10    [LETTERS]
    ${e}=    Generate Random String    5     [LETTERS]
    ${a}=    Generate Random String    15    [LETTERS]
    ${m}=    Generate Random String    10    [NUMBERS]
# นำข้อมูลที่สุ่มได้มากรอกลงในฟอร์ม
    Input Text     ${TXT_firstName}       ${f}
    Input Text     ${TXT_lastName}        ${l}
    Input Text     ${TXT_email}           ${e}@test.com
    Input Text     ${TXT_MobileNumber}    ${m}
    Input Text     ${TXT_Address}         ${a}

Select Gender
    [Arguments]            ${user_gender}
    Select Radio Button    ${RAD_GENDER_GROUP}    ${user_gender}

Fill Date Of Birth
    [Arguments]    ${new_date}
    [Documentation]    คีย์เวิร์ดสำหรับกรอกวันเกิดลงในช่อง Date of Birth Input
    ...                - รูปแบบวันที่ที่รองรับ (Format): DD MMM YYYY (เช่น 01 Jan 2026)
    ...                - ตัวอย่าง: 25 Dec 1995, 10 Aug 2000
    Click Element    ${TXT_DOB}                                                      #คลิกเพื่อให้ Cursor ไปอยู่ที่ช่องนั้น
    Press Keys       ${TXT_DOB}    COMMAND+a                                         #กด Ctrl + A แล้วตามด้วย Backspace เพื่อลบของเก่าให้เกลี้ยง (ถ้าใช้ Mac ให้เปลี่ยน CTRL เป็น COMMAND)
    Input Text       ${TXT_DOB}    ${new_date}    clear=False                        #ปกติ Input Text มันจะทำการลบของเก่าให้ก่อนแล้วค่อยกรอกของใหม่แต่เราต้องการให้มันกรอกทับของเก่าไปเลยโดยไม่ต้องลบก่อน ดังนั้นเราจึงตั้งค่า clear=False 
    Press Keys       ${TXT_DOB}    ENTER                                             #กด ENTER เพื่อให้ปฏิทินที่เด้งมามันปิดตัวลงไป

Pick Subject
    [Arguments]    ${subject1}    ${subject2}=${None}
    Input Text     ${TXT_SUBJECT}    ${subject1}
    Press Keys     ${TXT_SUBJECT}    ENTER
    Input Text     ${TXT_SUBJECT}    ${subject2}
    Press Keys     ${TXT_SUBJECT}    ENTER

Pick Hobbies
    [Arguments]    ${h1}=${None}    ${h2}=${None}    ${h3}=${None}
    [Documentation]    คีย์เวิร์ดสำหรับเลือก Hobbies ที่ต้องการ โดยสามารถเลือกได้สูงสุด 3 อย่าง ได้แก่ Sports, Reading, และ Music และไม่จำเป็นต้องเลือกครบก็ได้
    ${all_hobbies}=    Create List    ${h1}    ${h2}    ${h3}                                   #สร้างลิสต์ที่เก็บค่าของ Hobbies ทั้งหมดที่ผู้ใช้ต้องการเลือก
    Run Keyword If    'Sports' in ${all_hobbies}     Click Element    ${CHK_HOBBIES_SPORTS}     #ถ้าคำว่า 'Sports' อยู่ในลิสต์ ${all_hobbies} ก็ให้คลิกที่ช่อง Hobbies ของ Sports    
    Run Keyword If    'Reading' in ${all_hobbies}    Click Element    ${CHK_HOBBIES_READING}    #ถ้าคำว่า 'Reading' อยู่ในลิสต์ ${all_hobbies} ก็ให้คลิกที่ช่อง Hobbies ของ Reading
    Run Keyword If    'Music' in ${all_hobbies}      Click Element    ${CHK_HOBBIES_MUSIC}      #ถ้าคำว่า 'Music' อยู่ในลิสต์ ${all_hobbies} ก็ให้คลิกที่ช่อง Hobbies ของ Music

Upload Picture
    [Arguments]    ${img_path}
    Choose File    ${IMG_UPLOAD}     ${img_path}

Pick State And City
    [Arguments]    ${state}          ${city}
    Click Element  ${TXT_STATE}
    Input Text     ${TXT_STATE}      ${state}
    Press Keys     ${TXT_STATE}      ENTER
    Click Element  ${TXT_CITY}    
    Input Text     ${TXT_CITY}       ${city}
    Press Keys     ${TXT_CITY}       ENTER

Submit Form
    Click Element  ${BTN_SUBMIT}
    Wait Until Element Is Visible    ${Done}    10s

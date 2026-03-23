*** Settings ***
Resource    keywords.resource
Suite Setup       Run Keywords   Set Selenium Speed    0.2
...               AND            Open Browser To Form Page
Suite Teardown    Run Keywords    Sleep    3s
...               AND            Close Browser

*** Test Cases ***
Fill Basic Info
    Fill Basic Info

Select Gender
    Select Gender    Male

Fill Date Of Birth    [Tags]    debug
    Fill Date Of Birth    01 Jan 2000

Pick Subject
    Pick Subject    Math    Physics

Pick Hobbies 
    Pick Hobbies    Sports    Music 

Upload Picture
    Upload Picture  ${CURDIR}/test_image.png

Pick State And City 
    Pick State And City    state=Haryana    city=Karnal

Submit Form
    Submit Form
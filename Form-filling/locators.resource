*** Variables ***
${TXT_firstName}              id=firstName
${TXT_lastName}               css=input#lastName
${TXT_email}                  css=input#userEmail
${RAD_GENDER_GROUP}           gender
${TXT_MobileNumber}           id=userNumber
${TXT_address}                id=currentAddress
${TXT_DOB}                    id=dateOfBirthInput
${TXT_SUBJECT}                id=subjectsInput
${CHK_HOBBIES_SPORTS}         id=hobbies-checkbox-1
${CHK_HOBBIES_READING}        id=hobbies-checkbox-2
${CHK_HOBBIES_MUSIC}          id=hobbies-checkbox-3
${IMG_UPLOAD}                 id=uploadPicture
${TXT_CURRENT_ADDRESS}        id=currentAddress
${TXT_STATE}                  xpath=//div[@id='state']//input
${TXT_CITY}                   xpath=//div[@id='city']//input
${BTN_SUBMIT}                 id=submit
${URL}                        https://demoqa.com/automation-practice-form
${Done}                       xpath=//*[@id="example-modal-sizes-title-lg" and text()='Thanks for submitting the form']
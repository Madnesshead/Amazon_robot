*** Variables ***
${SIGN_IN_EMAIL} =  xpath=//cars-login-form//input[1]
${SIGN_IN_PASSWORD} =  xpath=//div//input[contains(@class, 'password-input')]
${LOGIN_SUBMIT_BUTTON} =  xpath=//button[@type='submit']

*** Keywords ***
Navigate To
    ${SignInUrl} =  Catenate  SEPARATOR=/  ${BASE_URL.${ENVIRONMENT}}  ${LOGIN_URL}
    Go To  ${SignInUrl}

Enter Credentials
    [Arguments]  ${Credentials}
    Run Keyword Unless  '${Credentials[0]}' == '${EMPTY}'  Input Text  ${SIGN_IN_EMAIL}  ${Credentials[0]}
    Run Keyword Unless  '${Credentials[1]}' == '${EMPTY}'  Input Text  ${SIGN_IN_PASSWORD}  ${Credentials[1]}

Click Submit
    Click Button  ${LOGIN_SUBMIT_BUTTON}

Verify Error Message
    [Arguments]  ${ExpectedErrorMessage}
    Page Should Contain  ${ExpectedErrorMessage[2]}

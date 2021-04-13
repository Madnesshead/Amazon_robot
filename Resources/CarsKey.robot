*** Settings ***
Resource  ../Resources/PO/CarsSignIn.robot

*** Keywords ***
Navigate to Sign In Page
    CarsSignIn.Navigate To

Attempt Login
    [Arguments]  ${Credentials}
    CarsSignIn.Enter Credentials  ${Credentials}
    CarsSignIn.Click Submit
    Sleep  2s

Verify Login Page Error Message
    [Arguments]  ${ExpectedErrorMessage}
    CarsSignIn.Verify Error Message  ${ExpectedErrorMessage}
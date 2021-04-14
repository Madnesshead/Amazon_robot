*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/PO/CarsSignIn.robot

*** Keywords ***
Test Multiple Login Scenarios
    [Arguments]  ${Credentials}
    Navigate to Sign In Page
    Attempt Login  ${Credentials}
    Verify Login Page Error Message  ${Credentials.ExpectedErrorMessage}
    Reload Page

Login With Many Invalid Credentials
    [Arguments]  ${InvalidLoginScenarios}
    FOR  ${LoginScenario}  IN  @{InvalidLoginScenarios}
    run keyword and continue on failure  Navigate to Sign In Page
    run keyword and continue on failure  Attempt Login  ${LoginScenario}
    run keyword and continue on failure  Verify Login Page Error Message  ${LoginScenario}
    END

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

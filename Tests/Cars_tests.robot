*** Settings ***
Documentation  Few simple examples of data-driven testing
Resource  ../Data/InputData.robot
Resource  ../Resources/CommonKey.robot
Resource  ../Resources/CarsKey.robot
Test Setup  CommonKey.Begin Web Test
Test Teardown  CommonKey.End Web Test

#robot -d results tests/Cars_tests.robot

*** Test Cases ***
Unregistered user should see correct message at login
    CarsKey.Navigate to Sign In Page
    CarsKey.Attempt Login  ${UNREGISTERED_USER}
    CarsKey.Verify Login Page Error Message  ${UNREGISTERED_USER.ExpectedErrorMessage}

Login with empty password should show correct error message
    CarsKey.Navigate to Sign In Page
    CarsKey.Attempt Login  ${EMPTY_PASSWORD_USER}
    CarsKey.Verify Login Page Error Message  ${EMPTY_PASSWORD_USER.ExpectedErrorMessage}

Login with blank email and password should show correct error message
    CarsKey.Navigate to Sign In Page
    CarsKey.Attempt Login  ${BLANK_CREDENTIALS_USER}
    CarsKey.Verify Login Page Error Message  ${BLANK_CREDENTIALS_USER.ExpectedErrorMessage}

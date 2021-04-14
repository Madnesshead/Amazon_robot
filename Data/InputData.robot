*** Variables ***
#Configuration
${BROWSER} =  chrome
${ENVIRONMENT} =  prod
&{BASE_URL} =  dev=https://dev.cars.com  qa=https://qa.cars.com  prod=https://www.cars.com
${LOGIN_URL} =  profile/secure/login
${INVALID_CREDENTIALS_PATH_CSV} =  /Users/Natallia_Akulich/PycharmProjects/Amazon_robot/Data/Users.csv

#Input Data
#&{UNREGISTERED_USER}  Email=test@test.com  Password=test  ExpectedErrorMessage=Your username and/or password is incorrect. Please try again.
#&{EMPTY_PASSWORD_USER}  Email=test@test.com  Password=${EMPTY}  ExpectedErrorMessage=Please enter your password.
#&{BLANK_CREDENTIALS_USER}  Email=${EMPTY}  Password=${EMPTY}  ExpectedErrorMessage=Please enter your email address and password.
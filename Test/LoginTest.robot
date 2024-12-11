*** Settings ***
Documentation    Login test scinerios for Luma web application
Library          SeleniumLibrary
Resource         Project_Keywords.resource
Resource         Project_Variables.resource
Library          FakerLibrary
Suite Setup      Navigate to Luma homepage

*** Test Cases ***

Login with valid credential and assert login success
  [Tags]        Positive
                Login to Luma app and assert login success  robotdatadriventest@yahoo.com  Testing2024  Welcome, Ola Wale!
  [Teardown]    Logout User

User with invalid credentials should not be able to login
  [Tags]        Negative
  [Template]    Login to Luma app with invalid credentials
                ${EMPTY}                        ${EMPTY}      Welcome, Ola Wale!
                ${EMPTY}                        Testing2024   Welcome, Ola Wale!
                robotdatadriventest@yahoo.com   ${EMPTY}      Welcome, Ola Wale!
                robotdatadriventest@yahoo.com   Testing202    Welcome, Ola Wale!
                robotdatadriventest@yahoo.co    Testing2024   Welcome, Ola Wale!
                robotdatadriventet@yahoo.com    Testing202    Welcome, Ola Wale!
                ****************************    Testing202    Welcome, Ola Wale!
                robotdatadriventet@yahoo.com    **********    Welcome, Ola Wale!
                1212121212121212                login         Welcome, Ola Wale!
                robotdatadriventest@yahoo.com    short        Welcome, Ola Wale!

Verify User can create account successfully
    [Tags]      Positve Test
                Navigate to create account page
                Enter user first name and last name
                Enter user email address
                Enter user password and confirm password
                Create account and assert that account has been created successfully
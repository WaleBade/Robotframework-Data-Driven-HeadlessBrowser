*** Settings ***
Documentation    Login test scinerios for Luma web application
Library          SeleniumLibrary
Resource         Project_Keywords.resource
Resource         Project_Variables.resource
Library          FakerLibrary

*** Keywords ***
Navigate to Luma homepage
                Open Browser  ${URL}  ${BROWSER}
                Maximize Browser Window
                Click Element    ${DISAGREE_BTN}

Login to Luma app and assert login success
                [Arguments]   ${user}  ${password}  ${successMessage}
                Click Element    ${SIGN_IN_BTN}
                Input Text    ${LOGIN_USER}  ${user}
                Input Text    ${LOGIN_PASSWORD}  ${password}
                Click Element  ${LOGIN_BTN}
                Wait Until Page Contains  ${successMessage}

Login to Luma app with invalid credentials
               [Arguments]   ${user}  ${password}  ${successMessage}
               Click Element    ${SIGN_IN_BTN}
               Input Text    ${LOGIN_USER}  ${user}
               Input Text    ${LOGIN_PASSWORD}  ${password}
               Wait Until Element Is Enabled    ${LOGIN_BTN}
               Click Element  ${LOGIN_BTN}
               Page Should Not Contain  ${successMessage}

Logout User
               Wait Until Element Is Enabled    ${TOGGLE_BUTTON}
               Click Element     ${TOGGLE_BUTTON}
               Wait Until Element Is Enabled    ${SIGN_OUT_BTN}
               Click Element     ${SIGN_OUT_BTN}

Navigate to create account page
               Click Element  ${CREATE_ACCT}
               Sleep    2

Enter user first name and last name
               Input Text    ${FIRST_NAME_BOX}    Robo
               Input Text    ${LAST_NAME_BOX}     Frame

Enter user email address
               ${email}=     FakerLibrary.Email
               Log           ${email}
               Set Test Variable   ${email}
               Input Text    ${EMAIL_ACCT_CREATE}        ${email}

Enter user password and confirm password
               Input Text    ${PASSWRD_ACCT_CREATE}     RobotTesting2024
               Input Text    ${PSWRD_ACCT_CREATE_COM}   RobotTesting2024

Create account and assert that account has been created successfully
               Click Element  ${CREATE_ACCOUNT_BUTTON}
               Wait Until Page Contains    Welcome, Robo Frame!
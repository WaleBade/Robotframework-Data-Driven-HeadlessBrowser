*** Settings ***
Documentation    Login test scinerios for Luma web application
Library          SeleniumLibrary
Resource         Project_Keywords.resource
Resource         Project_Variables.resource

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/
${CONSENT}                 xpath: //button[@aria-label="Consent"]
${DISAGREE_BTN}            xpath: //div[@class="qc-cmp2-summary-buttons"]/button[2]
${BROWSER}                 headless Chrome
${SIGN_IN_URL}             https://magento.softwaretestingboard.com/customer/account/login
${LOGIN_USER}              xpath: //input[@name="login[username]"]
${LOGIN_PASSWORD}          xpath: //input[@name="login[password]"]
${LOGIN_BTN}               xpath: //button[@class="action login primary"]
${TOGGLE_BUTTON}           xpath: //button[@tabindex="-1"]
${SIGN_OUT_BTN}            xpath: //ul[@class="header links"]/li[3]
${SIGN_IN_BTN}             xpath: //ul[@class="header links"]/li[2]
${CREATE_ACCT}             xpath: //ul[@class="header links"]/li[3]/a
${FIRST_NAME_BOX}          xpath: //input[@name="firstname"]
${LAST_NAME_BOX}           xpath: //input[@name="lastname"]
${EMAIL_ACCT_CREATE}       xpath: //input[@name="email"]
${PASSWRD_ACCT_CREATE}     xpath: //input[@name="password"]
${PSWRD_ACCT_CREATE_COM}   xpath: //input[@name="password_confirmation"]
${CREATE_ACCOUNT_BUTTON}   xpath: //button[@title="Create an Account"]
*** Settings ***
Documentation    tutorial related test scenarios
Library           SeleniumLibrary
Resource          myFirstKeywords.robot
#Suite Setup       Precondition for luma login

*** Test Cases ***
Valid login
   [Tags]  Lanre
   [Setup]  Navigate to luma login page
   Login to the luma platform  ${USERNAME}  ${PASSWORD}  Welcome, balqees salami!
   [Teardown]  Sign out active user

Verify that login with invalid credentials returns error message
   [Tags]  invalid
   [Template]  Invalid login scenarios
   olabisibalqees@yahoo.com  Testing2     The account sign-in was incorrect
   olabisibalqe@yahoo.com    Testing2023  The account sign-in was incorrect
   olabisibalqe@yahoo.com    Testing2     The account sign-in was incorrect
   ${EMPTY}                  Testing2023  This is a required field.
   olabisibalqees@yahoo.com  ${EMPTY}     This is a required field.
   ${EMPTY}                  ${EMPTY}     This is a required field.


*** Keywords ***
Invalid login scenarios
   [Arguments]  ${username}  ${password}  ${errormessage}
   Open Browser  ${URL}  ${BROWSER}
   Click Element    ${HOMEPAGE_SIGNIN}
   Input Text    ${USERNAME_FIELD}    ${username}
   Input Text    ${PASSWORD_FIELD}    ${password}
   Click Element    ${SIGNIN_BTN}
   Wait Until Page Contains   ${errormessage}


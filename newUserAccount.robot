*** Settings ***
Documentation    tutorial related test scenarios
Library           SeleniumLibrary
Resource          myFirstKeywords.robot

*** Test Cases ***
Verify new user can create account
   Navigate to luma create account page
   Enter firstname for new user
   Enter lastname for new user
   Enter email for new user
   Enter and confirm password for new user  Testing123  Testing123
   Create Account and assert that account is created
   [Teardown]  Sign out active user



*** Keywords ***
#Provided precondition

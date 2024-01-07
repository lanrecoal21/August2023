*** Settings ***
Documentation  luma project test keywords
Library        SeleniumLibrary
Library        FakerLibrary
Resource       luma_variables.robot


*** Keywords ***
Navigate to luma login page
   Navigate to luma home page
   Maximize Browser Window
   Click Element    ${HOMEPAGE_SIGNIN}

Navigate to luma home page
   Open Browser  ${URL}  ${BROWSER}
   Maximize Browser Window

Navigate to luma create account page
   Navigate to luma home page
   Wait and Click Element     ${HOMEPAGE_SIGNIN}
   Wait and Click Element     ${CREATEACC_BTN}

Enter firstname for new user
  ${firstname}=  FakerLibrary.First Name
  log  ${firstname}
  Set Test Variable    ${firstname}
  Wait and Input text   ${CREATEACC_FIRSTNAME}     ${firstname}

Enter lastname for new user
  ${lastname}=  FakerLibrary.Last Name
  log  ${lastname}
  Set Test Variable    ${lastname}
  Wait and Input text    ${CREATEACC_LASTNAME}     ${lastname}


Enter email for new user
  ${email}=  FakerLibrary.Email
  log  ${email}
  Set Test Variable    ${email}
  Wait and Input text    ${CREATEACC_EMAIL}     ${email}

Sign out active user
  Wait and Click Element  ${CUSTOMER_MENU}
  Wait and Click Element  ${SIGNOUT_LINK}


Create User Account
   Navigate to luma create account page
   Enter firstname for new user
   Enter lastname for new user
   Enter email for new user
   Enter and confirm password for new user  Testing123  Testing123
   Create Account and assert that account is created

Enter and confirm password for new user
   [Arguments]  ${password}  ${confirm_password}
   Wait and Input text   ${CREATEACC_PASSW}     ${password}
   Wait and Input text    ${CREATEACC_CONFPASS}  ${confirm_password}

Enter details for new user account
   Wait and Input text    ${CREATEACC_FIRSTNAME}     Roxana
   Wait and Input text    ${CREATEACC_LASTNAME}      Fatima
   Wait and Input text    ${CREATEACC_EMAIL}     olabisibalqees+1@yahoo.com

Add Item to cart
   Wait and Mouse Over  ${WOMEN_DROPDOWN}
   Wait and Mouse Over  ${WOMEN_DROPDOWN_TOPS}
   Click Element    ${WOMEN_DROPDOWN_JACKETS}
   Wait Until Element Is Enabled  ${WOMEN_JACKET1}  10s
   Click Element    ${WOMEN_JACKET1}
   Wait Until Element Is Visible    ${JACKET_SIZE4}
   Click Element    ${JACKET_SIZE4}
   Click Element   ${JACKET_COLOUR}
   Clear Element Text   ${JACKET_QTY}
   Input Text   ${JACKET_QTY}  2
   Click Element    ${JACKET_ADD2CART}
   #Wait Until Element Is Visible  ${ADD2CART_SUCCESSMESSAGE}  10s
   Wait Until Page Contains   You added Olivia 1/4 Zip Light Jacket to your shopping cart  10s

Proceed to Checkout
   Wait and Click Element    ${CART_BTN}
   Wait and Click Element    ${PROCEED2CHECKOUT}

Add Shipping address
   [Arguments]  ${country_value}  ${country_region}  ${phonenumber}  ${street_address}  ${postcode}  ${city}
   Wait Until Element Is Visible  ${SHIPPINGADD_COUNTRY}  10s
   Select From List By Value    ${SHIPPINGADD_COUNTRY}  ${country_value}
   Wait Until Element Is Visible  ${SHIPPINGADD_REGION}  10s
   Select From List By Label   ${SHIPPINGADD_REGION}  ${country_region}
   Wait and Input text    ${SHIPPINGADD_PHNE}    ${phonenumber}
   Wait and Input text    ${SHIPPING_STREETADD}    ${street_address}
   Wait and Input text    ${SHIPPINGADD_PC}   ${postcode}
   Wait and Input text   ${SHIPPINGADD_CITY}    ${city}

Add shipping method and place order
   Wait and Click Element    ${SHIPPING_METHOD}
   Wait and Click Element   ${PROCEED2CHECKOUT_NEXT}
   Wait and Click Element    ${PROCEED2CHECKOUT_NEXT}
   Wait and Click Element   ${PLACE_ORDER}
   Wait Until Page Contains    Thank you for your purchase!


Create Account and assert that account is created
   Wait and Click Element    ${REGISTER_BTN}
   Wait Until Page Contains    Thank you for registering with Main Website Store.

Login to the luma platform
   [Arguments]  ${username}  ${password}  ${loggedin_user}
   Wait and Input text    ${USERNAME_FIELD}     ${username}
   Wait and Input text    ${PASSWORD_FIELD}    ${password}
   Wait and Click Element   ${SIGNIN_BTN}
   Wait Until Page Contains    ${loggedin_user}

Wait and Click Element
  [Arguments]  ${locator}  ${timeout}=10s
  [Documentation]  Waits for element to be enabled before clicking
  Wait Until Element Is Enabled    ${locator}
  Click Element    ${locator}

Wait and Input text
  [Arguments]  ${locator}  ${text}  ${timeout}=10s
  [Documentation]  Waits for element to be enabled before inputing text
  Wait Until Element Is Enabled    ${locator}
  Input Text    ${locator}  ${text}

Wait and Mouse Over
  [Arguments]  ${locator}  ${timeout}=10s
  [Documentation]  Waits for element to be enabled before hovering on the element
  Wait Until Element Is Enabled    ${locator}
  Mouse Over    ${locator}

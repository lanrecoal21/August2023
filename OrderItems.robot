*** Settings ***
Documentation    tutorial related test scenarios
Library           SeleniumLibrary
Resource          myFirstKeywords.robot

*** Test Cases ***
User can login and order items
   [Setup]  Create User Account
   Add Item to cart
   Proceed to Checkout
   Add Shipping address  FI  Uusimaa  04012345678  Testaus katu 1  00000  Espoo
   Add shipping method and place order

*** Keywords ***
Provided precondition
    Setup system under test
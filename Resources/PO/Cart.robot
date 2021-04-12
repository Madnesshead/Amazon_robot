*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Proceed to checkout (1 item)


Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native
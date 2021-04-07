*** Settings ***
Documentation  This are some simple tests for amazon.com
Resource  ../Resources/AmazonKey.robot
Resource  ../Resources/CommonKey.robot
Test Setup  CommonKey.Begin Web Test
Test Teardown  CommonKey.End Web Test

*** Variables ***
${BROWSER} =  chrome
${START_URL} =  https://www.amazon.com/
${SEARCH_TERM} =  Ferrari 458

*** Test Cases ***
User can search for products
    [Documentation]  This is a simple test for search
    [Tags]  Smoke

    AmazonKey.Search for Products

User should sign in to check out
    [Documentation]  This is some basic information about the test
    [Tags]  Smoke

    AmazonKey.Search for Products
    AmazonKey.Select Product from Search Results
    AmazonKey.Add Product to Cart
    AmazonKey.Begin Checkout
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"
    [Return]  Found it!

Verify Product Count
    [Arguments]  ${ExpectedProductCount}
    Page Should Contain Element  xpath=//div[contains(@data-asin, 'B')]//img  limit=${ExpectedProductCount}


Click Product Link
    [Documentation]   Clicks on the first product in the search results page
    Click Link  xpath=//span[@cel_widget_id='MAIN-SEARCH_RESULTS-1']//h2//a
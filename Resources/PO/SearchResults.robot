*** Settings ***

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains  results for "${SEARCH_TERM}"

Click Product Link
    [Documentation]   Clicks on the first product in the search results page
    Click Link  xpath=//span[@cel_widget_id='MAIN-SEARCH_RESULTS-1']//h2//a
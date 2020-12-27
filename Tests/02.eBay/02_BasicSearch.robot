*** Settings ***
Documentation  02. Basic Search Functionality
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify Basic search functionality for eBay
    [documentation]  This test case verifies the basic search
    [tags]  Functional

    # Start test case
    Log To Console  Current Directory: ${CURDIR}
    Create Webdriver     Chrome     executable_path=${CURDIR}\\..\\..\\Drivers\\chromedriver.exe
    go to  https://www.ebay.com
    Maximize Browser Window

    # Verify Search results
    Input Text  id = gh-ac  mobile
    Press Keys  id = gh-btn  [Return]
    Page Should Contain  results for mobile

    # Finish test case
    Close All Browsers


*** Keywords ***

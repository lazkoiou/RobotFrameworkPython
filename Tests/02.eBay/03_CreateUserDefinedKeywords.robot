*** Settings ***
Documentation  03. Create User Defined Keywords
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
Verify Basic search functionality for eBay
    [documentation]  This test case verifies the basic search
    [tags]  Functional


    # Below are the custom Keywords that we define in the Keywords section
    Start Test Case

    Verify Search results

    Finish Test Case


*** Keywords ***
Start Test Case
    Log To Console  Current Directory: ${CURDIR}
    Create Webdriver     Chrome     executable_path=${CURDIR}\\..\\..\\Drivers\\chromedriver.exe
    go to  https://www.ebay.com
    Maximize Browser Window

Verify Search Results
    Input Text  id = gh-ac  mobile
    Press Keys  id = gh-btn  [Return]
    Page Should Contain  results for mobile

Finish Test Case
    Close All Browsers

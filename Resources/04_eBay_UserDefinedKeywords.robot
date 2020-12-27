*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start Test Case
    go to  https://www.ebay.com
    Maximize Browser Window

Verify Search Results
    Input Text  id = gh-ac  mobile
    Press Keys  id = gh-btn  [Return]
    Page Should Contain  results for mobile

Switch To iphone Search
    Click Element  partial link: iphone
    Page Should Contain  results for iphone


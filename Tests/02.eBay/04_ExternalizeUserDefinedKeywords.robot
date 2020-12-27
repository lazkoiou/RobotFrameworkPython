*** Settings ***
Documentation  04. Externalize User Defined Keywords to Resources folder
Resource  ..\\..\\Resources\\CommonFunctionality.robot
Resource  ..\\..\\Resources\\04_eBay_UserDefinedKeywords.robot
# Library  SeleniumLibrary - This can be removed because now we are not using any of the
# SeleniumLibrary keywords. Instead we are using Resource



*** Variables ***


*** Test Cases ***
Verify Basic search functionality for eBay
    [documentation]  This test case makes use of external defined keywords
    [tags]  Functional

    Open Webdriver
    Start Test Case
    Verify Search results
    Switch To iphone Search
    Finish Test Case




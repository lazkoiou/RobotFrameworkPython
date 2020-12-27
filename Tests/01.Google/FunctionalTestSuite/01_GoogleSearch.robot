*** Settings ***
Documentation  01. Hello World
Library  SeleniumLibrary


*** Variables ***


*** Test Cases ***
This is a sample test case
    [documentation]  Google test
    [tags]  regression

    Log To Console  Logging current working directory: ${CURDIR}
    Create Webdriver     Chrome     executable_path=${CURDIR}\\..\\..\\..\\Drivers\\chromedriver.exe
    go to  https://www.google.com
    Close All Browsers

*** Keywords ***

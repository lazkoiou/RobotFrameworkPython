*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Open Webdriver
    Log To Console  Current Directory: ${CURDIR}
    Create Webdriver     Chrome     executable_path=${CURDIR}\\..\\Drivers\\chromedriver.exe

Finish Test Case
    Close All Browsers
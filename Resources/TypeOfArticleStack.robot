*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Get Source of the webpage to determine which stack it is on
    ${status}  ${value}=  Run keyword and ignore error  page should contain element  css:div[class^="UserLogin__LoginOptionWrapper"]
    Run Keyword if    '${status}' == 'PASS'  log to console    "it is an new stack article"
    Run Keyword if    '${status}' != 'PASS'  log to console    "it is an old stack article"
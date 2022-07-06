*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#TODO didn't locate
Locate Dianomi Ads
    wait until element is enabled    css=div[data-skip-label="What to Read Next"]
    scroll element into view    css=div[data-skip-label="What to Read Next"]
    Execute JavaScript    window.scrollTo(0,400)
#TODO change Xpath
    wait until element is enabled    xpath:/html/body/div[1]/div[4]/div/a/img
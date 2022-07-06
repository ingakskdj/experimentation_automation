*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate Slideshow
    wait until element is enabled    css:div[class="slick-slider slick-initialized"]
    scroll element into view    css:div[class="slick-slider slick-initialized"]

Click Next arrow Sign
    mouse over    css:div[class^="SlideComponents__ItemCaptionWrap-sc-nokcx3-3"]
    click element    css:div[class^="Arrow__ArrowWrapper-sc-1hovrvs-0"]
    sleep    5
    click element    css:div[class^="Arrow__ArrowWrapper-sc-1hovrvs-0"]
    sleep    5
    click element    css:div[class^="Arrow__ArrowWrapper-sc-1hovrvs-0"]

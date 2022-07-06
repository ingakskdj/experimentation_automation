*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and click FC Old Stack
    Locate FC Old Stack
    Click FC Old Stack

Locate FC Old Stack
    wait until page contains element    css:div.media-object-rich-text
    scroll element into view    css:div.media-object-rich-text

Click FC Old Stack
    wait until page contains element    css:a[href$='mod=article_relatedinline']
    Execute JavaScript    document.querySelector("a[href$='mod=article_relatedinline']").click()

#TODO introduce loops - find an article page - this is more frequent on old stack
Locate FC New Stack
    wait until page contains element    css:div[data-inset_type="richtext"]
    #scroll element into view    css:div[data-inset_type="richtext"]

Click FC New Stack
    wait until page contains element    css=ul[class^="RichText__List-sc-gh4uoa-3"] > li:nth-child(1)
    click element    css=ul[class^="RichText__List-sc-gh4uoa-3"] > li:nth-child(1)
    Execute Javascript  history.back()


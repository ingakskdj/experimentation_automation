*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
#Show conversation
Click SC
#click to open Show Conversation
    wait until element is visible    id:article-comments-tool
    scroll element into view    id:article-comments-tool
    click element    id:article-comments-tool
    Sleep    5

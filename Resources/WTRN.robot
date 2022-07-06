*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Locate and Click WTRN sub
    wait until element is enabled    css=div[data-skip-label="What to Read Next"]
    scroll element into view    css=div[data-skip-label="What to Read Next"]
    wait until page contains element    css:h3[class="title"]
    click element    css:h3[class="title"]

#    ${links} =    get element count    css:h3[class="title"]
#        FOR   ${index}  IN RANGE  ${links}
#        Exit For Loop If     ${index} == 3
#        ${new_link} =  Get WebElement    xpath:/html/body/div[2]/div/main/article/div/div[6]/div/div/div/div[${index}+1]/a/div[2]/h3
#        Wait Until Page Contains Element  ${new_link}
#        Click Link  ${new_link}
#        Execute Javascript  history.back()
#        sleep    5
#        END



Locate and Click WTRN nonsub
    wait until element is enabled    css=div[data-skip-label="What to Read Next"]
    execute javascript  window.scrollTo(0,1950)
    sleep    5
    wait until element is enabled    css=div[data-skip-label="What to Read Next"]
    click element    css:h3[class="title"]
#    click element    xpath = /html/body/div[2]/div/article/section/div/div[7]/div/div/div/div[1]/a/div[1]/img
#    Execute Javascript  history.back()

 #      old version
 #      ${links} =    get element count    xpath = /html/body/div[2]/div/article/section/div/div
#        FOR   ${index}  IN RANGE  ${links}
#        Exit For Loop If     ${index} == 3
#        ${new_link} =  Get WebElement    xpath = /html/body/div[2]/div/article/section/div/div[6]/div/div/div/div[${index}+1]
#        Wait Until Page Contains Element  ${new_link}
#        Click Link  ${new_link}
#        Execute Javascript  history.back()
#        sleep    5
#        END


#    ${links} =    get element count    xpath = /html/body/div[2]/div/article/section/div/div[7]/div/div/div/div
#        FOR   ${index}  IN RANGE  ${links}
#        wait until element is enabled    css=div[data-skip-label="What to Read Next"]
#        ${new_link} =  Get WebElement    xpath = /html/body/div[2]/div/article/section/div/div[7]/div/div/div/div[${index}+1]
#        Wait Until Page Contains Element  ${new_link}
#        Click Link  ${new_link}
#        Execute Javascript  history.back()
#        sleep    5
#        END
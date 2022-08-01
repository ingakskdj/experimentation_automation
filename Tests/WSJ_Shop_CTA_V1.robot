*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Test Setup    Begin Web Test
Test Teardown    End Web Test
Resource    /Users/aliakskinai/Documents/RobotFramework/pythonProject/WebProductConstructor/Resources/common.robot

*** Variables ***
*** Variables ***
${TYPE_OF_ARTICLE} =    v1
&{ARTICLE_PAGE_URL}    control=https://store.wsj.com/shop/us/us/wsjusmdsfaswg22/?swg=true    v1=https://store.wsj.com/shop/us/us/wsjusmdsfaswg22/?swg=true&optimizely_token=d2ac6d0356ee12fa21b9d26467b0e64665c669acf6fd169a8f20828fe07baa4e&optimizely_x=21591000049&optimizely_x_audiences=&optimizely_preview_layer_ids=21583270259&optimizely_snippet=s3-5090114122&optimizely_preview_mode_CAMPAIGN=21583270259    v2=https://store.wsj.com/shop/us/us/wsjusmdsfaswg22/?swg=true&optimizely_token=d2ac6d0356ee12fa21b9d26467b0e64665c669acf6fd169a8f20828fe07baa4e&optimizely_x=21537963342&optimizely_x_audiences=&optimizely_preview_layer_ids=21583270259&optimizely_snippet=s3-5090114122&optimizely_preview_mode_CAMPAIGN=21583270259
${BROWSER} =    chrome
${TIMEOUT} =    70
#V1 checkouts
${CHECKOUT_WSJ_Digital} =    https://store.wsj.com/v2/us/us/1138700017?swg=true
${CHECKOUT_WSJ Digital_Bundle} =    https://store.wsj.com/v2/us/us/1139300005?swg=true
${CHECKOUT_WSJ_Sat_print} =    https://store.wsj.com/v2/us/us/1139300007?swg=true
${CHECKOUT_WSJ_Mon_Fri_print} =    https://store.wsj.com/v2/us/us/1139300011?swg=true
${CHECKOUT_WSJ_Mon_Sat_print} =    https://store.wsj.com/v2/us/us/1139300014?swg=true
#robot -d Results WSJ_Shop_CTA.robot

*** Test Cases ***
#TODO Create a separate script for V1 and V2 with different checkout urls and replace ids with corresponding to variations
URL Check - Act Now WSJ Digital
    wait until page contains element    css:button[class="btn btn--alt btn-join"]
    click element    css:button[class="btn btn--alt btn-join"]
    ${url_Digital_actual} =  Execute Javascript  return window.location.href;
    Run Keyword If    '${url_Digital_actual}' == '${CHECKOUT_WSJ_Digital}'    set test message   "The URL is correct"
    Run Keyword If    '${url_Digital_actual}' != '${CHECKOUT_WSJ_Digital}'    set test message   "The URL is not correct"

URL Check - Act Now WSJ Digital Bundle
    wait until page contains element    css:a[id="1136700010"]
    click element    css:a[id="1136700010"]
    ${url_Digital_Bundle_actual} =  Execute Javascript  return window.location.href;
    Run Keyword If    '${url_Digital_Bundle_actual}' == '${CHECKOUT_WSJ Digital_Bundle}'    set test message   "The URL is correct"
    Run Keyword If    '${url_Digital_Bundle_actual}' != '${CHECKOUT_WSJ Digital_Bundle}'    set test message   "The URL is not correct"

URL Check - Act Now WSJ Saturday Print
    wait until page contains element    css:div[class="pack-switch-cta switch-to-print"]
    click element    css:div[class="pack-switch-cta switch-to-print"]
    wait until page contains element    css:a[id="1136200007"]
    click element    css:a[id="1136200007"]
    ${url_Sat_print_actual} =  Execute Javascript  return window.location.href;
    Run Keyword If    '${url_Sat_print_actual}' == '${CHECKOUT_WSJ_Sat_print}'    set test message   "The URL is correct"
    Run Keyword If    '${url_Sat_print_actual}' != '${CHECKOUT_WSJ_Sat_print}'    set test message   "The URL is not correct"

URL Check - Act Now WSJ Mon Fri Print
    wait until page contains element    css:div[class="pack-switch-cta switch-to-print"]
    click element    css:div[class="pack-switch-cta switch-to-print"]
    wait until page contains element    css:a[id="1136200005"]
    click element    css:a[id="1136200005"]
    ${url_Mon_Fri_print_actual} =  Execute Javascript  return window.location.href;
    Run Keyword If    '${url_Mon_Fri_print_actual}' == '${CHECKOUT_WSJ_Mon_Fri_print}'    set test message   "The URL is correct"
    Run Keyword If    '${url_Mon_Fri_print_actual}' != '${CHECKOUT_WSJ_Mon_Fri_print}'    set test message   "The URL is not correct"

URL Check - Act Now WSJ Mon Sat Print
    wait until page contains element    css:div[class="pack-switch-cta switch-to-print"]
    click element    css:div[class="pack-switch-cta switch-to-print"]
    wait until page contains element    css:a[id="1136200009"]
    click element    css:a[id="1136200009"]
    ${url_Mon_Sat_print_actual} =  Execute Javascript  return window.location.href;
    Run Keyword If    '${url_Mon_Sat_print_actual}' == '${CHECKOUT_WSJ_Mon_Sat_print}'    set test message   "The URL is correct"
    Run Keyword If    '${url_Mon_Sat_print_actual}' != '${CHECKOUT_WSJ_Mon_Sat_print}'    set test message   "The URL is not correct"
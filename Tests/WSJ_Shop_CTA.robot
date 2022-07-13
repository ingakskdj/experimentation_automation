*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Test Setup    Begin Web Test
Test Teardown    End Web Test
Resource    /Users/aliakskinai/Documents/Robot Framework/pythonProject/WebProductConstructor/Resources/common.robot

*** Variables ***
#check that parameters of the URL are corresponding (such as swg=true)
${TYPE_OF_ARTICLE} =    control
&{ARTICLE_PAGE_URL}    control=https://store.marketwatch.com/shop/us/us/mwusevgns22/?optimizely_token=6100e4d8222740e57c913bfa97e20d8eb094002b10493644fea25e59ec4c0692&optimizely_x=21621950313&optimizely_x_audiences=21599021261&optimizely_preview_layer_ids=21609000981&optimizely_snippet=s3-11089575356&optimizely_preview_mode_CAMPAIGN=21609000981    v1=https://store.marketwatch.com/shop/us/us/mwusevgns22/?optimizely_token=6100e4d8222740e57c913bfa97e20d8eb094002b10493644fea25e59ec4c0692&optimizely_x=21574410947&optimizely_x_audiences=21599021261&optimizely_preview_layer_ids=21609000981&optimizely_snippet=s3-11089575356&optimizely_preview_mode_CAMPAIGN=21609000981    v2=https://store.marketwatch.com/shop/us/us/mwusevgns22/?optimizely_token=6100e4d8222740e57c913bfa97e20d8eb094002b10493644fea25e59ec4c0692&optimizely_x=21586030920&optimizely_x_audiences=21599021261&optimizely_preview_layer_ids=21609000981&optimizely_snippet=s3-11089575356&optimizely_preview_mode_CAMPAIGN=21609000981
${BROWSER} =    chrome
${TIMEOUT} =    70
#control checkouts
${CHECKOUT_WSJ_Digital} =    https://store.wsj.com/checkout/US/US/1130800064?swg=true
${CHECKOUT_WSJ Digital_Bundle} =    https://store.wsj.com/v2/US/US/1136700010?swg=true
${CHECKOUT_WSJ_Sat_print} =    https://store.wsj.com/v2/US/US/1136200007?swg=true
${CHECKOUT_WSJ_Mon_Fri_print} =    https://store.wsj.com/v2/US/US/1136200005?swg=true
${CHECKOUT_WSJ_Mon_Sat_print} =    https://store.wsj.com/v2/US/US/1136200009?swg=true
#V1 checkouts
#${CHECKOUT_WSJ_Digital} =    https://store.wsj.com/v2/us/us/1138700017?swg=true
#${CHECKOUT_WSJ Digital_Bundle} =    https://store.wsj.com/v2/us/us/1139300005?swg=true
#${CHECKOUT_WSJ_Sat_print} =    https://store.wsj.com/v2/us/us/1139300007?swg=true
#${CHECKOUT_WSJ_Mon_Fri_print} =    https://store.wsj.com/v2/us/us/1139300011?swg=true
#${CHECKOUT_WSJ_Mon_Sat_print} =    https://store.wsj.com/v2/us/us/1139300014?swg=true
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
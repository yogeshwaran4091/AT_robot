*** Settings ***
Library    SeleniumLibrary
Variables    new.py
*** Keywords ***
Conditions_IF_else
    Open Browser    ${url_1}    ${browser}
    Maximize Browser Window
    ${GET}    Get Text   //label[text()="Name:"]
    ${GET}    Get Text    //label[text()="Email:"]
    Run Keyword If   '${GET}'== 'Name:'
    ...    Input Text    //input[@id="name"]    yogesh
    ...  ELSE IF    '${GET}'== 'Email:'
    ...    Input Text    //input[@id="email"]  @gamil.com
    ...  ELSE
    ...    Log    nothing



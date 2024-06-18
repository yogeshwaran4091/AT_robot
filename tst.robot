*** Settings ***
Library    SeleniumLibrary
Variables  new.py
*** Keywords ***
k
    FOR    ${counter}    IN RANGE    1    10
        Open Browser    ${url}    ${browser}
        Maximize Browser Window    
        Wait Until Page Contains    Swag Labs
        Input Text        //input[@id="user-name"]    standard_user
        Input Password    //input[@id="password"]    secret_sauce
        Click Button    //input[@type="submit"]
        Click Element    //button[@id="react-burger-menu-btn"]
        Sleep    2
        Click Element    //a[@id="logout_sidebar_link"] 
        Close All Browsers
    END
*** Test Cases ***

run 
    k
   
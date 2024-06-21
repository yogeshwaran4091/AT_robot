*** Settings ***
Library    SeleniumLibrary
Library    XML
Library    String
*** Test Cases ***
sauce demo    
    Open Browser    https://parabank.parasoft.com/parabank/index.htm   gc
    Maximize Browser Window
    ${GEA}    Get Element Attribute    //img[@class="bot_column"]    src="img/Login_Bot_graphic.png"
    Log    ${GEA}
    Log Title
    ${ct}    Convert To Title Case    "www.google.com"   
    Log    ${ct}
    # Press Keys    ENTER

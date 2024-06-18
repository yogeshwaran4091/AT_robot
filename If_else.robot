*** Settings ***
Library    SeleniumLibrary 
Resource    condition.robot
# Resource    pandas.robot
Library    pandas
Library    Collections
Test Teardown    Close All Browsers 
*** Keywords ***
Test Keyword 1
    Log To Console    "TK_1"
Test Keyword 2
    Log To Console    "TK_2"  
Test Keyword 3
    Open Browser    https://www.google.com/    edge   
    Maximize Browser Window
    Input Text   //textarea[@id="APjFqb"]    https://www.techlistic.com/p/selenium-practice-form.html
    Press Keys   //textarea[@id="APjFqb"]   ENTER 
    Conditions_IF_else

*** Test Cases ***
IF_else_ELSE_IF 
    Open Browser    https://www.techlistic.com/p/selenium-practice-form.html    gc
    Maximize Browser Window
    Scroll Element Into View    //input[@id="datepicker"]
    ${GEC}    Get Element Count    //span[text()="Years of Experience"]
    Log    ${GEC}
    Run Keyword If    ${GEC} == 2 
    ...    Test Keyword 1  
    ...  ELSE IF  ${GEC} < 1
    ...    Test Keyword 2
    ...  ELSE 
    ...     Test Keyword 3
    # ...    
# pan
#     ${csv}    pandas.Read Csv    C:/Users/YogeshwaranAnnadurai/Downloads/customers-1000.csv 
#     Log    ${csv}
#     ${vc}    Value Counts    ${csv}
#     Log   ${vc}
    


 

   
    
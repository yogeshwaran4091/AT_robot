*** Settings ***
Library    SeleniumLibrary
Variables    new.py
*** Variables ***
@{checkbox_ids}    ${check_box_1}    ${check_box_2}    ${check_box_3}    ${check_box_4}   

*** Keywords ***
Opening TestAutomation demo application
    Open Browser    ${url_1}    ${browser}
    Maximize Browser Window
System should allow user to enter their details
    Input Text    ${Input_text}    ${text} 
    Input Text    ${Input_email}    ${email}
system should allow user to select their gender
    Select Radio Button    ${group_name}    ${value} 
System should allow user to select check box
    # to find scroll by x and y axis "inspect>go to console>type"windows.scroll(x(value),y(value))""
    Mouse Down    ${mouse_scroll}
    FOR    ${id}    IN    @{checkbox_ids}
        Select Checkbox    ${id} 
    END
    ${CSBS}    Checkbox Should Be Selected    ${check_box_4}
System should allow users to select from drop down (index)
    Select From List By Index    ${index}    9
System should allow users to select from drop down (value)     
    Click Element    ${value_DD}
select date 
    Click Element    ${date} 
slider 
    @{offsets}    Create List    100    200    300
    FOR    ${offset}    IN    @{offsets}
       Drag And Drop By Offset    ${slider}    @{offset}    0
    END



        


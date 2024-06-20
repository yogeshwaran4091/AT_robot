*** Settings ***
Resource    AT.robot
*** Test Cases ***
TC      
    Opening TestAutomation demo application
    System should allow user to enter their details
    system should allow user to select their gender    
    System should allow user to select check box    
    System should allow users to select from drop down (index)
    System should allow users to select from drop down (value) 
    select date
    slider
    # if_else

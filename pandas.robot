*** Settings ***
Library    SeleniumLibrary
Library    pandas
Library    OperatingSystem
*** Variables ***
${dowload_file}    "C:\Users\YogeshwaranAnnadurai\Downloads\SampleCSVFile_11kb (1).csv"    
*** Keywords ***
Dowload _CSV_File
    Open Browser    https://sample-videos.com/download-sample-csv.php    gc 
    Maximize Browser Window
    Scroll Element Into View    //td[text()="5,000"]
    Click Element    //a[@href="csv/Sample-Spreadsheet-100-rows.csv"] 
Check if the CSV file has been downloaded or not.
    Run Keyword If    $var_in_py_expr1 == $var_in_py_expr2
    ...    Keyword    @args
    ...  ELSE IF    condition_in_py_expr
    ...    Keyword    @args
    ...  ELSE
    ...    Keyword    @args   
    ...    

*** Test Cases ***
pandas
    Dowload _CSV_File
    Check if the CSV file has been downloaded or not.
    
    
        


 
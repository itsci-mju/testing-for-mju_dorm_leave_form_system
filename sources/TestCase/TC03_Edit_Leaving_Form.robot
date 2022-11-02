*** Settings ***
Library        SeleniumLibrary
Library        ExcelLibrary
Library        ScreenCapLibrary
Resource    ../Resources/RS_Add_Leaving_Form.robot

*** Test Cases ***
TC02_Add_Leaving_Form.robot
    Begin Webpage
    Login Page
    Edit Leaving
    Close Browser
*** Keywords ***
Begin Webpage
    Open Browser          ${Login_URL}     ${Browser}
    Maximize Browser Window
    Set Selenium Speed      0.5s

Login Page
    Click Element    ${Cilck_Login}
    Click Element     ${student}
    Input Text      ${student_Username}   mju6204106306
    Input Text      ${student_Password}   MJU@11022001
    Click Element    ${Cilck_Button}
   # Go To  ${EditFrom_URL}

Edit Leaving
    Click Element   ${Cilck_Edit}
    Click Element   ${Cilck_date}
    Click Element   ${Cilck_Adddate}     20221013
    Input Text      ${text_detailleave}  3/10/2022
    Click Element     ${Cilck_Ok}
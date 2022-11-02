*** Settings ***
Library        SeleniumLibrary
Library        ExcelLibrary
Library        ScreenCapLibrary
Resource    ../Resources/RS_Add_Leaving_Form.robot

*** Test Cases ***
TC02_Add_Leaving_Form
    Login Page
    Add Leaving
    Start Video Recording   alias=None  name=TC02_Add_Leaving  fps=None    size_percentage=1   embed=True  embed_width=100px   monitor=1
    Open Excel Document     TestData//TC02_Add_Leaving_Form.xlsx   doc_id=Sheet1
    ${excel}    Get Sheet   Sheet1
    FOR    ${i}    IN RANGE   2    ${excel.max_row+1}
            Go To   ${Addfrom_URL}
            ${tcid}     Set Variable if    '${excel.cell(${i},1).value}'=='None'    ${Empty}     ${excel.cell(${i},1).value}
             Set Suite Variable  ${testcaseData}  ${tcid}
            ${user}     Set Variable if    '${excel.cell(${i},2).value}'=='None'    ${Empty}     ${excel.cell(${i},2).value}
            ${pass}     Set Variable if    '${excel.cell(${i},3).value}'=='None'    ${Empty}     ${excel.cell(${i},3).value}

            Loging Page      ${user}    ${pass}

             #Add Leaving
             ${Status_1}   ${message_1}  Run Keyword If    ${i}<=${excel.max_row}    Check Error page     ${excel.cell(${i},4).value}


             ${Status_Actual}       Set Variable if    ${i}<=${excel.max_row}   ${Status_1}
             ${Status}       Set Variable if    '${Status_Actual}' == 'True'      PASS            FAIL
              Run Keyword If     '${Status}' == 'FAIL'    Capture Page Screenshot    ${EXECDIR}/Results/TC02_Add_Leaving/Screenshot/${testcaseData}.png


             ${get_message}       Set Variable if    ${i}<=${excel.max_row}   ${message_1}


             ${Error}       Set Variable if    '${Status}' == 'FAIL'      Error         No Error
             ${Suggestion}       Set Variable if     '${Status}' == 'FAIL'      ควรมีการแจ้งเตือนให้ผู้ใช้งาน "${excel.cell(${i},4).value}"     -


             Write Excel Cell        ${i}    10       value=${get_message}        sheet_name=Sheet1
             Write Excel Cell        ${i}    11      value=${Status}        sheet_name=Sheet1
             Write Excel Cell        ${i}    12      value=${Error}        sheet_name=Sheet1
             Write Excel Cell        ${i}    13       value=${Suggestion}        sheet_name=Sheet1
    END
    Save Excel Document       Results/WriteExcel/TC02_Add_Leaving_Form1.xlsx
    Close All Excel Documents
    Close Browser
    Stop Video Recording      alias=None

*** Keywords ***
Login Page
    Open Browser          ${Login_URL}     ${Browser}
    Maximize Browser Window
    Set Selenium Speed      0.5s
    Click Element    ${Cilck_Login}
    Click Element     ${student}
    Input Text       ${stu_user}   mju6204106306
    Input Text       ${stu_pass}   MJU@11022001
    Click Element    ${Cilck_Button}
    sleep  3s
    Go To   ${Addfrom_URL}

Add Leaving
    Click Element   ${Cilck_addLeaving}
    Click Element   ${Cilck_date}
    Click Element    ${Cilck_Adddate}
    #Click Element    ${text_detailleave}
    Input Text       ${text_detailleave}
    Click Element     ${Cilck_Ok}

Check Error page
      [Arguments]     ${Actual_Result}
     Log To Console  ${testcaseData}
        IF  "${testcaseData}" == "TD001"
            ${message1}  Check Page Login   ${Home_page}
            ${message}  Convert to String  ${message1}
        ELSE
            ${checkVisible}  Run Keyword And Return Status  Page Should Contain Element  ${text_alert}
                IF  '${checkVisible}' == 'True'
                ${message}  Get Text  ${text_alert}
                END
        END
         # "---------------------------------------------------"
        IF  '${Actual_Result.strip()}' == '${message.strip()}'
            Set Suite Variable  ${Status}  True
        ELSE
            Set Suite Variable  ${Status}  False
        END

        Log To Console      ${Status}

      [Return]   ${Status}  ${message}

Check Page
    [Arguments]  ${locator}
    ${Status}   Run Keyword And Return Status   Wait Until Element Is Visible    ${locator}     30s
    ${Result}  Set Variable if    '${Status}'=='True'      บันทึกสำเร็จ            ไม่บันทึกสำเร็จ
    [Return]     ${Result}
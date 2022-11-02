*** Settings ***
Library        SeleniumLibrary
Library        ExcelLibrary
Library        ScreenCapLibrary
Resource    ../Resources/RS_Cancel_Leaving.robot
Resource    ../Resources/RS_Student_Login.robot

*** Test Cases ***
TC04_Cancel_Leaving
    Cancel Leaving
    Start Video Recording   alias=None  name=TC04_Cancel_File  fps=None    size_percentage=1   embed=True  embed_width=100px   monitor=1
    Open Excel Document     TestData//TC04_Cancel_Leaving_Form.xlsx    doc_id=TestData
    ${eclin}    Get Sheet   TestData

     FOR    ${i}    IN RANGE   2    ${eclin.max_row+1}
            ${tcid}     Set Variable if    '${eclin.cell(${i},1).value}'=='None'    ${Empty}     ${eclin.cell(${i},1).value}
             Set Suite Variable  ${testcaseData}  ${tcid}

             Remove News Page
             ${Status_1}   ${message_1}  Run Keyword If    ${i}<=${eclin.max_row}    Check Error page     ${eclin.cell(${i},3).value}

             ${Status_Actual}       Set Variable if    ${i}<=${eclin.max_row}   ${Status_1}
             ${Status}       Set Variable if    '${Status_Actual}' == 'True'      PASS            FAIL


             Run Keyword If     '${Status}' == 'FAIL'    Capture Page Screenshot    ${EXECDIR}/Result/TC04_Cancel_File/Screenshot/${testcaseData}.png


             ${get_message}       Set Variable if    ${i}<=${eclin.max_row}   ${message_1}
             ${message}           Set Variable if    '${message_1}' == '${text_not_alert}'      -       ${message_1}

             ${Error}       Set Variable if    '${get_message}' == '${text_not_alert}'      Not Found Alert         No Error
             ${Suggestion}       Set Variable if    '${Error}' == 'Not Found Alert'      ควรมีการแจ้งเตือนให้ผู้ใช้งาน "${eclin.cell(${i},3).value}"     -


             Write Excel Cell        ${i}    4       value=${message}        sheet_name=TestData
             Write Excel Cell        ${i}    5       value=${Status}        sheet_name=TestData
             Write Excel Cell        ${i}    6       value=${Error}        sheet_name=TestData
             Write Excel Cell        ${i}    7       value=${Suggestion}        sheet_name=TestData

    END
    Save Excel Document       Result/WriteExcel/TC04_Cancel_File_result.xlsx
    Close All Excel Documents
    CloseWebBrowser
    Stop Video Recording      alias=None

*** Keywords ***
Cancel Leaving
    Open Browser          ${Login_URL}     ${Browser}
    Maximize Browser Window
    Set Selenium Speed      0.5s
    Click Element   ${Cilck_Login}
    Click Element   ${student}
    Input Text  ${student_Username}   mju6204106306
    Input Password  ${student_Password}   MJU@11022001
    Click Element    ${Cilck_Button}
    #Go to    ${cancefrom_URL}
    Set Selenium Speed      0.3s
    Click Element    ${Cilck_cancelLeave}
    Click Element    ${Cilck_No}

Check Error page
    [Arguments]     ${Actual_Result}
         Log To Console  ${testcaseData}
         IF  "${testcaseData}" == "TD001"
              ${message}     Convert To String    ${message_remove}
         END

        IF  '${Actual_Result.strip()}' == '${message.strip()}'
            Set Suite Variable  ${Status}  True
        ELSE
            Set Suite Variable  ${Status}  False
        END

        Log To Console      ${message}
        Log To Console      ${Status}
      [Return]   ${Status}  ${message}
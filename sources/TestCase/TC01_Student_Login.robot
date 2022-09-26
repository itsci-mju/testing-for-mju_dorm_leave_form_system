*** Settings ***
Library     SeleniumLibrary
Library        ExcelLibrary
Library          ScreenCapLibrary
Resource    ../Resources/RS_Student_Login.robot

*** Test Cases ***
TC01_Student_Login
    Begin Webpage
    Start Video Recording   alias=None  name=TC01 Student Login  fps=None    size_percentage=1   embed=True  embed_width=100px   monitor=1
    Open Excel Document     TestData//TC01-Student Login1.xlsx     doc_id=Sheet1
    ${excel}    Get Sheet   Sheet1
    FOR    ${i}    IN RANGE   2    ${excel.max_row+1}
            ${tcid}     Set Variable if    '${excel.cell(${i},1).value}'=='None'    ${Empty}     ${excel.cell(${i},1).value}
             Set Suite Variable  ${testcaseData}  ${tcid}
            ${user}     Set Variable if    '${excel.cell(${i},2).value}'=='None'    ${Empty}     ${excel.cell(${i},2).value}
            ${pass}     Set Variable if    '${excel.cell(${i},3).value}'=='None'    ${Empty}     ${excel.cell(${i},3).value}

            IF     ${i} >= 3
                 go to  ${Search_URL}
             END

            Loging Page      ${user}    ${pass}


             ${Status_1}   ${message_1}  Run Keyword If    ${i}<=${excel.max_row}    Check Error page     ${excel.cell(${i},4).value}

             ${Status_Actual}       Set Variable if    ${i}<=${excel.max_row}   ${Status_1}
             ${Status}       Set Variable if    '${Status_Actual}' == 'True'      PASS            FAIL
              Run Keyword If     '${Status}' == 'FAIL'    Capture Page Screenshot    ${EXECDIR}/Results/TC01_Student_Login/Screenshot/${testcaseData}.png


             ${get_message}       Set Variable if    ${i}<=${excel.max_row}   ${message_1}


             ${Error}       Set Variable if    '${Status}' == 'FAIL'      Error         No Error
             ${Suggestion}       Set Variable if     '${Status}' == 'FAIL'      ควรมีการแจ้งเตือนให้ผู้ใช้งาน "${excel.cell(${i},4).value}"     -


             Write Excel Cell        ${i}    5       value=${get_message}        sheet_name=Sheet1
             Write Excel Cell        ${i}    6       value=${Status}        sheet_name=Sheet1
             Write Excel Cell        ${i}    7       value=${Error}        sheet_name=Sheet1
             Write Excel Cell        ${i}    8       value=${Suggestion}        sheet_name=Sheet1
    END
    Save Excel Document       Results/WriteExcel/TC01_Student_Login.xlsx
    Close All Excel Documents
    Close Browser
    Stop Video Recording      alias=None

*** Keywords ***
Begin Webpage
    Open Browser          ${Search_URL}      ${Browser}
    Maximize Browser Window
    Set Selenium Speed      0.5s

Loging Page
    [Arguments]   ${username}    ${password}
    Click Element    ${Cilck_Login}
    Click Element     ${student}
    Input Text      ${student_Username}   ${username}
    Input Text      ${student_Password}   ${password}
    Click Element    ${Cilck_Button}

Check Page Login
    [Arguments]  ${locator}
    ${Status}   Run Keyword And Return Status   Wait Until Element Is Visible    ${locator}     30s
    ${Result}  Set Variable if    '${Status}'=='True'      เข้าสู่ระบบเรียบร้อยแล้ว        เข้าสู่ระบบไม่สำเร็จ
    [Return]     ${Result}

Check Error page
    [Arguments]     ${Actual_Result}
     Log To Console  ${testcaseData}
        IF  "${testcaseData}" == "TD001"
            ${message1}  Check Page Login   ${Home_page}
            ${message}  Convert to String  ${message1}
        ELSE IF  " ${testcaseData}" == "TD014"
            ${message1}  Check Page Login   ${Home_page}
            ${message}  Convert to String  ${message1}
        ELSE IF  " ${testcaseData}" == "TD015"
            ${message1}  Check Page Login   ${Home_page}
            ${message}  Convert to String  ${message1}
        ELSE IF  " ${testcaseData}" == "TD016"
            ${message1}  Check Page Login   ${Home_page}
            ${message}  Convert to String  ${message1}
        ELSE IF  " ${testcaseData}" == "TD017"
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

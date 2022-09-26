*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Search_URL}      http://localhost:13385/MJUDormLeaveForm/
${Browser}         chrome
${Cilck_Login}    //a[contains(text(),'เข้าสู่ระบบ')]
${student}      //label[contains(text(),'นักศึกษา')]
${student_Username}  //input[@id='TextBoxLoginName']
${student_Password}   //input[@id='TextBoxPassword']
${Cilck_Button}  //a[@id='LinkButtonLogin']
${Home_page}    //span[contains(text(),'หน้าแรก')]
${text_alert}   //span[@id='LabelWarning']
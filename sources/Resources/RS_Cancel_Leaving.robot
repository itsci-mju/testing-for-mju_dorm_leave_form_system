*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#${cancefrom_URL}     http://www.itsci.mju.ac.th/MJUDormLeaveForm/doLogin?T=bffa271544db43799d369aa3fa049ba2&Student=True&SC=6204106306#
${Login_URL}   http://localhost:13385/MJUDormLeaveForm/
${Browser}         chrome
${Cilck_Login}    //a[contains(text(),'เข้าสู่ระบบ')]
${student}      //label[contains(text(),'นักศึกษา')]
${student_Username}  //input[@id='TextBoxLoginName']
${student_Password}   //input[@id='TextBoxPassword']
${Cilck_Button}  //a[@id='LinkButtonLogin']
${Cilck_cancelLeave}   //*[@id="content"]/div/div[4]/div[1]/div/div[1]/div[3]/div/a[2]
${Cilck_No}    //body/div[2]/div[1]/div[6]/button[1]
${text_not_alert}         Alert not found in 5 seconds.
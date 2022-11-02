*** Settings ***
Library     SeleniumLibrary

*** Variables ***
##${EditFrom_URL}     http://www.itsci.mju.ac.th/MJUDormLeaveForm/editLeave?reqDate=2022-09-30%2016:29:19.322
${Login_URL}   http://localhost:13385/MJUDormLeaveForm/
${Browser}         chrome
${Cilck_Login}    //a[contains(text(),'เข้าสู่ระบบ')]
${student}      //label[contains(text(),'นักศึกษา')]
${student_Username}  //input[@id='TextBoxLoginName']
${student_Password}   //input[@id='TextBoxPassword']
${Cilck_Button}  //a[@id='LinkButtonLogin']
${Cilck_Edit}   //*[@id="content"]/div/div[4]/div[1]/div/div[1]/div[3]/div/a[1]
${Cilck_date}   //input[@id='demo11']
${Cilck_Adddate}   //table[@id='month-1-demo11']
${text_detailleave}   //textarea[@id='detailleave']
${Cilck_Ok}    //input[@id='btnclick']

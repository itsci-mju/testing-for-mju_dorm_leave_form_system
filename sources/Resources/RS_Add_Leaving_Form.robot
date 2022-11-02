*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Addfrom_URL}     https://itsci.mju.ac.th/MJUDormLeaveForm/addleaveweek
${Login_URL}      http://localhost:13385/MJUDormLeaveForm/
${Browser}         chrome
${Cilck_Login}    //a[contains(text(),'เข้าสู่ระบบ')]
${student}      //label[contains(text(),'นักศึกษา')]
${stu_user}    //input[@id='TextBoxLoginName']
${stu_pass}     //input[@id='TextBoxPassword']
${Cilck_Button}   //a[@id='LinkButtonLogin']
${Cilck_addLeaving}     //div[contains(text(),'ลาประจำสัปดาห์')]
${Cilck_date}      //input[@id='demo11']
${Cilck_Adddate}      //*[@id="month-1-demo11"]/tbody/tr[3]
${text_detailleave}     //textarea[@id='detailleave']
${Cilck_Ok}       //input[@id='btnclick']
${Home_page}    //span[contains(text(),'หน้าแรก')]
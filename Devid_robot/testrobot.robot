*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com/   chrome


*** Variables ***
${email}         mybabyhunni@gmail.com1
${password}      123456789



*** Keywords ***

Click Signup/Login Element
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]   

Click Login Button
    Click Button        //*[@id="form"]/div/div/div[1]/div/form/button

#Click Delete Account Button
    #Click Button        //*[@id="header"]/div/div/div/div[2]/div/ul/li[5]

Input Email
    [Arguments]    ${email}
    Input Text    //*[@name="email"]    ${email}

Input password
    [Arguments]    ${password}
    Input Text    //*[@name="password"]    ${password}



*** Test Cases ***
Login with valid info
   [Documentation]    Test the login functionality with valid credentials
   Click Signup/Login Element
   
   Input Email                  ${email}
   Input password               ${password}
   Click Login Button
   #Click Delete Account Button


 

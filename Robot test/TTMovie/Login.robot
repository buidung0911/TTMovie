*** Settings ***
Documentation     Template robot main suite.
# Suite Setup    Run Keyword         Minimal task

Suite Teardown   Close All Browsers
Library    RPA.Browser    
Library    Dialogs
Library    RPA.FTP
Library    RPA.Desktop.OperatingSystem
Library    RPA.Desktop.Windows

*** Test Cases ***
Test Case 01
    [Documentation]    [Login] Verify user login failed when entering correct account and wrong password
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Capture Page Screenshot    Login_TC01.png
Test Case 02
    [Documentation]    [Login] Verify user login failed when entering wrong account and correct password
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UONG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Capture Page Screenshot    Login_TC02.png
Test Case 03
    [Documentation]    [Login] Verify User login failed when entering wrong account and wrong password
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUMUONG' to 'taiKhoan'
    Input '09112018' to 'matKhau'
    click to submit button
    Capture Page Screenshot    Login_TC03.png
Test Case 04
    [Documentation]    [Login] Verify user login failed when the account and password are blank
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    click to submit button
    Capture Page Screenshot    Login_TC04.png
Test Case 05
    [Documentation]    [Login] Verify user is successful when entering the correct account and correct password
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Capture Page Screenshot    Login_TC05.png
Test Case 06
    [Documentation]    [User interface] Verify user click "Back" link successfully 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Click link '//*[@id="root"]/main/div/form/div[3]/div[1]/a'
    Capture Page Screenshot    Login_TC06.png
Test Case 07
    [Documentation]    [User interface] Verify user click "Bạn chưa có Tài Khoản? Đăng ký" link successfully 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Click link '//*[@id="root"]/main/div/form/div[3]/div[2]/a'
    Capture Page Screenshot    Login_TC07.png
*** Keywords ***
Open and access to "${link}"
    Open Available Browser    ${link}
    Maximize Browser Window
    
Click to link Login page
    Click Link    /sign-in
    Maximize Browser Window

Input '${value}' to '${location}'
    Input Text    ${location}    ${value}


click to submit button 
    Click Element    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-contained jss40 MuiButton-containedPrimary MuiButton-fullWidth"]
    Sleep    2s


Click link '${link}'
    Click Link    ${link}  

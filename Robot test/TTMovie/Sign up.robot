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
    [Documentation]    [Sign up] Verify user sign up successful when entering the correct requirements of the registration form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    Input '09112000' to 'xacNhanMK'
    Input 'H JUM UÔNG' to 'hoTen'
    Input 'hjumuong10a6@gmail.com' to 'email'
    Input '0905109504' to 'soDT'
    click to submit button
    Capture Page Screenshot    Sign_up_TC01.png
Test Case 02
    [Documentation]    [Sign up] Verify user sign up successful when "Mật khẩu" is the same as the Password in the database
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyendd' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    Input '09112000' to 'xacNhanMK'
    Input 'nguyendd' to 'hoTen'
    Input 'nguyendd@gmail.com' to 'email'
    Input '0991234567' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC02.png
Test Case 03
    [Documentation]    [Sign up] Verify user sign up failed when entering all the incorrect requirements of the registration form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'JUM' to 'taiKhoan'
    Input '0911' to 'matKhau'
    Input '0912' to 'xacNhanMK'
    Input 'H JUM UÔNG' to 'hoTen'
    Input 'hjumuong10a6gmail.com' to 'email'
    Input '09051095' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC03.png
Test Case 04
    [Documentation]    [Sign up] Verify user sign up failed when "Xác nhận mật khẩu" entered incorrect requirements remaining correct as required by sign up form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyenaa' to 'taiKhoan'
    Input 'nguyenaa' to 'matKhau'
    Input 'nguyenaaa' to 'xacNhanMK'
    Input 'nguyenaa' to 'hoTen'
    Input 'nguyenaa@gmail.com' to 'email'
    Input '0912345678' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC04.png
Test Case 05
    [Documentation]    [Sign up] Verify user sign up failed when "Tên Tài khoản" entered incorrect requirements remaining correct as required by sign up form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguye' to 'taiKhoan'
    Input 'nguyenaa' to 'matKhau'
    Input 'nguyenaa' to 'xacNhanMK'
    Input 'nguyenaa' to 'hoTen'
    Input 'nguyenaa@gmail.com' to 'email'
    Input '0912345678' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC05.png
Test Case 06
    [Documentation]    [Sign up] Verify user sign up failed when "Mật khẩu" entered incorrect requirements remaining correct as required by sign up form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyenaa' to 'taiKhoan'
    Input 'nguy' to 'matKhau'
    Input 'nguyenaa' to 'xacNhanMK'
    Input 'nguyenaa' to 'hoTen'
    Input 'nguyenaa@gmail.com' to 'email'
    Input '0912345678' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC06.png
Test Case 07
    [Documentation]    [Sign up] Verify user sign up failed when "Email" entered incorrect requirements remaining correct as required by sign up form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyenaa' to 'taiKhoan'
    Input 'nguyenaa' to 'matKhau'
    Input 'nguyenaa' to 'xacNhanMK'
    Input 'nguyenaa' to 'hoTen'
    Input 'nguyenaagmail.com' to 'email'
    Input '0912345678' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC07.png
Test Case 08
    [Documentation]    [Sign up] Verify user sign up failed when "Số điện thoại" entered incorrect requirements remaining correct as required by sign up form
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyenaa' to 'taiKhoan'
    Input 'nguyenaa' to 'matKhau'
    Input 'nguyenaa' to 'xacNhanMK'
    Input 'nguyenaa' to 'hoTen'
    Input 'nguyenaa@gmail.com' to 'email'
    Input '09123456789' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC08.png
Test Case 09
    [Documentation]    [Sign up] Verify user  sign up failed when "Họ tên" is the same as the full name in the database
    [Setup]  
    [Teardown]  Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyencc' to 'taiKhoan'
    Input 'nguyencc' to 'matKhau'
    Input 'nguyencc' to 'xacNhanMK'
    Input 'H JUM UÔNG' to 'hoTen'
    Input 'nguyencc@gmail.com' to 'email'
    Input '0712345678' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC09.png
Test Case 10
    [Documentation]    [Sign up] Verify user sign up failed when "Số điện thoại" is the same as the phone number in the database
    [Setup]  
    [Teardown]  Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyenaa' to 'taiKhoan'
    Input 'nguyenaa' to 'matKhau'
    Input 'nguyenaa' to 'xacNhanMK'
    Input 'nguyenaa' to 'hoTen'
    Input 'nguyenaa@gmail.com' to 'email'
    Input '0905109504' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC10.png
Test Case 11
    [Documentation]    [Sign up] Verify user sign up failed when "Tên Tài khoản" is the same as the Account name in the database
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input 'nguyenee' to 'matKhau'
    Input 'nguyenee' to 'xacNhanMK'
    Input 'nguyenee' to 'hoTen'
    Input 'nguyenee@gmail.com' to 'email'
    Input '0909090909' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC11.png
Test Case 12
    [Documentation]    [Sign up] Verify user sign up failed when "Email" is the same as the email in the database
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyengg' to 'taiKhoan'
    Input 'nguyengg' to 'matKhau'
    Input 'nguyengg' to 'xacNhanMK'
    Input 'nguyengg' to 'hoTen'
    Input 'hjumuong10a6@gmail.com' to 'email'
    Input '0909090908' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC12.png
Test Case 13
    [Documentation]    [Sign up] Verify user sign up failed when one of the information of the registration form was not entered
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Input 'nguyenhh' to 'taiKhoan'
    Input 'nguyenhh' to 'matKhau'
    Input 'nguyenhh' to 'xacNhanMK'
    Input 'nguyenhh@gmail.com' to 'email'
    Input '0909090907' to 'soDT'
    click to submit button 
    Capture Page Screenshot    Sign_up_TC13.png
Test Case 14
    [Documentation]    [User interface] Verify user click "Back" link successfully 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Click link '//*[@id="root"]/main/div[1]/form/div[2]/div[1]/a'
    Capture Page Screenshot    Sign_up_TC14.png
Test Case 15
    [Documentation]    [User interface] Verify user click "Bạn đã có Tài khoản? Đăng nhập" link successfully 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link sign up page
    Click link '//*[@id="root"]/main/div[1]/form/div[2]/div[2]/a'
    Capture Page Screenshot    Sign_up_TC15.png
*** Keywords ***
Open and access to "${link}"
    Open Available Browser    ${link}
    Maximize Browser Window
    

Input '${value}' to '${location}'
    Input Text    ${location}    ${value}


click to submit button
    Click Element    //*[@id="root"]/main/div[1]/form/button/span[1]

Click to link sign up page
    Click Link    /sign-up
    Maximize Browser Window

Click link '${link}'
    Click Link    ${link}  

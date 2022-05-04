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
    [Documentation]    Verify user choose seat & payment successful when only choose seat
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Sleep    3s
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    3s   
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Sleep    1s
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Sleep    1s
    Select '//option[@value="27-45-2021"]'
    Select Film
    Sleep    1s
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]
    Sleep    5s
    Select seat '//button[@class="jss74"]'  
    Click button "Dat ve"
    Click button "OK" in message "Ban co muon dat ve khong"
    Capture Page Screenshot    ChooseSeatAndPayForm_TC01.png

Test Case 02
    [Documentation]    Verify user choose seat & payment successful when choose seat and food & drink
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]
    Sleep    5s
    Select seat '//button[@class="jss74"]'
    Click Combo tc02
    Sleep    1s
    Select Combo '//div[@aria-hidden="true" and @role="presentation"]//div[@class="comboList__comboItem"]//p[contains(.,"Bắp vị chocolate")]/ancestor::div[3]//button'
    Click Button "CHON" in "DO AN VA THUC UONG"
    Click button "OK" in message "Da them vao Thanh Toan"
    Click button "Dat ve"
    Click button "OK" in message "Ban co muon dat ve khong"
    Capture Page Screenshot    ChooseSeatAndPayForm_TC02.png

Test Case 03
    [Documentation]    Verify user choose seat & payment successful when choose seat, food & drink, payment methods 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]
    Sleep    5s
    Select seat '//button[@class="jss74"]'
    Click Combo tc02
    Sleep    1s
    Select Combo '//div[@aria-hidden="true" and @role="presentation"]//div[@class="comboList__comboItem"]//p[contains(.,"Bắp vị chocolate")]/ancestor::div[3]//button'
    Click Button "CHON" in "DO AN VA THUC UONG"
    Click button "OK" in message "Da them vao Thanh Toan"
    Tick "Hinh thuc thanh toan"                                            #Chon hinh thuc thanh toan
    Click button "Dat ve"                                               
    Click button "OK" in message "Ban co muon dat ve khong"
    Capture Page Screenshot    ChooseSeatAndPayForm_TC03.png

Test Case 04  
    [Documentation]    Verify user choose seat & payment failed when selecting selected chair 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]
    Sleep    5s
    Select seat '//*[@id="wrapped-tabpanel-one"]/div/p/div/div[2]/div[1]/div[2]/div[1]/div/div/button[105]'
    Capture Page Screenshot    ChooseSeatAndPayForm_TC04.png

Test Case 05  
    [Documentation]    Verify user selects seat and payment fails when seat is not selected 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Sleep    1s
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]
    Sleep    5s
    Click button "Dat ve"
    Capture Page Screenshot    ChooseSeatAndPayForm_TC05.png

Test Case 06  
    [Documentation]    Verify user choosing seats and payment failed when selecting more than 10 seats 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Sleep    1s
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]
    Sleep    5s
    Select 11 seat
    Sleep    3s
    Click button "OK" in message "Ban khong the chon qua 10 ghe"
    Click button "Dat ve"
    Capture Page Screenshot    ChooseSeatAndPayForm_TC06.png

Test Case 07  
    [Documentation]    Verify user does not allow booking when timeout 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Sleep    1s
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]        #Click "MUA VE NGAY"
    Sleep    5s
    Select seat '//button[@class="jss74"]'
    Sleep    5m
    Click button "Dat Ve Lai" in message "Het thoi gian dat ve"
    Sleep    6s
    Capture Page Screenshot    ChooseSeatAndPayForm_TC07.png

Test Case 08  
    [Documentation]    Verify the correct information from the film booking form 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Sleep    1s
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Capture Page Screenshot    ChooseSeatAndPayForm_TC08-1.png
    Click Element        //a[@class="swipter-tabs__link"]        #Click "MUA VE NGAY"
    Sleep    5s
    Capture Page Screenshot    ChooseSeatAndPayForm_TC08-2.png

Test Case 09  
    [Documentation]    Verify form refresh after successful booking 
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Sleep    1s
    Select Film
    Select '//option[@value="1367"]'
    Select Film
    Sleep    1s
    Select '//option[@value="cgv-su-van-hanh"]'
    Select Film
    Select '//option[@value="27-45-2021"]'
    Select Film
    Select '//option[@value="41654"]'
    Click Element        //a[@class="swipter-tabs__link"]        #Click "MUA VE NGAY"
    Sleep    5s
    Select seat '//button[@class="jss74"]'
    Click Combo tc02 
    Sleep    2s
    Select Combo '//div[@aria-hidden="true" and @role="presentation"]//div[@class="comboList__comboItem"]//p[contains(.,"Bắp vị chocolate")]/ancestor::div[3]//button'
    Click Button "CHON" in "DO AN VA THUC UONG"
    Click button "OK" in message "Da them vao Thanh Toan"
    Capture Page Screenshot    ChooseSeatAndPayForm_TC09-1.png
    Click button "Dat ve"
    Click button "OK" in message "Ban co muon dat ve khong"
    Click button "OK" in message "Dat ve thanh cong"
    Sleep    6s
    Capture Page Screenshot    ChooseSeatAndPayForm_TC09-2.png
*** Keywords ***
Open and access to "${link}"
    Open Available Browser    ${link}
    Maximize Browser Window
    
Input '${value}' to '${location}'
    Input Text    ${location}    ${value}

click to submit button 
    Click Element    //*[@id="root"]/main/div/form/button/span[1]
    Sleep    1s

Click to link Login page
    Click Link    /sign-in
    Maximize Browser Window

Click link '${link}'
    Click Link    ${link}  

Select Film
    Click Element     //select[@class="MuiSelect-root MuiSelect-select MuiSelect-outlined MuiInputBase-input MuiOutlinedInput-input"]

Select '${value}'
    Click Element     ${value}

Select seat '${value}'
    Click Element    ${value}

Click Combo 
    Click Element    //div[@class="jss45"]

Click Combo tc02
    Click Element    //div[@class="jss98"]
Select Combo '${value}'
    Click Element    ${value}

Click Button "CHON" in "DO AN VA THUC UONG"
    Click Element    //button[@class="MuiButtonBase-root MuiButton-root MuiButton-text jss101"]

Click button "OK" in message "Da them vao Thanh Toan"
    Click Element    //button[@class="swal2-confirm swal2-styled"]

Tick "Hinh thuc thanh toan"
    Click Element    //input[@id="checkout2"]
Click button "Dat ve"
    Click Element    //div[@class="book__right--btn"]

Select 11 seat
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]
    Click Element    //button[@class="jss74"]

Click button "OK" in message "Ban khong the chon qua 10 ghe"
    Click Element    //button[@class="swal2-confirm swal2-styled"]

Click button "Dat Ve Lai" in message "Het thoi gian dat ve"
    Click Element    //button[@class="swal2-confirm swal2-styled"]

Click button "OK" in message "Ban co muon dat ve khong"
    Click Element    //button[@class="swal2-confirm swal2-styled"]

Click button "OK" in message "Dat ve thanh cong"
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    
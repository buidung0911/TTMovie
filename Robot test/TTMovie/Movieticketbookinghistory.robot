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
    [Documentation]    Verify showing all booked tickets
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
    Capture Page Screenshot    Movieticketbookinghistory_TC01-1.png
    Click button "Dat ve"
    Click button "OK" in message "Ban co muon dat ve khong"
    Click button "OK" in message "Dat ve thanh cong"
    Sleep    6s
    Capture Page Screenshot    Movieticketbookinghistory_TC01-2.png
    Click "THONG TIN DA DAT" form  
    Click "Xem chi tiet"
    Sleep    6s
    Capture Page Screenshot    Movieticketbookinghistory_TC01-3.png

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
    Sleep    2s

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

Click "THONG TIN DA DAT" form    
    Click Element    //button[@id="wrapped-tab-two"]

Click "Xem chi tiet" 
    Click Element    //a[text()='Xem chi tiết']
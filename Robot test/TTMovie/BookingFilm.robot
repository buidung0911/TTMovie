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
    [Documentation]    Verify user successful booking film
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
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
    Capture Page Screenshot    BookingFilm_TC01.png
Test Case 02
    [Documentation]    Verify user failed booking film
    [Setup]  
    [Teardown]   Close Browser
    Open and access to "https://ttmovie.vercel.app"
    Click to link Login page
    Input 'JUM UÔNG' to 'taiKhoan'
    Input '09112000' to 'matKhau'
    click to submit button
    Click Element    //button[@class="swal2-confirm swal2-styled"]
    Select Film
    Select '//option[@value="1367"]'
    Click Element        //button[@class="swipter-tabs__link"]
    Sleep    5s
    Capture Page Screenshot    BookingFilm_TC02.png
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
    Sleep    1s

Select '${value}'
    Click Element     ${value}
    Sleep    1s

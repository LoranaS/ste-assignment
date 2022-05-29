*** Settings ***
Library    SeleniumLibrary
Test Setup    Open the page conduit
Test Teardown    Close browser

*** Keywords ***
Open the page conduit
    Open Browser    http://localhost:3000/    googlechrome
    Wait Until page Contains    conduit

*** Test Cases ***
TC1: Open page conduit
    Wait Until Page Contains    A place to share your knowledge.    30s
    Page Should Contain    conduit A place to share your knowledge.

TC2: Sign up
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Have an account?
    Input Text    css:input[placeholder="Your Name"]   Fidorka S.
    Input Text    css:input[placeholder="Email"]    fidorka.s@test.com
    Input Text    css:input[placeholder="Password"]    12345678
    Click Button    Sign up
    Wait Until Page Contains    Lorana Strisy    30s
#FOR EVERY RUN = THE USERNAME AND EMAIL MUST BE UPDATED

TC3: Sign up negative path _ Your name
#please change the password of lorana.strisy@test.com from Sheldon to 12345678 otherways the test will fail
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Have an account?    30s
    Input Text    css:input[placeholder="Email"]    lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    12345678
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button

TC4: Sign up negative path _ email
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Have an account?
    Input Text    css:input[placeholder="Your Name"]   Lorana Strisy
    Input Text    css:input[placeholder="Password"]    12345678
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button

TC5: Sign up negative path _ password
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Have an account?
    Input Text    css:input[placeholder="Your Name"]   Lorana Strisy
    Input Text    css:input[placeholder="Email"]    lorana.strisy@test.com
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button

TC6: Sign up negative path _ blank form
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button

TC7: Sign up
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Have an account?
    Input Text    css:input[placeholder="Your Name"]   Lorana Strissy
    Input Text    css:input[placeholder="Email"]    lorana.strissy@test.com
    Input Text    css:input[placeholder="Password"]    123456
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button
   
TC:8 Sign in _ happy path
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    12345678
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s

TC9: Sign in _ negative path
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   jablko@hotmail.com
    Input Text    css:input[placeholder="Password"]    jablko1
    Click Button    Sign in
    Wait Until Page Contains    email or password is invalid    30s

TC10: Sign in _ negative path 
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    123456
    Click Button    Sign in
    Wait Until Page Contains    email or password is invalid    30s

TC11: Sign in _ negative path 
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button
    
TC12: Sign in _ missing email 
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Password"]    123456
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button

TC13: Sign in _ missing password
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/button

TC14 Sign in _ CAPS LOCK
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   LORANA.STRISY@TEST.COM
    Input Text    css:input[placeholder="Password"]    12345678
    Click Button    Sign in
    Wait Until Page Contains    email or password is invalid    30s

TC16 Short bio about you
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    12345678
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Input text    css:input[placeholder="Short bio about you"]    I <3 Slovakia
    Click Button    Update Settings
    Wait Until Page Contains    I <3 Slovakia    30s

TC17 New Password
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    12345678
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Input Text    //*[@id="app"]/div/div/div/div/form/fieldset/fieldset[5]/input    Sheldon
    Click Button    Update Settings
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Click Button    Or click here to logout.
    Wait Until Page Does Not Contain    Lorana Strisy    30s

TC21 Log out 
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Click Button    Or click here to logout.
    Wait Until Page Does Not Contain    Lorana Strisy    30s

TC19 New User Name
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Input Text    //*[@id="app"]/div/div/div/div/form/fieldset/fieldset[2]/input    Lorana S.
    Click Button    Update Settings
    Wait until page contains    Lorana S.    30s
#revert the name to Lorana Strisy

TC20 Email can not be changed by the User
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/fieldset/fieldset[4]/input

TC20 Email can not be changed by the User
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Element Should Be Disabled    //*[@id="app"]/div/div/div/div/form/fieldset/fieldset[4]/input

TC22 / TC23 New Post
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Lorana Strisy    30s
    Input Text    xpath: //input[@placeholder='Article Title']    Bodon
    Input Text    xpath://*[@id="app"]/div/div/div/div/form/fieldset[2]/input    Place where to do climbing
    Input Text    xpath://*[@id="app"]/div/div/div/div/form/fieldset[3]/textarea    Bodon is a great place to go hiking or climbing. I am a climber so I prefer this locality for climbing. It is located between Kosice and Presov. 
    Input Text    xpath://*[@id="app"]/div/div/div/div/form/fieldset[4]/input    I <3 climbing
    Double Click Element   //button[normalize-space()='Publish Article']
    Wait until page contains    Bodon   30s
    Click Element    //*[@id="app"]/nav/div/a
    Wait until page contains    Bodon   30s

TC24/TC25 Article is marked and unmarked as favorite one
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    //a[@class='nav-link'][normalize-space()='Lorana Strisy']
    Wait Until Page Contains   Bodon    30s
    Click Element    //i[@class='ion-heart']
    Click Element    //a[normalize-space()='Favorited Articles']
    Wait Until Page Contains   Bodon    30s
    Click Element    //i[@class='ion-heart']
    Click Element    //a[normalize-space()='My articles']
    Wait Until Page Contains   Bodon    30s
    Click Element    //a[normalize-space()='Favorited Articles']
    Wait Until Page Does Not Contain    Bodon    30s

TC27 Write a comment to your own article
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[4]/a
    Wait Until Page Contains   Bodon    30s
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div/div[2]/a/h1
    Wait Until Element Is Visible    xpath://*[@id="app"]/div/div[3]/div/form/div[1]/textarea
    Input Text    xpath://*[@id="app"]/div/div[3]/div/form/div[1]/textarea    Test
    Click Button    Post Comment
    Wait Until Page Contains    test


TC28 Deleted Article
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    xpath://a[@class='nav-link'][normalize-space()='Lorana Strisy']
    Wait Until Page Contains   Bodon    30s
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div/div[2]/a/h1
    Wait Until Element Is Visible    xpath://*[@id="app"]/div/div[2]/div[2]/div/button[2]
    Click Element    xpath://*[@id="app"]/div/div[2]/div[2]/div/button[2]
    Wait Until page does not contain    Bodon

TC29 The updating profile is accessible from profile page
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[4]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[1]/div/div/div/a
    Click Element    xpath://*[@id="app"]/div/div[1]/div/div/div/a
    Wait Until Page Contains    Your Settings

TC31 To udate profile is possible from profile page
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains    Lorana Strisy    30s
    Wait Until Element Is Visible    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[4]/a

TC32 Marking the article as the favorite one is functional in HP
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[1]/ul/li[1]/a    
    Click Element    //i[@class='ion-heart']
    Click Element    //*[@id="app"]/nav/div/ul/li[4]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div/div[1]/ul/li[1]/a
    Click Element    //*[@id="app"]/div/div[2]/div/div/div[1]/ul/li[2]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div/div[2]/a

TC33 Marking the article as the favorite one is functional in ADP
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[1]/ul/li[1]/a
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[3]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div[2]/div/button[2]
    Click Button    xpath://*[@id="app"]/div/div[2]/div[2]/div/button[2]
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[4]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div/div[1]/ul/li[2]/a
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div/div[1]/ul/li[2]/a
    Wait Until Page Contains Element     xpath://*[@id="app"]/div/div[2]/div/div/div[2]/a

TC34 Marking the article as the favorite one is functional in ADP
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[1]/ul/li[1]/a
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[3]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div[2]/div/button[2]
    Click Button    xpath://*[@id="app"]/div/div[2]/div[2]/div/button[2]
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[4]/a
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div/div[1]/ul/li[2]/a
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div/div[1]/ul/li[2]/a
    Wait Until Page Does Not Contain Element   xpath://*[@id="app"]/div/div[2]/div/div/div[2]/a

TC37 Verify that the comment can be writtin in the article which is in HP
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains    Need an account?    30s
    Input Text    css:input[placeholder="Email"]   lorana.strisy@test.com
    Input Text    css:input[placeholder="Password"]    Sheldon
    Click Button    Sign in
    Wait Until Page Contains Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[3]/a
    Click Element    xpath://*[@id="app"]/div/div[2]/div/div[1]/div[3]/a
    Wait Until Element Is Visible    css:input[placeholder="Write comment"]
    Input Text    css:input[placeholder="Write comment"]    Hello world.
    Click button    xpath://*[@id="app"]/div/div[3]/div/form/div[2]/button
    Wait Until Page Contains    Hello world.

TC39 The logo of the company is placed in the header of the page
    Wait Until Page Contains Element    //*[@id="app"]/nav/div/a

TC40 The user is redirected to the HP by clicking on the logo from any page.
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[2]/a
    Wait Until Page Contains        Need an account?   30s
    Click Element    xpath://*[@id="app"]/nav/div/a
    Wait Until Page Contains    A place to share your knowledge.    30s
    Click Element    xpath://*[@id="app"]/nav/div/ul/li[3]/a
    Wait Until Page Contains    Have an account?    30s
    Click Element    xpath://*[@id="app"]/nav/div/a    30s
    Wait Until Page Contains    A place to share your knowledge.    30s
    
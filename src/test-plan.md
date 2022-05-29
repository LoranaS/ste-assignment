#TC1
#verify that the page is opened and it contains the following text: conduit A place to share your knowledge.

#TC2
#verify that the user is able to register by orienting the Sign-up page and filled out all required fields. The expexted result is that the user sees his user name in the HP .

#TC3
#verify that the user is not able to register if the one input field in the Sign up page is not filled out, e.g.  field Your Name is blank but email and password is filled out.The expexted result is that the user is not able to registered.

#TC4
#verify that the user is not able to register if the one input field in the Sign up page is not filled out, e.g.  field Email is blank but Your Name and Password is filled out.The expexted result is that the user is not able to registered.

#TC5
#verify that the user is not able to register if the one input field in the Sign up page is not filled out, e.g.  field Password is blank but Your Name and Email is filled out.The expexted result is that the user is not able to registered.

#TC6
#verify that the user is not able to register if all input fields are blank in the Sign up page.The expexted result is that the user is not able to registered.

#TC7
#verify that the user is not able to register if the password is lower than 8 symbols.The expexted result is that the user is not able to registered.

#TC8
#Verify that the user is able to login in the Sign in page by inserting the already registered email and appropriate password. Expected result is that the user is signed in. 

#TC9
#Verify that the user is not able to login the Sign in page by inserting the invalid email and password. Expected result is that the user is not signed in. 

#TC10
#Verify that the user is not able to login in the Sign in page by inserting the valid email and invalid password. Expected result is that the user is not signed in.

#TC11
#Verify that the user is not able to login in the Sign in page if the user does not filled out the email and password. Expected result is that the user is not signed in.

#TC12
#Verify that the user is not able to login in the Sign in page if the user does not filled out the email but password is filled out. Expected result is that the user is not signed in.

#TC13
#Verify that the user is not able to login in the Sign in page if the user fills out the email but password is not filled out. Expected result is that the user is not signed in.

#TC14
#Verify that the user is not able to sign in the Sign in page byt inserting the email and password if the caps lock is turned on. Expected result is that the user is not signed in.

#TC15
#verify that the signed user can insert his/her profile picture in the Settings page and button Update Settings is active. Expected result is that the profile picture of the signed user is saved. 

#TC16
#the user can write something about him/her in the field Shor bio about you in the Settings page and save it by clicking on the button Update Settings. The expected result is that the text is saved in his/her profile. 

#TC17
#the user is able to change his/her password in the field New Password in the setting page. The expected result is that the password is changed and user is able to sign in with his new password.

#TC18
#the user is not able to change his/her password in the page Settings if the password is lower than 8 symbols. The expected result is that the password is not changed.
#TC18 is not included in the automated test cases because the coe is not completed and user is able to use the password which is lower than 8 placeholders. 

#TC19
#The user is able to change his/her name in the Setting page. Expected result is that the name is changed. 

#TC20
#the user can not change the email in the Settings page. The expected result is that the field "Email" is not editable.

#TC21
#the user is able to log out from the page if he/she clicks at the button "Or click here to logout" in the Settings page. The expected result is that the user is logged out. 

#TC22
#the signed user can published the article in the "New Post" page by inserting all required fields. The button "Publish Article" is active and functional. The expected result is that the article is published and it is mirroring the information which the user filled out in the "New Post" page. 

#TC23
#the signed user can visit her/his profile. The expected result is that the user's aricles are presented in the profile page. 

#TC24
#the user can marked his/her article as the favorite article by clicking on the icon heart in the profile page. The expected result is that the article is marked as the user's favorite article and it is visible in the section Favorited Articles in the profile page. 

#TC25
#the user can unmarked the article as his/her favorite article. The expected result is that the article is deleted from the section "Favorited Articles" in the profile page. 

#TC26
#the user can open the article from the profile page. The expected result is that the user can read the article in the profile page. 

#TC27
#the user can write a comment to his/her article if the user opened the article from the profile page. The expected result is that the comment is saved and published.

#TC28
#the article can be deleted by clicking at the button "Delete Article" if the user opened the article in the profile page. The expected result is that the article is deleted. 

#TC29
The user can update its profile by clicking on the button "Edit profile setting" in the profile page. The expected result is that the user is redirected to the "Settings" page. 

#TC30
The signed user can list the articles in the home page. The expected result is that the articles are listed in the HP. 

#TC31
#the signed user can open any article which is presented in the HP. The expected result is that the articles are accessible from HP

#TC32
The user can mark any article as the favorite one in the HP. The expected result is that the article is marked as the favorite in the HP and it is appearing in the profile page as the user's favorite article. 

#TC33
The user can mark the article as the favorite one if he/she is in the article detailed page (ADP). The expected resuls is that the article is marked as the favorite one in the ADP and it is appearing in the profile page as the user's favorite article. 

#TC34
The user can unmark the article as the favorite if the user is in the ADP and HP. The expected result is that the article is not marked as the favorite one and is removed from the favorite articles in profile page. 

#TC35
The user can follow the other user by clicking on the button "Follow User" in the ADP. The expected result is the posts of the followed users are accesible in the section "Your Feed" in the HP. 

#TC36
The user can stop following the other user if he/she clicks on the button "Unfollow User". The expected result is that the articles of the users that was followed are deleted from the section "Your Feed" in the HP. 

#TC37
#The user can write the comment in the article located in HP. Once the comment is written in the field, the button "Post Comment" is active and functional. The expected result is that the comments is appering for that article in ADP. 

#TC38
#the user can filter the article by the popular tags that are located on the right side of the HP. The expected result is that the articles are filtered based on the selected popular tag.

#TC39
#The logo of the company is placed in the header of the page. The expected resuls is that the logo is in the header and is correct.

#TC40
#the user is redirected to the HP by clicking on the logo from any page. The expected result is that the user is redirected to the HP.

#TC41
#the tag that was inserted in the new article is presented in the popular tags and is populated in the HP. The article is accessible if the user select the tag in the required section in the HP. 

#TC42
#the unregistered user can view the articles in the HP and open them. The expected result is that the articles are listed in the HP and ADP is accesible. 

#TC43
#the unregistered user is forced to sign up or sign in if he/she tries to mark the article as favorite one. 

#TC44
#the unregistered user is forced to sign in if he/she tries to mark the article as favorite one. 

#TC45
#the button "Need an account" is redirecting the user from "Sign in" page to the page "Sign up".

#TC46
#the button "Have an account?" is redirecting the user from the page "Sign up" to the page "Sign in".
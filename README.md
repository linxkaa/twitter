# Twitter Flutter Application

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#manual-to-run-project">Manual To Run Project</a></li>
      </ul>
    </li>
    <li>
      <a href="#features-walkthrough">Features Walkthrough</a>
      <ul>
        <li><a href="#authentication-related">Authentication Related</a></li>
        <li><a href="#home-page">Home Page</a></li>
        <li><a href="#profile">Profile</a></li>
      </ul>
    </li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->
## About The Project

A _twitter_ project required for technical test. Through this project, there are some features that are listed below:
* User can sign in manually or using google sign in
* User can register manually or using google sign in
* User can see their profile
* User can add new tweet 
* User can edit and delete excisting tweet
for social implementation (google) will be automatically registering user if the user didn't have the account yet.

### Built With
* _flutter_
  - for building the UI and functionality accross platform 
* _flutter_bloc_ (highlight package)
  - what this project use for state management
* _dartZ_ & _freezed_ (highlight package)
  - minimize _if else_ logic in the application
  - clean & readable conditional state
* _auto-route_ (highlight package)
  - making navigation accross page much more easier
* _flutter_screenutil_ (highlight package)
  - for making the interfaces adaptable in any device
 
### Manual To Run Project

* after cloning the repository, make sure to run `flutter pub run build_runner build --delete-conflicting-outputs` first to avoid the conflict files after cloning.
* if you wish to try the google sign-in, please contact me through email lintangkusuma04@gmail.com to input your android debug key in my `firebase` that I used for this project
* or if you want to install the .apk manually https://drive.google.com/drive/folders/1LhM_5fVjvWvSt5jl8TZZ6CAAoTnkjsH_?usp=sharing

<!-- More about features -->
## Features Walkthrough

Here listed the screenshots of the application and detailed walkthrough.

### Authentication Related

<img src="https://user-images.githubusercontent.com/57997512/131882995-2a2cd357-7752-40d3-9e43-4be815194405.png" width="220" height="400">\
This was the landing page of the application, from this, user could login or register by pressing __Continue With Google__ or else, with __Create Account__, and login using __Log in__ button, case:
  1. if user pressed the __Continue With Google__ it will automatically redirected to _Home Page_ as the image **1)** below
  2. if user pressed the __Create Account__ it will redirected to _Register Page_ as the image **2)** below
  3. if user pressed the __Log in__ it will redirected to _Login Page_ as the image **3)** below
<p float="left">
  1) <img src="https://user-images.githubusercontent.com/57997512/131883891-b5975669-4c38-439c-8200-44585aa40967.png" width="220" height="400"> 
  2) <img src="https://user-images.githubusercontent.com/57997512/131883390-f25e90c1-dc84-4ddb-a9d9-bd30b9b28ba8.png" width="220" height="400">
  3) <img src="https://user-images.githubusercontent.com/57997512/131884323-10366e3f-f3dc-492f-9452-13649cafbdfa.png" width="220" height="400">
</p>

### Home Page

This was the home page where user can tweet and see their own tweet, also the tweet added was sorted by the newest tweet\
<img src="https://user-images.githubusercontent.com/57997512/131885780-b902021e-d8cd-4f97-bf2b-518ebdca06f8.png" width="220" height="400">\
in this dialog, user could type anything but with 280 character limitation, the _close_ button is for closing the dialog and see the full _Home Page_. If successfully posted tweet to `firebase` the dialog will pop it self and return the user back to _Home Page_. As the user posted the tweet, there will be a section that display the user name, email and also time they're posting the tweet to `firebase` as seen in image **1)**. In image **2)** user could also press the three dot besides their name and email to show dialog which lead to _delete tweet_ also _edit tweet_ action (the dialog show in image **1)**). if user pressed the _edit tweet_, it will lead to show the dialog pretty much the same when adding new tweet, the differences is the button is now _save_ and user get the text form filled already with their current tweet they wish to edit as shown in image 3).
<p float= "left">
  1) <img src="https://user-images.githubusercontent.com/57997512/131886258-78d1d83c-f685-48f2-b537-74703ceabb99.png" width="220" height="400">
  2) <img src="https://user-images.githubusercontent.com/57997512/131886825-45367d01-759b-4f19-8da6-a640cb7f12ef.png" width="220" height="400">
  3) <img src="https://user-images.githubusercontent.com/57997512/131887059-b766bc72-0886-48db-875e-57fe5071cbcb.png" width="220" height="400">
</p>

### Profile
<img src="https://user-images.githubusercontent.com/57997512/131887430-66dbb812-82ee-4610-8ebb-5876d4236527.png" width="220" height="400">\
in picture above, is a profile page that contains the user name and email also the __Log Out__ button, for redirect user back to the _Landing Register Page_

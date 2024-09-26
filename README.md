# Robot Framework Practice (In progress)

![GitHub repo size](https://img.shields.io/github/repo-size/iuricode/README-template?style=for-the-badge)
![GitHub language count](https://img.shields.io/github/languages/count/iuricode/README-template?style=for-the-badge)
![Bitbucket open pull requests](https://img.shields.io/bitbucket/pr-raw/iuricode/README-template?style=for-the-badge)


> The System under test is a "Contact List" application, developed by Kristin Jackvony and available [here](https://thinking-tester-contact-list.herokuapp.com/).  Project for Robot Framework learning prupose.

### 🤖 Setup

To start developing the tests, its necessary to have installed Python and Robot Framework:

- [x] [Python](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#python-installation);
- [x] [Robot Framework](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#installing-and-uninstalling-robot-framework);
- [x] [Robot Framework Language Server VSCode Extension](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp) (optional).

### ✍ Main Concepts

In the folder you choose to save the project, you need to create two files: name_tests.robot and name_resources.robot.

- **Test File**: Where you will write the test cases, its specification, steps, and detail the steps to execution.
- **Resource File**: Where you will build the "logic", define variables, import libraries and define the interactions with the SUT locators.


## Test Files


### ⚙ Settings

Its the first section in the test file. Here is defined the **Test Setup** (Action that need to be executed before the test case runner), **Teardown Setup** (Action that need to be executed after the test case runner) and the related **Resource** file, where that stepes were defined.

```
*** Settings ***
Test Setup <tab> Open Browser
Test Teardown <tab> Close Browser
```

### 🟢 Tags and Documentation

- **Tags**: Used to create categories within the tests (Example: Login, SignUp, Checkout).

```
[Tags] <tab> Tag here <tab> another tag here
```
- **Documentation**: Used to take annotations about the teature or test case. It is created inside the test case title and, before the steps.
```
[Documentation] <tab> Annotation here
... <tab> if you need break a line, put three dots and continue to write
```

### 🟢 Test Cases Structure

The test cases are written as the follow:

```
*** Test Cases ***
TC01 - Access the main page
<tab> [Documentation] <tab> Test description here
... <tab> <tab> <tab>       Description in other line
<tab> [Tags] Main_page
<tab> Acess the main page
<tab> Verify if the field is visible
```

**Readme Template By**: https://github.com/iuricode/readme-template

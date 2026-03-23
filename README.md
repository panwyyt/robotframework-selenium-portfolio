# Software QA Automation Portfolio: Robot Framework & Selenium

Welcome to my Automation Testing Portfolio! This repository is designed to demonstrate my proficiency in creating robust, maintainable, and scalable automated web UI tests using **Robot Framework** and **SeleniumLibrary**.

## 🎯 Core Automation Skills
- **Robot Framework Architecture**: Structuring projects using Page Object Model (POM), separating UI locators, reusable keywords, and readable test cases.
- **Selenium Web Testing**: Proficient in varied element localization strategies (XPath, CSS Selectors, IDs) and handling complex UI components (Dropdowns, Modals, Checkboxes, Date Pickers, and File Uploads).
- **Dynamic Test Data**: Implementing runtime data generation for thorough form-filling validation.
- **Synchronization**: Using Explicit Waits effectively (`Wait Until Element Is Visible`) to ensure tests are stable and not flaky.

## ✅ Test Execution Results (100% PASS)
I have pre-run all test suites locally to prove their reliability. You can view the complete, passing execution logs directly in your browser using the HTML Preview links below:

- 🟢 **Automated Login Flow**: [Open Test Report](https://htmlpreview.github.io/?https://github.com/panwyyt/robotframework-selenium-portfolio/blob/main/Automated-LogIn-Form-Filling/report.html) | [Open Detailed Log](https://htmlpreview.github.io/?https://github.com/panwyyt/robotframework-selenium-portfolio/blob/main/Automated-LogIn-Form-Filling/log.html)
- 🟢 **Complex Form Filling**: [Open Test Report](https://htmlpreview.github.io/?https://github.com/panwyyt/robotframework-selenium-portfolio/blob/main/Form-filling/report.html) | [Open Detailed Log](https://htmlpreview.github.io/?https://github.com/panwyyt/robotframework-selenium-portfolio/blob/main/Form-filling/log.html)

---

## 📂 Projects Overview

This repository contains two main automation projects focusing on core and advanced UI automation challenges.

### 1. `Automated-LogIn-Form-Filling`
A straightforward automation project that tests an authentication flow. 
- **Target URL**: [The Internet - Login](https://the-internet.herokuapp.com/login)
- **Features Showcased**:
  - Proper project structuring (separating tests, keywords, and locators files).
  - Explicit waits for synchronizing test steps with UI elements.
  - Form inputs and element assertions (e.g. verifying success alerts).

### 2. `Form-filling`
A more complex end-to-end automation test dealing with an extensive HTML form page with varying inputs and complex web elements.
- **Target URL**: [DemoQA - Practice Form](https://demoqa.com/automation-practice-form)
- **Features Showcased**:
  - **Data Handling**: Auto-generating randomized test data (Names, Emails, phone numbers) internally.
  - **Advanced Inputs**: Automating date pickers, dropdowns, and checkboxes with intelligent conditionals.
  - **File Uploads**: Selecting and attaching a file programmatically using relative references (`${CURDIR}`).
  - **Keyword-Driven Logic**: Robust keywords that accept arguments for dynamic execution testing.

---

## 🛠️ Technology Stack
- **Robot Framework**: Core automation framework
- **SeleniumLibrary**: Web manipulation library
- **Python**: Core scripting engine

## 🚀 How to Run

### Prerequisites
Make sure you have python installed. Then, install the required libraries:
```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```
Ensure you have the compatible browser drivers (e.g. `chromedriver`) in your system PATH.

### Executing the Tests

**To run the Login project:**
```bash
cd Automated-LogIn-Form-Filling
robot test_case.robot
```

**To run the Form-filling project:**
```bash
cd Form-filling
robot test_case.robot
```

The test results (`log.html` and `report.html`) will be generated inside corresponding project folders. 

> [!NOTE] 
> I have pre-run the tests and included the **latest `log.html` and `report.html` files** securely within each project folder. HR and reviewers can open these files in any web browser to see the detailed step-by-step execution proof and reports of the test runs without needing to execute the scripts themselves!

---

_Feel free to explore the code to see my structural approach to UI test automation!_

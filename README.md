# HIT DevOps Final Project

## Overview
A simple yet functional Java web application demonstrating DevOps practices and automated testing. This project showcases a basic greeting web service built with Java Server Pages (JSP) running on Apache Tomcat.

## Project Description
The application allows users to enter their name through a web form and receive a personalized greeting. It serves as a practical example for implementing continuous integration, testing, and deployment practices in a DevOps pipeline.

## Technology Stack
- **Backend Framework**: Java Server Pages (JSP)
- **Application Server**: Apache Tomcat 8.5
- **Frontend**: HTML5 with CSS styling
- **Testing**: Selenium

## Features
- User-friendly web interface for name input
- Personalized greeting display
- Clean, responsive design with styled components
- Links to HIT (Hadassah Academic College) website integration

## Project Structure
```
Final_Project/
├── index.jsp                 # Main application file (JSP)
├── README.md                 # Project documentation
├── Selenium_phaseside.side   # Automated test suite
├── localhost.har             # HTTP request/response logs
└── screenshots/              # Test documentation screenshots
```

## How to Run
1. Ensure Apache Tomcat 8.5 is installed and running
2. Deploy the application to `TOMCAT_HOME/webapps/Final_Project/`
3. Access the application at `http://localhost:8080/Final_Project/`
4. Enter your name and click "Greet" to see the personalized greeting

## Testing
The project includes Selenium test automation (`Selenium_phaseside.side`) for automated testing of the application's functionality. Test execution details and screenshots are documented in the `screenshots/` directory.

## Team
**DevopsTeam** - HIT DevOps Final Project

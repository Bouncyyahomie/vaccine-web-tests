# Vaccine Web Tests

## Installation

```
pip install -r requirements.txt
```

## Running tests

```
robot ./vaccine_web_tests.robot
```

## Test case list
| ID | Name                                 | Description                                                                               | Status |
|----|--------------------------------------|-------------------------------------------------------------------------------------------|--------|
| 1  | Test verify 2 items on the home page | Visit the home page and verify 2 items on the home page.                                  | Pass   |
| 2  | Test create a reservation            | Visit the home page, then click on (make a reservation button), and create a reservation. | Pass   |
| 3  | Test cancel the reservation          | Cancel the reservation made in the previous test.                                         | Pass   |

## Questions

### Which do you think is a better framework for E2E testing of web applications or web services: Robot Framework or Cucumber with Selenium/HTTP library and Junit?     
I think Cucumber with Selenium/HTTP library and Junit is better than Robot Framework because Cucumber framework is highly considered due to it’s simple and user friendly usage, Robot Framework has more of complex structure comparing to Cucumber.    


### What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
- https://robotframework.org/SeleniumLibrary/#usage
- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
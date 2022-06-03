# Pewlett Hackard Analysis

## Overview

Bobby is an up and coming HR analyst at Pewlett Hackard whose task is to perform employee research. Pewlett Hackard is a large company with thousands of employees and has been around for a long time. As employees begin to retire at a rapid rate, Pewlett Hackard is looking toward the future by offering a retirement package for those who meet a certain criteria and starting to think about which positions will need to be filled. Bobby has asked us for help in generating a list of all employees eligible for the retirement package. Starting with six csv files, our goal was to help Bobby build an employee database with SQL. Once this was complete, we were tasked with determining the number of retiring employees per title and identifying employees who are eligible to participate in a mentorship program. Below are some results of our analysis.

## Results

#### I. Deliverable 1

The first deliverable centered around finding the number of retiring employees by title. Using SQL to parse through our tables, the following output was produced:

<img width="251" alt="Screen Shot 2022-06-03 at 2 55 07 PM" src="https://user-images.githubusercontent.com/101564349/171930496-cddfba0a-ab9c-47fa-b348-bd40c39ac3fd.png">

#### II. Deliverable 2

The second deliverable centered around finding the the employees eligible for the mentorship program. A snippet of our output can be seen below:

<img width="749" alt="Screen Shot 2022-06-03 at 2 53 47 PM" src="https://user-images.githubusercontent.com/101564349/171929888-b700abf9-820c-42bc-b985-ad44a1cd5fed.png">

#### Findings

From our analysis, we can gather the following information:
* The total number of employees retiring from the company is 90,398. 
* Of the 90,398 employees set to retire, the majority (63.79%) hold the title of _Senior Engineer_ or _Senior Staff_ which are positions that require years of experience / knowledge. 
* Of the 90,398 employees set to retire, the title with the least amount of retirees are _managers_ with only a total of 2 employees. Because of this, the company will not have to spend a lot of their resources on training for leadership roles.  
* Looking at the mentorship_eligibility.csv file, out of the 90,398 employees set to retire, only 1,549 appear to be eligible for the mentorship program.

## Summary

In conclusion, from our analysis we can see that at least 90,398 roles will need to be filled as the "silver tsunami" begins to make an impact. Of those 90,398 employees, only 1,549 are eligible to participate in the mentorship program. Therefore, the ratio of employees vs mentors is extremely high and may not be enough if the company plans to fulfill all 90,398 empty roles. 

We can also use our current data to determine what departments the retiring employees fall under. From our output (seen below), we can gather that the departments that hold the majority of retirees are the development and production departments. We can also use our data to determine the total sum of retiree salaries for each title. From just the senior-title holding retirees, the sum of salaries is over five billion dollars. The company can use this information to budget when replacing the retiree's roles. 

<img width="338" alt="Screen Shot 2022-06-03 at 3 30 04 PM" src="https://user-images.githubusercontent.com/101564349/171936829-153190f5-3447-4477-a01f-7c27a2fced96.png">

<img width="436" alt="Screen Shot 2022-06-03 at 3 47 36 PM" src="https://user-images.githubusercontent.com/101564349/171939499-934a42b8-e831-40b8-8eeb-3dfd640e9aed.png">



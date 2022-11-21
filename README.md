# Pewlett-Hackard Analysis
## Overview of the Analysis
### *Purpose of the Analysis*
The purpose of this analysis was to review a dataset for Pewlett-Hackard, a large company who wanted to determine the amount of employees that are elegible for retirement. Specifically, the company wanted to get the number of retiring employees per role, as well as identify the employees who are elegible to participate in their new mentorship program. 

## Results
### *What did we discover?*
For this analysis, we used PostgreSQL as a database management tool. After reviewing all the information, we were able to collect four key insights:

* There are more than 70,000 employees who qualify for retirement.
* Many of the elegible retirees held multiple roles in the company through the years.  
* The company title with the biggest amount of elegible retirees is "Senior Engineer" (25,916), followed by "Senior Staff" (24,926), "Engineer" (9,285), "Staff" (7,636), "Technique Leader" (3,603), "Assistant Engineer" (1,090) and "Manager" (2). 
* The total amount of potential retirees who could participate in the mentorship program is 1,549.

## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

### *How many roles will need to be filled as the "silver tsunami" begins to make an impact?*
A total of 72,458 roles might need to be filled as employees who qualify for retirement begin to leave the company. This, of course, provides a big challenge, as filling that many titles can definitely be complicated. 

### *Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?*
As of now, there don't seem to be enough potential retirees that could mentor the next generation of employees for the company. The amount of potential mentors is only 1,549, and the company might eventually need to fill more than 70,000 roles. 

### *How could we get additional insight?*
With this brief analysis, we already have some elements that could help the company create a retirement strategy for the elegible employees. However, addtional queries could give us more information in order to make a detailed plan. For this purpose, the following queries are proposed:

* A query that helps determine which potential retirees have been at the company for more years. This would be done using a date filter on the Unique Titles table, ordered by descending order. Getting this information would help determine the order by which employees could retire, according to the years they've worked at the company.
* A query to determine the types of roles that potential mentors had at the company. This would be done by using the COUNT function on the Mentorship Elegibility table, grouping the results by title. This would provide information on the company titles that have the most mentors and, thus, would help identify the roles which have fewer available mentors. 

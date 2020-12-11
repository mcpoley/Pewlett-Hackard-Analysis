# Pewlett-Hackard-Analysis
Overview of the analysis: Explain the purpose of this analysis.

Pewlett Hackard is a large company with a vast number (thousands) of employees. Many are retiring very soon, leaving several vacant positions. To plant ahead, there needs to be a mentorship between the retirees and their replacements. Luckily Pewlett Hackard is a company that largely hired inside, so most employees are accounted for in the database. The first challenge was to import all of the csv files into the SQL database. After finding the keys between tables, tables could be joined to provide more clarifying information. The relationship between employees, departments, salaries, titles, department employees, department managers is charted out in the following ERD: 

![] (images/github-EmployeeDB.png)

The first priority was to determine the number of retirees by job title. This was done by first joining employee table with the title table, and specifying the retirement age range. Next, this table needed a further filter to only get unique employees per title from most recent to oldest positions. Finally, the total number of retiring employees per title was determined via grouping by title. 

The second focus of this project was to single out all of the employee eligible for a mentorship program born within 1965. This was done by joining the employee, titles, and department employee tables and by filtering through a WHERE statement to ensure they met the age criteria and were current employees.  

1.	Results: Provide a bulleted list with four major points from the two analysis deliverables. Use images as support where needed.

•	About 90,000 of the 300,000 employees are retiring (30% cut in employment). There are around 1500 employees eligible for the mentorship program. 

•	The senior engineers yield the greatest number of retiring employees at 2,9414. The good news is that engineer yielded the second largest job title for those eligible for the program (407 out of 1549). 

•	The greatest amount (9,281) retiring from the company are in the production department (d. 5), which is the largest department. This would be about an 11% cut (9281 out of 85,707). 

•	The greatest number of eligible employees are in the development department (435).

2.	Summary: Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
o	How many roles will need to be filled as the "silver tsunami" begins to make an impact?
As stated earlier, around 90,000 positions are going to need to be filled. If the goal of the program is to coach advancing careers to fill the roles of their predecessors, there is a no potential for inhouse hire to make up this deficit (90,000-1500=88500). Either the age range for the mentorship program needs to be expanded to be more inclusive or their needs to be more outside hiring. 
o	Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
There are a lot of employees ready to mentor the next generation, particularly in the development and production sectors. This is fortunate because these departments have the highest amount of program-eligible employees. 


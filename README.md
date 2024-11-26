# Auction-Database-Project

## 1. Purpose of the Project
In this project, your task is to analyze the requirements for designing, implementing, documenting,
and testing a database system for an online auction site. Building a website involves a client-side
development team that typically includes a web designer, who makes decisions on the design aspect
of the site, and a front-end developer who implements the user interface using HTML, CSS, JSP,
JavaScript, and other technologies.

While the front-end development team focuses on the website’s visual design and user interface,
the back-end developers create core services that handle business logic, data modeling, databases,
file servers, cloud services, and other crucial components.

It’s important to note that front-end development does not necessarily require a deep under-
standing of computer science. Instead, it is often considered a creative field that combines elements

of art and design. In our database systems course, however, we will be primarily focused on back-
end development. Therefore, your role in this project will be as a back-end developer.

Unfortunately, your company has not yet hired any front-end developers, so your company
provided a text-based menu-driven interface without a graphical user interface. The following is
the output of the provided skeleton program.

<img width="617" alt="Screenshot 2024-11-26 at 1 43 22 PM" src="https://github.com/user-attachments/assets/45af106d-299a-4afe-9233-d9d68f610a77">

When a user selects one of the choices, its corresponding function is called. For example, if
a user selects ‘1’, the program calls LoginMenu() function, which asks for an ID and password.
After the ID and password are verified, the program outputs the following menus.

<img width="587" alt="Screenshot 2024-11-26 at 1 43 47 PM" src="https://github.com/user-attachments/assets/7cd19409-740c-4414-8101-19adc7088154">

If a user selects 3, the program calls its corresponding function and prints out the next level
menu.

<img width="588" alt="Screenshot 2024-11-26 at 1 44 15 PM" src="https://github.com/user-attachments/assets/7e24e7d9-c178-43eb-9b2d-6175c48135e8">
<img width="634" alt="Screenshot 2024-11-26 at 1 44 30 PM" src="https://github.com/user-attachments/assets/8e3e788d-c86c-4e29-9ce8-51a07c28e703">

When it comes to back-end web application development, Java is one of the most popular pro-
gramming languages available. Therefore, I recommend that you use Java and JDBC to implement this project. However, if you strongly prefer to use ODBC, you may do so. Please note that you
will need to write the program from scratch without the help of skeleton code.

Although there are various convenient database application development frameworks available,
such as View.js, Django, and Ruby-on-Rails, please refrain from using them for this project. This
is an introductory course, and it’s essential to have a solid understanding of the basics before diving
into more advanced tools and frameworks.


## 2. Requirement

2.1 Data and Queries

The auction system allows any user to list items to sell and also to browse and purchase items. To
support this basic functionality, your database should be able to manage the following data, at a
minimum (though you may need to manage additional data as well):

Please keep in mind that the following is just a rough sketch of the data model, and your
application will need to refine and revise it to meet its specific needs.

• User Data : user ID, password, etc.

• Item Data : item category (used for category search), item description (used for keyword search), con-
dition (new, like-new, good, acceptable), seller ID, buy-it-now price, date posted, status, etc.

• Bid Data : item ID, bid price, bidder, date posted, bid closing date, etc.

• Billing Data : sold item ID, purchase date, seller ID, buyer ID, amount due buyers need to pay, amount of money sellers need to get paid, etc.

Note: Your data model must be decomposed to satisfy one of the canonical forms (BCNF or 3NF):

Your auction company operates on the following business model: sellers are charged a com-
mission fee of 10% of the item price, with any commissions less than 1 KRW rounded down. For example, if the item price is 85 KRW, the seller pays 8 KRW instead of 8.5 KRW to the auction company.

When the bidding period ends (i.e., when the bid closing time passes), you need to determine the winning bid and charge the winning bidder the price of the sold item. Since PostgreSQL does not support a time-driven event scheduler, your program will NOT continuously check if the bid closing time has expired or not for each auction item. Instead it should check the bid closing time
in the following scenarios.

• First, when performing a select query to search for an item in ’Buy Item’ menu, the bid
closing date should be compared with the current time, and the items whose bids have ended
should not be displayed.

• Second, when a user bids on an item, your update query should check the current timestamp
against the bid closing date. If the bid closing date has already passed, your program should
print out an error message - "Bid Ended."

• Third, when the ’Check your Account’ or ’Check Status of your Bid’ menu is selected, the
corresponding functions must compare the bid closing date of the items currently being sold
with the current time and perform appropriate transaction processing for the items whose
bids have ended.

Please note that this project does not require you to implement a payment system. Instead,
the administrator will check each user’s account balance to determine how much money they owe
to the auction company and how much money the company owes to the user (i.e., the seller).

• Your program should allow buyers to browse auction items by category, condition, keyword,
seller, and date. The search results should be displayed in a well-formatted table that includes
the following information: when the auction ends, the current highest bidding price, the
current highest bidder, and the buy-it-now price.

• Sellers should have the ability to view a list of their auction items and their respective status.

• Buyers should also have the ability to view a list of the auction items that they have bidded on.

• For more details, please check the provided skeleton code.


## 3. Deliverables

You must submit a project report along with your source code. The report should consist of the
followings.

• Schema diagram using E-R model

• List of functionalities that you have implemented.

• List of functionalities that you have NOT implemented.

The source codes must consist of the followings.

• ddl.sql: DDL statements that create the database schema of your application

• data.sql: INSERT statements that populate your database tables with some sample input
records

• all other source codes that include DML (INSERT/UPDATE/DELETE/SELECT/etc) state-
ments

• Makefile: If you prefer other compilation package, such as maven, you may do so. But, please
do not expect TA to know how to compile your code. In the project report, please describe
how to compile your code. Also, describe how to run your program. Note that TA will
change the connection arguments such that he can run your program in his own database.







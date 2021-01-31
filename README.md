## ETL Project

**Team:** Meghan Luoma, Neal Tarver, John Forbis

**Extract:**
We scraped data from this page: https://en.wikipedia.org/wiki/List_of_Super_Bowl_starting_quarterbacks to determine the names of the starting quarterbacks from every super bowl. Then scraped this page: https://www.pro-football-reference.com/leaders/pass_rating_career.htm to pull data on quarterback passer rating, overall touchdowns, interception percent, yards per attempt, total passing yards and completion percent. We will use the combined data to predict how well the starting quarterback will play during the next super bowl. We used Splinter and Pandas to scrape the webpages. 


    Plan to grab the Super Bowl table regarding starting QB
![SB-QB-Table](readme_imgs/sb_qb_table.jpg)

https://www.pro-football-reference.com/leaders/pass_rating_career.htm
    Scrape the main table for QB passer rating
![Table](readme_imgs/data_table_to_scrape.jpg)


**Transform:**
We transformed the data we scraped using SQL, Pandas, Jupyter Notebook, Beautiful Soup and SQLAlchemy. 

**Load:**
We loaded the data using MongoDB and Postgres.

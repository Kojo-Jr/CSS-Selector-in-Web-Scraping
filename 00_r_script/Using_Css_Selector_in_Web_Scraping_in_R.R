# Web Scraping With CSS Selector

# Import Rvest Library
library(rvest)

webpage <- read_html("https://www.geeksforgeeks.org/data-structures-in-r-programming/")

# Using CSS Selectors to scrape the heading section
heading <- html_node(webpage, 'h1')

# Convert the heading data to text
text = html_text(heading)
print(text)

# Using CSS selectors to scrape all paragraphs
paragraph <- html_nodes(webpage, 'p')
ptext <- html_text(paragraph)
print(ptext)

# print the top 6 data 
print(head(ptext))

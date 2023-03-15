#Import the appropiate packages for the application
import requests
from bs4 import BeautifulSoup
import re

#This function scrapes the data from the website
def capture_info():
    disease = input()
    url = f"https://pubmed.ncbi.nlm.nih.gov/?term={disease}"
    #does a pubmed search and gets results
    pubmed_page = requests.get(url)
    soup = BeautifulSoup(pubmed_page.content, 'html.parser')
    #The split function splits a string by a character. This causes one side of the mentioned character to be at index 0 
    # #and the other side to be index 1 and so on 
    # #Isolates the search results
    numbers = str(soup.find(class_="value")).split(">")[1].split("<")[0]
    re.sub(",",numbers)
    return(numbers)

   # for i in range(1, numbers + 1):
       # print(f"Scraping page {i}")
        #url = f"https://pubmed.ncbi.nlm.nih.gov/?term={disease}&format=abstract&page={i}"
        #pubmed_page = requests.get(url)
        #soup = BeautifulSoup(pubmed_page.content, 'html.parser')
        #abstract = soup.find_all(class_="abstract") 
    #return(abstract)



#little welcome message and asks for input 
print("Hello and Welcome to the webscraping program")
print("Please enter a disease and I shall tell you how many results there are on Pubmed: ")
print(capture_info())







#next thing to do is to create a list of abstracts from the first page

#Data to collect:
#Abstract - class_="abstract-content selected"
#Authors - class="Authors"
#Title - heading title
#year published - article source (needs to be split)
#Journal - article source (needs to be split)
# get data from pages and the store in pandas dataframe
#export CSV
#Also try and get multiple pages
# README

## Models
- User
- Article
- Search 

## Create a user
- Create a new user from the new user link

## Functionality
- When an article is created, key words form the article are found and saved along with it
- During the search, it's made along the key words. 
- When a user submits a question to be searched, then the articles are searched using the available key words
- The search is recorded if it containes key words and the articles found for that search.
- The user's searches are displayed along with the number of times the search has been made and the number of results for the search
- The Articles are also displayed with the number of times the articles were searched for. 

## Search algorith
- User inputs a search
- Check if the search is contained in any article. 
- A complete search will be one that ends with a question mark
- Search for keywords: 
  - To find a keyword, ignore the words below from the searched string: 
  - How, is, when a, to, and common words used in sentences
- If a search is complete, then it's registered in the seach model 
- If a search is incomplete or has no question mark at the end, then it's not registered. 
- If an article with the keyword in the search is found, then the search count on the article is increased and also added to the results of the search in he search model 

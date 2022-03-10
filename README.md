# README
## Demo 
View the working Demo [here](https://warm-springs-93880.herokuapp.com)

## Starting the app
development: 
Run the command ./bin/dev 

Run the command rspec for tests

## Models
- User
- Article
- Search 

### User model 
Users will be created and registered in a user's model. Attributes of the user's model include: 
- Full name 
- Email
Once a user is registered, then they can access their search page. 
This will be a simple page with access by entering the user's email, not authentication required, as long as we have a registered user with that email, then the user is redirected to their search page. 

### Article model

Articles will have information about an article. 
Attributes for the articles include: 
- Title
- Body
- Key words. 
Users will search for articles based, once an article is create, then it's searched for key words ad they are kept as an array in the keywords column

### Searches model 

The search model will contain records of searched information

Because of the frequency of the searches being read and written from the database, there's is a need for the search model to have a searches and searches_replica database. 

The primary search database will be used to write the search data while the replica database will be used for reading search analytics and presenting real-time information to the user. 

Attributes for the search model include: 
- Question 
- Articles found, array containing the articles id



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

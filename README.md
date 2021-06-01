[![Rails Style Guide](https://img.shields.io/badge/code_style-rubocop-brightgreen.svg)](https://github.com/rubocop/rubocop-rails)

[![Rails Style Guide](https://img.shields.io/badge/code_style-community-brightgreen.svg)](https://rails.rubystyle.guide)

# Contentful Recipe

## Local Development (Mac OS / Ubuntu)

 - Ruby version 2.7.1

**System Level Dependencies:**

 - PostgreSQL 13.3

**Project Level Dependencies**

 - bundle install

**Setting up the Environment Variables**
Run this command in your project directory.
`cp config/application.sample.yml config/application.yml`

- Add the actual values of CONTENTFUL_SPACE_ID and CONTENTFUL_ACCESS_TOKEN in `application.yml`

**Setting up the Database**
 - rails db:create db:migrate db:seed

**Running the Rails Server**

 - rails s

**The problem statement:**
- Create a sample web application that uses the Contentful API to fetch data
- You can choose to write the application in Ruby and any of its frameworks
- There should be 2 views: 
    1) A list view of all the recipes
    2) A detail view of a recipe
- When clicking on a recipe on the list view, you should then show the detailed view
- The application should be as production-ready as possible, but no deployment is needed

**Solution:**
I have created a library to deal with the Contentful data models.
I have created a Recipe model to store content_type so in near future if we want to deal with multiple content_type we only need to add a record where rest of the logic remains the same.
Although the solution is also achievable without model as well.
To rescue almost all kind of exceptions I have created an exception_handler concern to better deal with the use cases where one of the required data is missing and our application is throwing exceptions or may be a bad request etc.
I have selected slim because it is compact and more readable and requires less effort to achieve similar results as compare to HTML.

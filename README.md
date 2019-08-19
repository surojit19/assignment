# README FOR ASSIGNMENT

Documentation done by: **Surojit Basu**

Dated: **19th Aug. 2019**

* __SYSTEM SPECS__ 

    * Ruby version: 2.5.x

    * Rails version: 5.2.x

    * Database sqllite3

    * gem used twitter-bootstrap-rails, devise, cancan


### Steps taken for this project from scratch:

* Commands Executed for the project __"assignment"__
  
  1. \> _rails new assignment_

  2. \> _cd assignment_

  3. To add Twitter Bootstrap to the application add 'gem "twitter-bootstrap-rails"' to Gemfile and save

  4. \> _bundle install_

  5. To generate various assets of bootstrap in the application execute:    
  \> _rails generate bootstrap:install static --no-coffeescript_

  6. To create User model with fields first, last:   
  \> _rails generate model User first:string last:string_

  7. Install and setup devise gem to use the User model for auth: 
      * add in your Gemfile -  _gem "devise"_ and save
      * \> _bundle install_
      * \> _rails generate devise:install_
      * \> _rails generate devise user_
      * \> _rails db:migrate_
      * \> _rails generate devise:views_            

  
  8. customized registeration/new view
  9. added secret code to the view
  10. restricting user registeration without secret code
  11. customized routes.rb for index file and added custom links to layout
  12. __CanCan__
      * add in your Gemfile - _gem "cancan"_ and save
      * \> _bundle install_
      * \> _rails generate cancan:ability_
      * Customize cancan to add role admin to it and secure secret_code
  
  
# Finally some screenshots :)

Home screen just for fun!
![Home Screen](/readmeimgs/home.jpg?raw=true "Home Screen")

Login screen with some styling done:
![Login Screen](/readmeimgs/login.jpg?raw=true "Login Screen")

Registration page with server side validation for email, password and secret code:
![Register Screen](/readmeimgs/register.jpg?raw=true "Register Screen")

Once you login with admin creds.. you will be able to access:
![Secret code](/readmeimgs/secret_code.jpg?raw=true "Secret Code Screen")

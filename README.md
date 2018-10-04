![Whodat logo](whodat-logo-wide.png)

![Travis (.org)](https://travis-ci.org/bperlik/whodat.svg?branch=master)  ![Code Climate](https://img.shields.io/codeclimate/maintainability/bperlik/whodat.svg?branch=master)  ![Gem](https://img.shields.io/gem/v/:package.svg)

Whodat is a simple, easy to use, authentication gem for Rails. 

Whodat is 
* An MVC solution built on a Rails engine
* Uses BCrypt for password encryption
* Allows a quick easy user authentication, users and sessions

## Intended Use Case
Whodat is intended to be used for easy and quick access to user and sessions when developing a rails application. When you don't want a lengthy set up, use Whodat. Add the one line responsive dashboard to whatever view you want. The dashboard has a main app button to return the user to the main app index page.

![nav bar menu](/app/assets/images/whodat/navbar-pic-readme.png "Whodat Login Dashboard")

## Install
1. Add this gem to your application's Gemfile:
`gem 'whodat'`

2. Install the gem at the command line
`$ bundle install`

 or just add the gem as a dependency
`$ gem install whodat`

3. To add the user dashboard to any view in your app
   Add this snippet to add the partial to your header
`<%= render partial: "whodat/dashboard/navbar", action: "index" %>`

4. Available helpers 
   * whodat.current_user
   * whodat.session[whodat.user. name]  
   * whodat.user_signed_in?

## Example Application
Fork, clone and run the server on the Blogger app to test the Whodat navbar. 
[Blogger](https://github.com/bperlik/blogger)

![Example app](/app/assets/images/whodat/example-app-screencap.png "Example Application")

**** remove this part after making it a gem *******************************
1. Add inside app config/routes.rb file
```
mount EngineName: : Engine => “/enginename”
```

2. Be sure to rake the engine migration over to the app and then
rake the the app migration
```
rake engineName:install:migrate
rake db:migrate
```

***** remove above part after making a gem *********************************

## How to Help

### Code of Conduct
[Code of Conduct](/CODE-OF-CONDUCT.md)

### Did you find a bug?
*	Do not open up a GitHub issue if the bug is a dependency security vulnerability.
*	Ensure the bug was not already reported by searching on GitHub under Issues.
*	If you're unable to find an open issue addressing the problem, open a new one. Be sure to include a title and clear description, as much relevant information as possible, what was expected, and a code sample or an executable test case demonstrating the expected behavior that is not occurring.

### Want to contribute?
[Read How to Contribute](/HOW-TO-CONTRIBUTE.md)

### Do you have questions about the source code?
Thank you for your interest! Ask any question about how to use whodat. [Contact the Administrator](me@barbaraperlik.com)

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

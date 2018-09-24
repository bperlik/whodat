# Whodat

![Whodat logo](/assets/images/whodat)

![Travis (.org)](https://travis-ci.org/bperlik/whodat.svg?branch=master)

Whodat is a simple, easy to use, authentication gem for Rails. 

Whodat is 

* An MVC solution built on a Rails engine
* Uses BCrypt for password encryption
* Allows a quick easy signup, login and logout

## Intended Use Case
**** TO DO see a lengthy explanation of what the intended use case is 

**** TO DO a detailed outline of the “api” i.e. What methods did you expose for use, and code examples of how to use them.

## Example Application
![nav bar menu](/assets/images/whodat-navbar1.png "Whodat Nav Bar")

User login requirements:
* name
* email
* password 8 to 20 characters in length

Whodat navbar features:
* user signup
* user login
* user logout
* session[:user_id]

Available helpers:
* @user.name
* current_user
* user_signed_in?

## Install

1. Add this line to your application's Gemfile:
```
group :development do
   gem 'whodat'
end
```

2. Install the gem at the command line
` $ bundle install`

or just add the gem as a dependency
` $ gem install whodat`

**** remove this part after making it a gem
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

***** remove above part after making a gem

## How to Help

### Code of Conduct
[Code of Conduct](/CODE-OF-CONDUCT.md)


### Did you find a bug?
*	Do not open up a GitHub issue if the bug is a dependency security vulnerability.
*	Ensure the bug was not already reported by searching on GitHub under Issues.
*	If you're unable to find an open issue addressing the problem, open a new one. Be sure to include a title and clear description, as much relevant information as possible, what was expected, and a code sample or an executable test case demonstrating the expected behavior that is not occurring.

### Want to contribute?
[Contributing](/HOW-TO-CONTRIBUTE.md)

### Do you have questions about the source code?
*	Ask any question about how to use whodat by emailing the administrator below.

## Thank you for your interest!
[Administrator](me@barbaraperlik.com)

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

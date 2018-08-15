# Whodat

[![GitHub issues](https://img.shields.io/github/issues/badges/shields.svg)(https://github.com/bperlik/whodat)]

Instead of using a complex authentication for development or
 a simple Rails project, I built a simple authentication gem for Rails using BCrypt.

## Usage

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

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'whodat'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install whodat
```

## How to contribute to Whodat
### Did you find a bug?
*	Do not open up a GitHub issue if the bug is a dependency security vulnerability.
*	Ensure the bug was not already reported by searching on GitHub under Issues.
*	If you're unable to find an open issue addressing the problem, open a new one. Be sure to include a title and clear description, as much relevant information as possible, what was expected, and a code sample or an executable test case demonstrating the expected behavior that is not occurring.
### Did you write a patch that fixes a bug?
*	Open a new GitHub pull request with the patch.
*	Ensure the PR description clearly describes the problem and solution. Include the relevant issue number if applicable.
### Did you fix whitespace, format code, or make a purely cosmetic patch?
Changes that are cosmetic in nature and do not add anything substantial to the stability, functionality, or testability will generally not be accepted.
### Do you intend to add a new feature or change an existing one?
*	Suggest your change by email to the administrator and start writing code.
*	Do not open an issue on GitHub until you have collected positive feedback about the change. GitHub issues are primarily intended for bug reports and fixes.
### Do you have questions about the source code?
*	Ask any question about how to use whodat by emailing the administrator.

### Thank you for your interest!
Barb Perlik
barbperlik@gmail.com

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

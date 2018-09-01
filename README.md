# Whodat

![Travis (.org)](https://travis-ci.org/bperlik/whodat.svg?branch=master)

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

## Code of Conduct

### Our Pledge
In the interest of fostering an open and welcoming environment, we as contributors and maintainers pledge to making participation in our project and our community a harassment-free experience for everyone, regardless of age, body size, disability, ethnicity, sex characteristics, gender identity and expression, level of experience, education, socio-economic status, nationality, personal appearance, race, religion, or sexual identity and orientation.

### Our Standards
Examples of behavior that contributes to creating a positive environment
include:

* Using welcoming and inclusive language
* Being respectful of differing viewpoints and experiences
* Gracefully accepting constructive criticism
* Focusing on what is best for the community
* Showing empathy towards other community members

Examples of unacceptable behavior by participants include:

* The use of sexualized language or imagery and unwelcome sexual attention or
  advances
* Trolling, insulting/derogatory comments, and personal or political attacks
* Public or private harassment
* Publishing others' private information, such as a physical or electronic
  address, without explicit permission
* Other conduct which could reasonably be considered inappropriate in a
  professional setting

### Our Responsibilities
Project maintainers are responsible for clarifying the standards of acceptable
behavior and are expected to take appropriate and fair corrective action in
response to any instances of unacceptable behavior.

Project maintainers have the right and responsibility to remove, edit, or
reject comments, commits, code, wiki edits, issues, and other contributions
that are not aligned to this Code of Conduct, or to ban temporarily or
permanently any contributor for other behaviors that they deem inappropriate,
threatening, offensive, or harmful.

### Scope
This Code of Conduct applies both within project spaces and in public spaces
when an individual is representing the project or its community. Examples of
representing a project or community include using an official project e-mail
address, posting via an official social media account, or acting as an appointed
representative at an online or offline event. Representation of a project may be
further defined and clarified by project maintainers.

### Enforcement
Instances of abusive, harassing, or otherwise unacceptable behavior may be
reported by contacting the project team at [INSERT EMAIL ADDRESS]. All
complaints will be reviewed and investigated and will result in a response that
is deemed necessary and appropriate to the circumstances. The project team is
obligated to maintain confidentiality with regard to the reporter of an incident.
Further details of specific enforcement policies may be posted separately.

Project maintainers who do not follow or enforce the Code of Conduct in good
faith may face temporary or permanent repercussions as determined by other
members of the project's leadership.

### Attribution
This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,
available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html

[homepage]: https://www.contributor-covenant.org

## How To Help

### Did you find a bug?
*	Do not open up a GitHub issue if the bug is a dependency security vulnerability.
*	Ensure the bug was not already reported by searching on GitHub under Issues.
*	If you're unable to find an open issue addressing the problem, open a new one. Be sure to include a title and clear description, as much relevant information as possible, what was expected, and a code sample or an executable test case demonstrating the expected behavior that is not occurring.

### How to contribute
*	Step 1: Find an issue you'd like to work on that hasn't already been claimed (It has been claimed if you see someone else's picture on it and it is assigned to someone else, or if you see someone's comment on the issue page saying they are claiming it). Comment on the issue that you have claimed it and will be working on it. An admin will add you as the assignee.

* Step 2: Fork the repo Click the "fork" button in the upper right of the Github repo page. A fork is a copy of the repository that allows you to freely explore & experiment without changing the original project. You can learn more about forking a repo in this article.

* Step 3: Create a branch Checkout a new branch for your issue - this branch can be named anything, but we encourage the format XXX-brief-description-of-feature where XXX is the issue number.

* Step 4: Follow the instructions in the README to set up your local environment. Feel free to discuss any questions on the issues as needed, and we will get back to you! 

* Step 5: Don't forget to write some tests to verify your code. Commit your changes locally, using descriptive messages and please be sure to note the parts of the app that are affected by this commit.

* Step 6: Pushing your branch and creating a pull request Make sure the tests pass! Run the current test suite with docker-compose exec rails bundle exec rake test If any tests break, be sure to fix them. Make a final commit if you've made more changes to fix the tests. Then, push your branch up and create a pull request. Please indicate which issue your PR addresses in the title.

### Did you fix whitespace, format code, or make a purely cosmetic patch?
Changes that are cosmetic in nature and do not add anything substantial to the stability, functionality, or testability will generally not be accepted.

### Do you intend to add a new feature or change an existing one?
*	Suggest your change by email to the administrator and start writing code.
*	Do not open an issue on GitHub until you have collected positive feedback about the change. GitHub issues are primarily intended for bug reports and fixes.

### Do you have questions about the source code?
*	Ask any question about how to use whodat by emailing the administrator below.

## Thank you for your interest!
[Administrator](me@barbaraperlik.com)

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
